package online.qsx.test;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import online.qsx.controller.EmailSender;

/**
 * �ʼ����Ͳ�����
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
    String subject = "Spring�Դ�JavaMailSender���͵�HTML�ʼ�";
    StringBuilder htmlContent = new StringBuilder()
        .append("<html>")
        .append("<head>")
        .append("<title>")
        .append("Spring�Դ�JavaMailSender���͵�HTML�ʼ�")
        .append("</title>")
        .append("</head>")
        .append("<body>")
        .append("����!İ����<p/>")
        .append("</body>")
        .append("</html>");
     
    EmailSender.sendHtmlMessage(sendFrom, sendTo, subject, htmlContent.toString());
    System.out.println("�ʼ����ͳɹ�.");
  }
}