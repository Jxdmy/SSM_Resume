package online.qsx.controller;

import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.UUID;

//http://localhost:80/SSM_Resume/upload/
@Controller
@RequestMapping("upload")
public class UploadController {
	// http://localhost:80/SSM_Resume/upload/do_upload
	@PostMapping("do_upload")
	@ResponseBody
	public String do_upload(MultipartFile file, HttpServletRequest request) throws Exception {
		// �ļ���·��
		String url = request.getSession().getServletContext().getRealPath("/upload");
		if (!new File(url).exists()) {
			new File(url).mkdir();
		}
		System.out.println(url);

		// �ļ���
		String fileName = UUID.randomUUID().toString().replaceAll("-", "") + file.getOriginalFilename()
				.substring(file.getOriginalFilename().lastIndexOf("."), file.getOriginalFilename().length());
		System.out.println(fileName);
		FileUtils.copyInputStreamToFile(file.getInputStream(), new File(url + File.separator + fileName));
		return "{'url':'" + fileName + "'}";
	}
	//http://localhost:80/SSM_Resume/upload/download
	@RequestMapping(value = "/download")
	public ResponseEntity<byte[]> download(HttpServletRequest request, @RequestParam("filename") String filename,
			Model model) throws Exception {
		// �����ļ�·��
		String path = request.getServletContext().getRealPath("/upload/");
		File file = new File(path + File.separator + filename);
		HttpHeaders headers = new HttpHeaders();
		// ������ʾ���ļ������������������������
		String downloadFielName = new String(filename.getBytes("UTF-8"), "iso-8859-1");
		// ֪ͨ�������attachment�����ط�ʽ����ͼƬ
		headers.setContentDispositionFormData("attachment", downloadFielName);
		// application/octet-stream �� �����������ݣ�������ļ����أ���
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), headers, HttpStatus.CREATED);
	}

}
