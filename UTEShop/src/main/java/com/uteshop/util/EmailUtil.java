package com.uteshop.util;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.junit.jupiter.api.Assertions;

import java.util.Properties;
import java.util.Random;

public class EmailUtil {
    public static void sendEmail(String toEmail, String subject, String message) throws AddressException, MessagingException {
        String to = toEmail;
        String from = "uteshop77@gmail.com";
        String host = "smtp.gmail.com";

        Properties properties = System.getProperties();

        // Setup mail server
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.auth", "true");

        Session session = Session.getInstance(properties, new Authenticator() {

            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, "wcwnypnjgaptycpx");
            }
        });

        // Used to debug SMTP issues
        session.setDebug(true);

        MimeMessage msg = new MimeMessage(session);

        msg.setFrom(new InternetAddress(from));

        msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));

        msg.setSubject(subject);

        msg.setText(message);

        try {
            Transport.send(msg);
        }catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static String getRandomCode() {
        Random rnd = new Random();
        int number = rnd.nextInt(999999);
        return String.format("%06d", number);
    }
}
