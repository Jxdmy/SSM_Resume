package online.qsx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import online.qsx.mapper.AboutMeMapper;
import online.qsx.mapper.EducationDegreeMapper;
import online.qsx.mapper.WorkingStatusMapper;
import online.qsx.model.AboutMe;
import online.qsx.model.EducationDegree;
import online.qsx.model.WorkingStatus;

@Service
public class MapperServiceImpl {
	@Autowired
	private AboutMeMapper aboutMeMapper;
	@Autowired
	private EducationDegreeMapper educationDegreeMapper;
	@Autowired
	private WorkingStatusMapper workingStatusMapper;
	private List<EducationDegree> list_ed;
	
	private List<WorkingStatus> list_ws;
	/*
	 * �������Բ�ѯ
	 * */
	public AboutMe findAmByLanguage(String language){
		AboutMe aboutMe = null;
		if("����".equals(language)){
			aboutMe = aboutMeMapper.selectByPrimaryKey(1);
		}
		if("English".equals(language)){
			aboutMe = aboutMeMapper.selectByPrimaryKey(2);
		}	
		return aboutMe;		
	}
	/*
	 * �޸�Aboutme
	 * */
	public void updateAboutMe(AboutMe aboutMe){
		aboutMeMapper.updateByPrimaryKey(aboutMe);
	}
	
	public List<EducationDegree> findEdByLanguage(String language){
		if("����".equals(language)){
			list_ed = educationDegreeMapper.selectByLanguage(1);
		}
		if("English".equals(language)){
			list_ed = educationDegreeMapper.selectByLanguage(2);
		}	
		return list_ed;		
	}
	
	public List<WorkingStatus> findByWsLanguage(String language){
		if("����".equals(language)){
			list_ws = workingStatusMapper.selectByLanguage(1);
		}
		if("English".equals(language)){
			list_ws = workingStatusMapper.selectByLanguage(2);
		}	
		return list_ws;		
	}
}
