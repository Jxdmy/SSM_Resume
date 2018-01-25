package online.qsx.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import online.qsx.mapper.AboutMeMapper;
import online.qsx.model.AboutMe;
import online.qsx.model.EducationDegree;
import online.qsx.model.WorkingStatus;
import online.qsx.service.MapperServiceImpl;

//http://localhost:8080/SSM_Resume/aboutMe/index
@Controller
@RequestMapping("aboutMe")
public class AboutMeController {
	@Autowired
	private MapperServiceImpl mapperServiceImpl;
	private AboutMe aboutMe;
	private List<EducationDegree> ed_list;
	private EducationDegree educationDegree1;
	private EducationDegree educationDegree2;
	private List<WorkingStatus> ws_list;
	private WorkingStatus workingStatus1;
	private WorkingStatus workingStatus2;


	public AboutMe getAboutMe() {
		return aboutMe;
	}

	public void setAboutMe(AboutMe aboutMe) {
		this.aboutMe = aboutMe;
	}

	@RequestMapping(value="index",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView index(Locale locale,ModelAndView modelAndView,@RequestParam(defaultValue = "ÖÐÎÄ")String language){
		System.out.println("Local is :"+locale);
		aboutMe = mapperServiceImpl.findAmByLanguage(language);
		ed_list = mapperServiceImpl.findEdByLanguage(language);
		ws_list = mapperServiceImpl.findByWsLanguage(language);
		for (EducationDegree educationDegree : ed_list) {
			if(educationDegree.gettAboutMeId()==1){
				if(educationDegree.getId()==1){
					this.educationDegree1=educationDegree;
				}
				if(educationDegree.getId()==2){
					this.educationDegree2=educationDegree;
				}
			}
			if(educationDegree.gettAboutMeId()==2){
				if(educationDegree.getId()==3){
					this.educationDegree1=educationDegree;
				}
				if(educationDegree.getId()==4){
					this.educationDegree2=educationDegree;
				}
			}
		}
		
		for (WorkingStatus workingStatus : ws_list) {
			if(workingStatus.gettAboutMeId()==1){
				if(workingStatus.getId()==1){
					this.workingStatus1=workingStatus;
				}
				if(workingStatus.getId()==2){
					this.workingStatus2=workingStatus;
				}
			}
			if(workingStatus.gettAboutMeId()==2){
				if(workingStatus.getId()==3){
					this.workingStatus1=workingStatus;
				}
				if(workingStatus.getId()==4){
					this.workingStatus2=workingStatus;
				}
			}
		}
		modelAndView.addObject("aboutMe", aboutMe);
		modelAndView.addObject("educationDegree1", educationDegree1);
		modelAndView.addObject("educationDegree2", educationDegree2);
		modelAndView.addObject("workingStatus1", workingStatus1);
		modelAndView.addObject("workingStatus2", workingStatus2);
		modelAndView.setViewName("index");
		return modelAndView;		
	}
	//http://localhost:8080/SSM_Resume/aboutMe/update
	@RequestMapping(value="update",method={RequestMethod.POST})
	public ModelAndView update(ModelAndView modelAndView, AboutMe aboutMe){
		mapperServiceImpl.updateAboutMe(aboutMe);
		modelAndView.setViewName("forward:index.do");
		return modelAndView;
	}
	//http://localhost:8080/SSM_Resume/aboutMe/sendEmail
	@RequestMapping(value="sendEmail",method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView sendEmail(ModelAndView modelAndView,String subject,String sendTo,StringBuilder htmlContent) throws Exception{
		System.out.println(subject);
		String sendFrom = "1090980633@qq.com";
		EmailSender.sendHtmlMessage(sendFrom, sendTo, subject, htmlContent.toString());
		modelAndView.setViewName("forward:index.do");
		return modelAndView;
	}
}
