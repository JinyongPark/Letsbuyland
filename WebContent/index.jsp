<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Letsbuyland입니다.</title>
<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet" href="css/background.css" />
<style type="text/css">
	
	/* 외곽 div */
	.box {
		margin: 1%; 
		max-width: 98%;
		/* border: 1px solid blue; */
		background-color: white;
		border-radius: 30px;		
	}
	
	.header {
		height: 60px;
		font-size: 50px;
		padding: 40px 0px 35px 57px;			
	}
	
	/* 타이틀 글자들 */
	#title {
		background-color: rgb(255, 155, 155);
		color: white;
		padding: 2px;
	}
	
	.title_char {
		
	}
	
	#tyo {
		margin-right: -9px;
		background-color: red;
	}
	#shang {
		margin-right: -9px;
		background-color: blue;
	}
	#gum {
		background-color: rgb(241, 241, 58);
		color: purple;
	}
	
	/* 배너 이미지 */
	.banner_img {			
		padding: 29px;		
	}
	
	/* 이미지 속 글자 */	
	.img_marking {
		color: white;
		font-size: 37px;
		font-weight: bold;			
	}
	.product {
		height: 230px;
		width: 200px;		
		float: left;
		background-color: rgb(245, 211, 104);
		padding: 10px;
		font-size: 25px;				
	}
	
	.body {
		height: 770px;
		padding: 5px 0px 0px 5px;
	}
	
	.body_title {
		background-color: rgb(245, 211, 104);
		height: 100px;
		width: 800px;
		padding: 10px;		
	}
	.text {
		padding: 20px 10px 10px 20px;
	}
	.text_marking1 {
		color: red;
		font-weight: bold;
		font-size: 36px;
		display:inline-block;
		margin: 0px 0px 10px -5px;
	}
	.text_marking2 {
		border-bottom: 1px dotted gray;
		display:inline-block;
		padding-bottom: 5px;
		margin-bottom: 5px;
		width: 160px;
	}
</style>
</head>
<body>
	<div class="box header">
		<span id="title">
			<span id="tyo" class="title_char">토</span>
			<span id="shang" class="title_char">생</span>
			<span id="gum" class="title_char">금</span> 부동산입니다.
		</span>		
	</div>
	<div class="box">
		<div class="banner_img" style="position: relative;">
			<img src="images/newtown_03_02_p05-1.jpg" style="width: 1000px; border-radius: 30px">
			<span class="img_marking" style="position: absolute; top: 481px; left: 282px;">재개발 전문상담 / 매매. 전세. 월세 전문</span>
			<span class="img_marking" style="position: absolute; top: 528px; left: 797px;">796-3114</span>
		</div>		
	</div>
	<div class="box body">
		<div class="box body_title">
			오늘의 매물
		</div>
		<div class="box product">
			<div class="text">
				<span class="text_marking1">매물</span><br />
				<span class="text_marking2">전세</span><br />
				<span class="text_marking2">보증금 2억</span><br />
				<span class="text_marking2">월 50</span>				
			</div>
		</div>
		<div class="box product">
			<div class="text">
				<span class="text_marking1">매물</span><br />
				<span class="text_marking2">전세</span><br />
				<span class="text_marking2">보증금 2억</span><br />
				<span class="text_marking2">월 50</span>				
			</div>
		</div>
		<div class="box product">
			<div class="text">
				<span class="text_marking1">매물</span><br />
				<span class="text_marking2">전세</span><br />
				<span class="text_marking2">보증금 2억</span><br />
				<span class="text_marking2">월 50</span>				
			</div>
		</div>
		<div class="box product">
			<div class="text">
				<span class="text_marking1">매물</span><br />
				<span class="text_marking2">전세</span><br />
				<span class="text_marking2">보증금 2억</span><br />
				<span class="text_marking2">월 50</span>				
			</div>
		</div>
		<div class="box product" style="clear:both;">
			<div class="text">
				<span class="text_marking1">매물</span><br />
				<span class="text_marking2">전세</span><br />
				<span class="text_marking2">보증금 2억</span><br />
				<span class="text_marking2">월 50</span>				
			</div>
		</div>
		<div class="box product">
			<div class="text">
				<span class="text_marking1">매물</span><br />
				<span class="text_marking2">전세</span><br />
				<span class="text_marking2">보증금 2억</span><br />
				<span class="text_marking2">월 50</span>				
			</div>
		</div>
		<div class="box product">
			<div class="text">
				<span class="text_marking1">매물</span><br />
				<span class="text_marking2">전세</span><br />
				<span class="text_marking2">보증금 2억</span><br />
				<span class="text_marking2">월 50</span>				
			</div>
		</div>
		<div class="box product">
			<div class="text">
				<span class="text_marking1">매물</span><br />
				<span class="text_marking2">전세</span><br />
				<span class="text_marking2">보증금 2억</span><br />
				<span class="text_marking2">월 50</span>				
			</div>
		</div>	
		
	</div>
</body>
</html>