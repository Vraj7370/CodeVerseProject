package com.Grownited.service;

import java.nio.charset.StandardCharsets;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.Grownited.entity.UserEntity;

import jakarta.mail.internet.MimeMessage;

@Service
public class MailerService {

	@Autowired
	JavaMailSender javaMailSender;

	@Autowired
	private ResourceLoader resourceLoader;

	public void sendWelcomeMail(UserEntity user) {

		MimeMessage message = javaMailSender.createMimeMessage();

		Resource resource = resourceLoader.getResource("classpath:templates/WelcomeMailTempate.html");

		try {
			String html = new String(resource.getInputStream().readAllBytes(), StandardCharsets.UTF_8);

			MimeMessageHelper helper;

			String body = html.replace("${name}", user.getFirstName()).replace("${email}", user.getEmail())
					.replace("${loginUrl}", "http://localhost:9999/login").replace("${companyName}", "CodeVerse");

			helper = new MimeMessageHelper(message, true);
			helper.setTo(user.getEmail());
			helper.setSubject("CodeVerse - Welcome aboard !!! ");
			helper.setText(body, true);

			javaMailSender.send(message);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public String sendForgotPasswordOtp(String email) {

		String otp = String.format("%06d", new Random().nextInt(999999));

		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom("patelvraj7372@gmail.com");
		message.setTo(email);
		message.setSubject("Your Password Reset OTP");
		message.setText("Dear user,\\n\\nYour OTP for password reset is: " + otp
				+ "\n\nThis OTP is valid for 10 minutes.\n\nIf you did not request this, please ignore.\n\nThank you!");

		// send mail
		javaMailSender.send(message);
		System.out.println("✅ OTP " + otp + "sent successfully to" + email);

		// Return OTP (so controller can validate it later)
		return otp;
	}

}