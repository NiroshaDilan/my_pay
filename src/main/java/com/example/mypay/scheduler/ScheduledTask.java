package com.example.mypay.scheduler;

import com.example.mypay.model.Payment;
import com.example.mypay.model.Role;
import com.example.mypay.model.User;
import com.example.mypay.repository.PaymentRepository;
import com.example.mypay.repository.RoleRepository;
import com.example.mypay.repository.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;

/**
 * @Project my-pay
 * @Author DILAN on 3/31/2018
 */
@Component
public class ScheduledTask {

    private static final Logger log = LoggerFactory.getLogger(ScheduledTask.class);


    private PaymentRepository paymentRepository;
    private RoleRepository roleRepository;
    private UserRepository userRepository;

    private String lastRecord = "";
    private String currentRecord = "";

    // set this to fales to disable this job; set it it true by
    private boolean scheduledJobEnable = true;

    private String paymentLogDir = "temp/payment";
    private String userLogDir = "temp/user";
    private String roleLogDir = "temp/role";

    private static final SimpleDateFormat dateFormat = new SimpleDateFormat(
            "YYYY_MM_dd_HH");
    private static final SimpleDateFormat fullDateFormat = new SimpleDateFormat(
            "YYYY_MM_dd HH:mm:ss");

    public ScheduledTask(PaymentRepository paymentRepository,
                         RoleRepository roleRepository, UserRepository userRepository) {
        this.paymentRepository = paymentRepository;
        this.roleRepository = roleRepository;
        this.userRepository = userRepository;
    }

    @Scheduled(cron = "0 46 23 * * *")
    public void createLogger() {
        loggerManipulator(paymentLogDir, paymentRepository);
        loggerManipulator(roleLogDir, roleRepository);
        loggerManipulator(userLogDir, userRepository);
    }

    private void loggerManipulator(String logDir, JpaRepository repository) {

        log.info("repository.getClass().isInstance(Role.class) -> {}", repository);
        if (getLatestFileFromDir(logDir) == null) {
            if(logDir.equals("temp/payment")) {
                writeToPaymentFile(repository.findAll(), logDir);
            }
            if(logDir.equals("temp/role")) {
                writeToRoleFile(repository.findAll(), logDir);
            }
            if(logDir.equals("temp/user")) {
                writeToUserFile(repository.findAll(), logDir);
            }
        } else {
            if (getLastRecord(logDir) != null) {
                if(logDir.equals("temp/payment")) {
                    writeToPaymentFile(
                            paymentRepository
                                    .findAllAffterSpecificId(Integer.parseInt(extractId(getLastRecord(logDir)))), logDir);
                }
                if(logDir.equals("temp/role")) {
                    writeToRoleFile(
                            roleRepository.findAllAffterSpecificId(Integer.parseInt((extractId(getLastRecord(logDir))))),
                    logDir);
                }
                if(logDir.equals("temp/user")) {
                    writeToUserFile(
                            userRepository.findAllAffterSpecificId(Integer.parseInt((extractId(getLastRecord(logDir))))),
                            logDir);
                }
            }
        }
    }

    private void writeToPaymentFile(List<Payment> paymentList, String logDir) {
        String outFileName = createDataFile(logDir);
            if (paymentList.size() > 0) {
                try (PrintStream ps = new PrintStream(outFileName)){
                    for(Payment payment : paymentList) {
                        ps.append(
                                "|" + payment.getId()
                                        + "|" + payment.getDownPayment() + "|"
                                        + payment.getPaidDate() + "|"
                        );
                        ps.println();
                    }
                } catch (IOException e) {
                    log.error("Couldn't write comment file -> {}", e);
                }
            }
    }

    private void writeToRoleFile(List<Role> roleList, String logDir) {
        String outFileName = createDataFile(logDir);
        if (roleList.size() > 0) {
            try (PrintStream ps = new PrintStream(outFileName)){
                for(Role role : roleList) {
                    ps.append(
                            "|" + role.getId()
                                    + "|" + role.getRoleName() + "|"
                    );
                    ps.println();
                }
            } catch (IOException e) {
                log.error("Couldn't write comment file -> {}", e);
            }
        }
    }

    private void writeToUserFile(List<User> userList, String logDir) {
        String outFileName = createDataFile(logDir);
        if (userList.size() > 0) {
            try (PrintStream ps = new PrintStream(outFileName)){
                for(User user : userList) {
                    ps.append(
                            "|" + user.getId()
                                    + "|" + user.getEmail() + "|" + "|" + user.getAvatarName() + "|"
                                    + "|" + user.getFirstName() + "|" + "|" + user.getLastName() + "|"
                                    + "|" + user.getNic() + "|" + "|" + user.getSex() + "|"
                    );
                    ps.println();
                }
            } catch (IOException e) {
                log.error("Couldn't write comment file -> {}", e);
            }
        }
    }

    private String createDataFile(String logDir) {
        String name = "";
        File dir = new File(logDir);
        if (!dir.exists()) {
            try {
                dir.mkdirs();
            } catch (SecurityException se) {
                log.error("Security Exception -> {}", se);
                throw se;
            }
        }

        if (logDir.contains("payment")) {
            name = "payment_" + dateFormat.format(new Date()) + ".log";
        }
        if (logDir.contains("role")) {
            name = "role_" + dateFormat.format(new Date()) + ".log";
        }
        if (logDir.contains("user")) {
            name = "user_" + dateFormat.format(new Date()) + ".log";
        }
        return dir.getAbsolutePath() + File.separator + name;
    }

    private String getLastRecord(String logDir) {
        try {
            FileInputStream in = new FileInputStream(getLatestFileFromDir(logDir));

            BufferedReader br = new BufferedReader(new InputStreamReader(in));
            while((currentRecord = br.readLine()) != null) {
                lastRecord = currentRecord;
            }

            log.info("lastRecord -> {}", lastRecord);
            return lastRecord;
        } catch (IOException e) {
            log.error("Exception Occur => {}", e);
        }
        return null;
    }

    private String extractId(String lastRecord) {
        if (!lastRecord.isEmpty()) {
            String[] splittedRecord = lastRecord.split(Pattern.quote("|"), 0);
            log.info("extracted id -> {}", splittedRecord[1]);
            return splittedRecord[1];
        } else {
            return null;
        }
    }

    private File getLatestFileFromDir(String path) {
        File dir = new File(path);
        File[] files = dir.listFiles();
        if(files == null || files.length == 0) {
            return null;
        }

        File lastModifiedFile = files[0];
        for(int i = 1; i < files.length; i++) {
            if(lastModifiedFile.lastModified() < files[i].lastModified()) {
                lastModifiedFile = files[i];
            }
        }
        log.info("LastModifiedFile -> {}", lastModifiedFile);
        return lastModifiedFile;
    }
}


























