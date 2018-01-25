<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>我的简历</title>
<!-- for-mobile-apps -->
<!--width 属性控制设备的宽度。假设您的网站将被带有不同屏幕分辨率的设备浏览，那么将它设置为 device-width 可以确保它能正确呈现在不同设备上。initial-scale=1.0 确保网页加载时，以 1:1 的比例呈现，不会有任何的缩放 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 设置编码格式为utf-8 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 引用jQuery原生的js文件 -->
<script type="text/javascript" src="${ctx }/plugins/jquery-1.9.1.min.js"></script>
<!-- 引用bootstrap原生的css文件 -->
<link href="${ctx }/plugins/bootstrap/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- 引用bootstrap原生的js文件 -->
<script type="text/javascript"
	src="${ctx }/plugins/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctx }/plugins/circles/circles.js"></script>
<!-- 引用自定义的css文件 -->
<link href="${ctx }/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
</head>

<body>
	<!-- banner -->
	<div class="banner" id="home">
		<div class="container">
			<!-- container class 用于包裹页面上的内容 -->
			<div class="top-header row">
				<!-- 实现弹出隐藏导航栏的效果js -->
				<!--top-nav-->
				<div class="logo">
					<spring:message code="logo" />
				</div>
				<div class="top-nav">
					<div class="nav-icon">
						<a href="#" class="right-bt" id="activator"> <span> <a
								href="?language=中文&&lang=zh_CN">中文</a><br /> <a
								href="?language=English&&lang=en_US">English</a>
						</span>
						</a>
					</div>
					<div class="box" id="box">
						<div class="box-content">
							<div class="box-content-center">
								<div class="form-content">
									<div class="menu-box-list">
										<ul>
											<li><a class="scroll" href="#home"><span><spring:message
															code="home" /></span></a></li>
											<li><a class="scroll" href="#about"><span><spring:message
															code="aboutMe" /></span></a></li>
											<li><a class="scroll" href="#skills"><span><spring:message
															code="professional" /></span></a></li>
											<li><a class="scroll" href="#education"><span><spring:message
															code="educationExperience" /></span></a></li>
											<li><a class="scroll" href="#experience"><span><spring:message
															code="workExperience" /></span></a></li>
											<li><a class="scroll" href="#honor"><span><spring:message
															code="honor" /></span></a></li>
											<li><a class="scroll" href="#hobby"><span><spring:message
															code="hobby" /></span></a></li>
											<div class="clearfix"></div>
										</ul>
									</div>
									<a class="boxclose" id="boxclose"> <span></span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!---start-click-drop-down-menu-->
				<div class="clearfix"></div>
			</div>
			<div class="banner-info row">
				<div class="banner-left col-md-3 col-md-offset-2">
					<!-- 为了在大屏幕显示器上使用偏移，使用 .col-md-offset-* 类。这些类会把一个列的左外边距（margin）增加 * 列，其中 * 范围是从 1 到 11。 -->
					<img id="imgHead" src="${ctx }/images/my-avatar.png" alt="" height="200px" width="200px" />
					<p>
						<span id="uploadImg" style="font-size:12px; overflow:hidden; position:absolute">
						<input type="file" name="file" id="file" style=" position:absolute; z-index:100; margin-left:-180px; font-size:60px;opacity:0;filter:alpha(opacity=0); margin-top:-5px;"
							size="1"/><spring:message code="headImage" />						
					</p>
					<p>	<input type="button" value="<spring:message code="upload" />" onclick="upload()" style="margin-top: 15px;background: none;"/></p>
				</div>
				<div class="banner-right col-md-7">
					<!-- 使用.col-md-*类，在中型设备台式电脑（≥992px）中分成12等宽，其中占*等分 -->
					<h1>
						<spring:message code="logo" />
					</h1>
					<div class="border"></div>
					<h2>${aboutMe.motto }</h2>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--about-->
	<div class="about" id="about">
		<div class="container">
			<h3 class="text-center">
				<spring:message code="aboutMe" />
			</h3>
			<div class="strip text-center">
				<img src="${ctx }/images/about.png" alt=" "
					class="edit-btn edit-aboutMe" data-url="${ctx }/aboutMe/form" />
			</div>
			<div class="container row">
				<div class="about-grids">
					<div class="col-md-4 ">
						<h4>
							<spring:message code="name" />
							：${aboutMe.name }
						</h4>
					</div>
					<div class="col-md-4 ">
						<h4>
							<spring:message code="sex" />
							：${aboutMe.gender }
						</h4>
					</div>
					<div class="col-md-4 ">
						<h4>
							<spring:message code="birthDay" />
							：${aboutMe.birthday }
						</h4>
					</div>
				</div>
				<div class="about-grids">
					<div class="col-md-4 ">
						<h4>
							<spring:message code="education" />
							：${aboutMe.gender }
						</h4>
					</div>
					<div class="col-md-4 ">
						<h4>
							<spring:message code="workYear" />
							：${aboutMe.workingyears }
						</h4>
					</div>
					<div class="col-md-4 ">
						<h4>
							<spring:message code="workStatus" />
							：
							<spring:message code="workStatu" />
						</h4>
					</div>
				</div>
				<div class="about-grids">
					<div class="col-md-4 ">
						<h4>
							<spring:message code="livePlace" />
							：${aboutMe.residence }
						</h4>
					</div>
					<div class="col-md-4 ">
						<h4>
							<spring:message code="email" />
							：${aboutMe.email }
						</h4>
					</div>
					<div class="col-md-4 ">
						<h4>
							<spring:message code="phone" />
							：${aboutMe.mobile }
						</h4>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--my skill-->
	<div class="my-skills text-center" id="skills">
		<div class="container">
			<h3>
				<spring:message code="professional" />
			</h3>
			<div class="strip text-center">
				<img src="${ctx }/images/skill.png" alt=" " class="edit-btn"
					data-url="/skill/edit" />
			</div>
			<div class="skill-grids">
				<div class="col-md-2 col-sm-4 col-xs-6 skills-grid text-center">
					<div class="circle" id="circles-0" data-level="40"></div>
					<p>Java</p>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-6 skills-grid text-center">
					<div class="circle" id="circles-1" data-level="70"></div>
					<p>Spring</p>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-6 skills-grid text-center">
					<div class="circle" id="circles-2" data-level="60"></div>
					<p>Hibernate</p>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-6 skills-grid text-center">
					<div class="circle" id="circles-3" data-level="50"></div>
					<p>jQuery</p>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-6 skills-grid text-center">
					<div class="circle" id="circles-4" data-level="90"></div>
					<p>Bootstrap</p>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-6 skills-grid text-center">
					<div class="circle" id="circles-5" data-level="80"></div>
					<p>Html5 / CSS3</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--education-->
	<div class="education" id="education">
		<div class="container">
			<div class="edu-info text-center">
				<h3>
					<spring:message code="educationExperience" />
				</h3>
			</div>
			<div class="strip text-center">
				<img src="${ctx }/images/edu.png" alt=" " class="edit-edu"
					data-url="/education/edit">
			</div>
			<div class="edu-grid">
				<div class="col-md-6 edu-grid-left">
					<h4>${educationDegree1.date}</h4>
				</div>
				<div class="col-md-6 edu-grid-right">
					<h5>${educationDegree1.name }</h5>
					<p>${educationDegree1.vocational }</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="edu-grid">
				<div class="col-md-6 edu-grid-left">
					<h4>${educationDegree2.date}</h4>
				</div>
				<div class="col-md-6 edu-grid-right">
					<h5>${educationDegree2.name}</h5>
					<p>${educationDegree2.vocational}</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--work-->
	<div class="work-experience text-center" id="experience">
		<div class="container">
			<div class="work-info">
				<h3>
					<spring:message code="workExperience" />
				</h3>
			</div>
			<div class="strip text-center">
				<img src="${ctx }/images/work.png" alt=" " class="edit-ws"
					data-url="/experience/edit" />
			</div>
			<div class="work-grids">
				<div class="col-md-6 w-grid">
					<div class="work-grid">
						<h3>${workingStatus1.date }</h3>
						<div class="work-grid-info">
							<h4>${workingStatus1.name }</h4>
							<p>•${workingStatus1.mission }</p>
							<p>•${workingStatus1.job }</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 w-grid">
					<div class="work-grid">
						<h3>${workingStatus2.date }</h3>
						<div class="work-grid-info">
							<h4>${workingStatus2.name }</h4>
							<p>•${workingStatus2.mission }</p>
							<p>•${workingStatus2.job }</p>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--honor-->
	<div class="honor text-center" id="honor">
		<div class="container">
			<div class="honor-info">
				<h3>
					<spring:message code="honor" />
				</h3>
			</div>
			<div class="strip text-center">
				<img src="${ctx }/images/honor.png" alt=" " class="edit-btn"
					data-url="/honor/edit" />
			</div>
			<div class="honor-grids">
				<div class="col-md-3 col-sm-6 honor-grid">
					<h3>
						<spring:message code="honor1" />
					</h3>
					<p>2015~2016</p>
				</div>
				<div class="col-md-3 col-sm-6 honor-grid">
					<h3>
						<spring:message code="honor2" />
					</h3>
					<p>
						<spring:message code="honor3" />
					</p>
				</div>
				<div class="col-md-3 col-sm-6 honor-grid">
					<h3>
						<spring:message code="honor4" />
					</h3>
					<p>
						<spring:message code="honor5" />
					</p>
				</div>
				<div class="col-md-3 col-sm-6 honor-grid">
					<h3>
						<spring:message code="honor6" />
					</h3>
					<p>
						<spring:message code="honor7" />
					</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--hobby-->
	<div class="hobby text-center" id="hobby">
		<div class="container">
			<h3>
				<spring:message code="hobby" />
			</h3>
			<div class="strip text-center">
				<img src="${ctx }/images/pro.png" alt=" " class="edit-btn"
					data-url="/hobby/edit" />
			</div>
			<div class="hobby-girds">
				<div class="col-md-2 col-sm-4 col-xs-6 hobby-pad">
					<div class="hobby-gird">
						<div class="hobby-image-0"></div>
						<p>
							<spring:message code="hobby1" />
						</p>
					</div>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-6 hobby-pad">
					<div class="hobby-gird">
						<div class="hobby-image-1"></div>
						<p>
							<spring:message code="hobby2" />
						</p>
					</div>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-6 hobby-pad">
					<div class="hobby-gird">
						<div class="hobby-image-2"></div>
						<p>
							<spring:message code="hobby3" />
						</p>
					</div>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-6 hobby-pad">
					<div class="hobby-gird">
						<div class="hobby-image-3"></div>
						<p>
							<spring:message code="hobby4" />
						</p>
					</div>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-6 hobby-pad">
					<div class="hobby-gird">
						<div class="hobby-image-4"></div>
						<p>
							<spring:message code="hobby5" />
						</p>
					</div>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-6 hobby-pad">
					<div class="hobby-gird">
						<div class="hobby-image-5"></div>
						<p>
							<spring:message code="hobby6" />
						</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--contact-->
	<div class="contact" id="contact">
		<div class="container">
			<div class="contact-info text-center">
				<h3>
					<spring:message code="touchMe" />
				</h3>
				<div class="strip text-center">
					<img src="${ctx }/images/con1.png" alt=" " />
				</div>
			</div>
			<div class="contact-grids">
				<div class="col-md-12 ">
					<form class="form-horizontal" role="form"
						action="http://localhost:8080/SSM_Resume/aboutMe/sendEmail"
						method="POST">
						<div class="form-group">
							<input type="text" class="form-control" name="subject"
								placeholder="<spring:message code="touchMe_name"/>...">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="sendTo"
								placeholder="<spring:message code="touchMe_email"/>...">
						</div>
						<div class="form-group">
							<!-- 文本框 -->
							<textarea class="form-control" rows="7" name="htmlContent"
								placeholder="<spring:message code="touchMe_mess"/>..."></textarea>
						</div>
						<div class="form-group">
							<!-- 按钮 -->
							<button type="submit" class="btn btn-primary btn-lg btn-block">
								<spring:message code="submit" />
							</button>
						</div>
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="download-resume text-center">
		<div class="container">
			<div class="strip text-center">
				<img src="${ctx }/images/down.png" alt=" ">
			</div>
			<div class="down">
				<a href="http://localhost:80/SSM_Resume/upload/download"><spring:message code="download" /></a>
			</div>
		</div>
	</div>
	<!--footer-->
	<div class="footer">
		<div class="container">
			<p>
				Copyright &copy; 2017.
				<spring:message code="qsx" />
				.
			</p>
		</div>
	</div>

	<div id="editPanel-about" class="edit-panel">
		<div class="edit-panel-header">
			<button type="button" class="close" data-dismiss="edit-panel"
				aria-label="Close">
				<span aria-hidden="true">&times;</span> <span class="sr-only">Close</span>
			</button>
		</div>
		<div class="edit-panel-body">
			<form id="aboutMe" name="aboutMe" method="post"
				action="http://localhost:8080/SSM_Resume/aboutMe/update">
				<form:hidden path="aboutMe.id" />
				<div class="form-group col-md-4">
					<!-- 姓名 -->
					<label for="name"><spring:message code="name" />：</label>
					<form:input path="aboutMe.name" class="form-control"
						maxlength="100" placeholder="..." required="required"
						autofocus="autofocus" />
				</div>
				<div class="form-group col-md-4">
					<!-- 性别 -->
					<label><spring:message code="sex" />：</label>
					<div>
						<label class="radio-inline"> <form:radiobutton
								path="aboutMe.gender" value="Male" /> <spring:message
								code="about.me.gender.male" />
						</label> <label class="radio-inline"> <form:radiobutton
								path="aboutMe.gender" value="Female" /> <spring:message
								code="about.me.gender.female" />
						</label>
					</div>
				</div>
				<div class="form-group col-md-4 date">
					<!-- 生日 -->
					<label for="birthday"><spring:message code="birthDay" />：</label>
					<form:input path="aboutMe.birthday"
						class="form-control date-picker" maxlength="100" placeholder="..."
						required="required" readonly="true" />
				</div>
				<div class="form-group col-md-4"></div>
				<div class="form-group col-md-4">
					<!-- 工作年限 -->
					<label for="workingyears"><spring:message code="workYear" />：</label>
					<form:input path="aboutMe.workingyears" class="form-control"
						maxlength="100" placeholder="..." required="required" />
				</div>
				<div class="form-group col-md-4"></div>
				<div class="form-group col-md-4">
					<!-- 居住地 -->
					<label for="residence"><spring:message code="livePlace" />：</label>
					<form:input path="aboutMe.residence" class="form-control"
						maxlength="200" placeholder="..." required="required" />
				</div>
				<div class="form-group col-md-4">
					<!-- 邮件 -->
					<label for="email"><spring:message code="email" />：</label>
					<form:input path="aboutMe.email" class="form-control"
						maxlength="100" placeholder="..." required="required" />
				</div>
				<div class="form-group col-md-4">
					<!-- 手机 -->
					<label for="mobile"><spring:message code="phone" />：</label>
					<form:input path="aboutMe.mobile" class="form-control"
						maxlength="50" placeholder="..." required="required" />
				</div>
				<div class="form-group col-md-12">
					<!-- 人生格言 -->
					<label for="motto"><spring:message code="motto" />：</label>
					<form:input path="aboutMe.motto" class="form-control"
						maxlength="300" placeholder="..." required="required" />
				</div>
				<div class="edit-panel-footer col-md-12">
					<!-- 保存 -->
					<button type="submit" class="btn btn-primary save-btn">
						<i class="fa fa-floppy-o"></i>
						<spring:message code="button.save" />
					</button>
					<!-- 取消 -->
					<button type="button" class="btn btn-default cancel-btn">
						<i class="fa fa-times"></i>
						<spring:message code="button.cancel" />
					</button>
				</div>
			</form>
		</div>
	</div>

	<div id="editPanel-edu" class="edit-panel">
		<div class="edit-panel-header">
			<button type="button" class="close" data-dismiss="edit-panel"
				aria-label="Close">
				<span aria-hidden="true">&times;</span> <span class="sr-only">Close</span>
			</button>
		</div>
		<div class="edit-panel-body">
			<form id="aboutMe" name="aboutMe" method="post"
				action="http://localhost:8080/SSM_Resume/aboutMe/update">
				<form:hidden path="educationDegree1.id" />
				<div class="form-group col-md-4">
					<label for="name"><spring:message code="eduName" />：</label>
					<form:input path="educationDegree1.name" class="form-control"
						maxlength="100" placeholder="..." required="required"
						autofocus="autofocus" />
				</div>
				<div class="form-group col-md-4">
					<label for="name"><spring:message code="eduDate" />：</label>
					<form:input path="educationDegree1.date" class="form-control"
						maxlength="100" placeholder="..." required="required"
						autofocus="autofocus" />
				</div>
				<div class="form-group col-md-4">
					<label for="name"><spring:message code="eduSummary" />：</label>
					<form:input path="educationDegree1.vocational" class="form-control"
						maxlength="100" placeholder="..." required="required"
						autofocus="autofocus" />
				</div>

				<div class="form-group col-md-4">
					<label for="name"><spring:message code="eduName" />：</label>
					<form:input path="educationDegree2.name" class="form-control"
						maxlength="100" placeholder="..." required="required"
						autofocus="autofocus" />
				</div>
				<div class="form-group col-md-4">
					<label for="name"><spring:message code="eduDate" />：</label>
					<form:input path="educationDegree2.date" class="form-control"
						maxlength="100" placeholder="..." required="required"
						autofocus="autofocus" />
				</div>
				<div class="form-group col-md-4">
					<label for="name"><spring:message code="eduSummary" />：</label>
					<form:input path="educationDegree2.vocational" class="form-control"
						maxlength="100" placeholder="..." required="required"
						autofocus="autofocus" />
				</div>
				<div class="edit-panel-footer col-md-12">
					<!-- 保存 -->
					<button type="submit" class="btn btn-primary save-btn">
						<i class="fa fa-floppy-o"></i>
						<spring:message code="button.save" />
					</button>
					<!-- 取消 -->
					<button type="button" class="btn btn-default cancel-btn">
						<i class="fa fa-times"></i>
						<spring:message code="button.cancel" />
					</button>
				</div>
			</form>
		</div>
		<!-- 工作经历 -->
		<div id="editPanel-ws" class="edit-panel">
			<div class="edit-panel-header">
				<button type="button" class="close" data-dismiss="edit-panel"
					aria-label="Close">
					<span aria-hidden="true">&times;</span> <span class="sr-only">Close</span>
				</button>
			</div>
			<div class="edit-panel-body">
				<form id="aboutMe" name="aboutMe" method="post"
					action="http://localhost:8080/SSM_Resume/aboutMe/update">
					<form:hidden path="workingStatus1.id" />
					<div class="form-group col-md-3">
						<label for="name"><spring:message code="wsName" />：</label>
						<form:input path="workingStatus1.name" class="form-control"
							maxlength="100" placeholder="..." required="required"
							autofocus="autofocus" />
					</div>
					<div class="form-group col-md-3">
						<label for="name"><spring:message code="wsDate" />：</label>
						<form:input path="workingStatus1.date" class="form-control"
							maxlength="100" placeholder="..." required="required"
							autofocus="autofocus" />
					</div>
					<div class="form-group col-md-3">
						<label for="name"><spring:message code="wsMission" />：</label>
						<form:input path="workingStatus1.mission" class="form-control"
							maxlength="100" placeholder="..." required="required"
							autofocus="autofocus" />
					</div>

					<div class="form-group col-md-3">
						<label for="name"><spring:message code="wsJob" />：</label>
						<form:input path="workingStatus1.job" class="form-control"
							maxlength="100" placeholder="..." required="required"
							autofocus="autofocus" />
					</div>

					<div class="form-group col-md-3">
						<label for="name"><spring:message code="wsName" />：</label>
						<form:input path="workingStatus2.name" class="form-control"
							maxlength="100" placeholder="..." required="required"
							autofocus="autofocus" />
					</div>
					<div class="form-group col-md-3">
						<label for="name"><spring:message code="wsDate" />：</label>
						<form:input path="workingStatus2.date" class="form-control"
							maxlength="100" placeholder="..." required="required"
							autofocus="autofocus" />
					</div>
					<div class="form-group col-md-3">
						<label for="name"><spring:message code="wsMission" />：</label>
						<form:input path="workingStatus2.mission" class="form-control"
							maxlength="100" placeholder="..." required="required"
							autofocus="autofocus" />
					</div>
					<div class="form-group col-md-3">
						<label for="name"><spring:message code="wsJob" />：</label>
						<form:input path="workingStatus2.job" class="form-control"
							maxlength="100" placeholder="..." required="required"
							autofocus="autofocus" />
					</div>
					<div class="edit-panel-footer col-md-12">
						<!-- 保存 -->
						<button type="submit" class="btn btn-primary save-btn">
							<i class="fa fa-floppy-o"></i>
							<spring:message code="button.save" />
						</button>
						<!-- 取消 -->
						<button type="button" class="btn btn-default cancel-btn">
							<i class="fa fa-times"></i>
							<spring:message code="button.cancel" />
						</button>
					</div>
				</form>
			</div>
		</div>
		<!-- 专业技能 -->
		
		<div id="editPanel" class="edit-panel">
			<div class="edit-panel-header">
				<button type="button" class="close" data-dismiss="edit-panel"
					aria-label="Close">
					<span aria-hidden="true">&times;</span> <span class="sr-only">Close</span>
				</button>
			</div>
				 <div class="card">
    <div class="card-body">Basic card</div>
  </div>
  <br>
  <div class="card bg-primary text-white">
    <div class="card-body">Primary card</div>
  </div>
  <br>
  <div class="card bg-success text-white">
    <div class="card-body">Success card</div>
  </div>
  <br>
  <div class="card bg-info text-white">
    <div class="card-body">Info card</div>
  </div>
  <br>
  <div class="card bg-warning text-white">
    <div class="card-body">Warning card</div>
  </div>
  <br>
  <div class="card bg-danger text-white">
    <div class="card-body">Danger card</div>
  </div>
  <br>
  <div class="card bg-secondary text-white">
    <div class="card-body">Secondary card</div>
  </div>
  <br>
  <div class="card bg-dark text-white">
    <div class="card-body">Dark card</div>
  </div>
  <br>
  <div class="card bg-light text-dark">
    <div class="card-body">Light card</div>
  </div>
			</div>
		</div>
		<script type="text/javascript">
			var $ = jQuery.noConflict();
			$(function() {

				/*
				 *关于我
				 **/
				//从浏览器底部弹出编辑窗口
				$('body').on('click', '.edit-aboutMe', function(event) {
					event.preventDefault();
					var url = $(this).data('url');
					$('#editPanel-about').animate({
						'left' : '0px',
						'bottom' : '0px'
					}, 300);
				});
				//关闭编辑窗口
				$('#editPanel-about').on('click', '.close', function(event) {
					event.preventDefault();
					$('#editPanel-about').animate({
						'left' : '0px',
						'bottom' : '-600px'
					}, 300);
				});
				/*
				 *教育经历
				 **/

				//从浏览器底部弹出编辑窗口
				$('body').on('click', '.edit-edu', function(event) {
					event.preventDefault();
					var url = $(this).data('url');
					$('#editPanel-edu').animate({
						'left' : '0px',
						'bottom' : '0px'
					}, 300);
				});
				//关闭编辑窗口
				$('#editPanel-edu').on('click', '.close', function(event) {
					event.preventDefault();
					$('#editPanel-edu').animate({
						'left' : '0px',
						'bottom' : '-600px'
					}, 300);
				});

				/*
				 *工作经历
				 **/

				//从浏览器底部弹出编辑窗口
				$('body').on('click', '.edit-ws', function(event) {
					event.preventDefault();
					var url = $(this).data('url');
					$('#editPanel-ws').animate({
						'left' : '0px',
						'bottom' : '0px'
					}, 300);
				});
				//关闭编辑窗口
				$('#editPanel-ws').on('click', '.close', function(event) {
					event.preventDefault();
					$('#editPanel-ws').animate({
						'left' : '0px',
						'bottom' : '-600px'
					}, 300);
				});

				/*
				 *技能
				 **/

				//从浏览器底部弹出编辑窗口
				$('body').on('click', '.edit-btn', function(event) {
					event.preventDefault();
					var url = $(this).data('url');
					$('#editPanel').animate({
						'left' : '0px',
						'bottom' : '0px'
					}, 300);
				});
				//关闭编辑窗口
				$('#editPanel').on('click', '.close', function(event) {
					event.preventDefault();
					$('#editPanel').animate({
						'left' : '0px',
						'bottom' : '-600px'
					}, 300);
				});
				//弹出顶部导航菜单
				$('#activator').click(function() {
					$('#box').animate({
						'top' : '0px'
					}, 500);
				});
				//关闭顶部导航菜单
				$('#boxclose').click(function() {
					$('#box').animate({
						'top' : '-1000px'
					}, 500);
				});

				//基于SVG的轻量级js圆形进度条插件
				$('#skills .circle').each(function(index, el) {
					var percentage = $(this).data('level');
					Circles.create({
						id : 'circles-' + index,
						percentage : percentage,
						radius : 80,
						width : 10,
						number : percentage / 1,
						text : '%',
						colors : [ '#ffffff', '#a2e0aa' ]
					});
				});

			});
			/*
			 *上传文件
			 **/
			function upload() {
				//js file 对象
				var file = $("#file")[0].files[0];

				//js form
				var form = new FormData();
				form.append("file", file);

				//jquery ajax
				var opt = {
					url : "/SSM_Resume/upload/do_upload",
					type : "post",
					contentType : false,
					processData : false,
					data : form,
					success : function(data) {
						var json = eval("(" + data + ")");
						$("#imgHead").attr("src", "/SSM_Resume/upload/" + json.url);
					}
				};
				$.ajax(opt);
			}
		</script>
</body>

</html>
