package online.qsx.controller;

import javax.annotation.PostConstruct;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

/**
 * ����Spring��JavaMailSender���ʼ����͹�����
 * @author simon
 *
 */
@Component
public class EmailSender {
   
  @Autowired
  private JavaMailSender javaMailSender;
   
  private static EmailSender emailSender;
   
  @PostConstruct
  public void init() {
    emailSender = this;
    emailSender.javaMailSender= this.javaMailSender;
  }
   
  /**
   * ���ͼ򵥵��ı��ʼ�
   * @param sendTo    �ռ�����
   * @param subject    ����
   * @param content    �ı�����
   */
  public static void sendSimpleMessage(String sendFrom, String[] sendTo, String subject, String textcontent) {
    SimpleMailMessage mail = new SimpleMailMessage();
    mail.setFrom(sendFrom);
    mail.setTo(sendTo);
    mail.setSubject(subject);
    mail.setText(textcontent);
    //����
    emailSender.javaMailSender.send(mail);
  }
   
  /**
   * ����HTML���ݸ�ʽ���ʼ�
   * @param sendFrom
   * @param sendTo      �ռ�����
   * @param subject      ����
   * @param htmlContent    HTML����
   * @throws Exception
   */
  public static void sendHtmlMessage(String sendFrom, String sendTo, String subject, String htmlContent) throws Exception {
    MimeMessage mimeMessage = emailSender.javaMailSender.createMimeMessage(); 
     
    MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage);
    mimeMessageHelper.setFrom(sendFrom);
    mimeMessageHelper.setTo(sendTo);
    mimeMessageHelper.setSubject(subject);
    // true ��ʾ����HTML��ʽ���ʼ� 
    mimeMessageHelper.setText(htmlContent, true); 
 
    // �����ʼ�
    emailSender.javaMailSender.send(mimeMessage);
  }
   
}
