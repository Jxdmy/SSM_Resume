package online.qsx.test;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import online.qsx.controller.EmailSender;

/**
 * 邮件发送测试类
 * 
 * @author simon
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(value = {"classpath:springmvc-servlet.xml"})
public class TestMail {
  @Test
  public void testSend() throws Exception {
    String sendFrom = "1090980633@qq.com";
    String sendTo = "1090980633@qq.com";
    String subject = "Spring自带JavaMailSender发送的HTML邮件";
    StringBuilder htmlContent = new StringBuilder()
        .append("<html>")
        .append("<head>")
        .append("<title>")
        .append("Spring自带JavaMailSender发送的HTML邮件")
        .append("</title>")
        .append("</head>")
        .append("<body>")
        .append("您好!陌生人<p/>")
        .append("</body>")
        .append("</html>");
     
    EmailSender.sendHtmlMessage(sendFrom, sendTo, subject, htmlContent.toString());
    System.out.println("邮件发送成功.");
  }
}