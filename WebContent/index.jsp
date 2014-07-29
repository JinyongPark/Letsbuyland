<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Letsbuyland입니다.</title>
<link rel="stylesheet" href="css/main.css" />
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
	
	/* 타이틀 */
	#title {
		background-color: rgb(255, 187, 187);
		color: white;
		padding: 2px;
		cursor: pointer;
	}
	
	.title_char {
		display: inline-block;
		height: 60px;
	}
	
	/* 타이틀 글자 데코레이션 */	
	/* 토 */
	#tyo {
		margin-right: -9px;
		background-color: red;
		color: rgb(243, 243, 243);		
	}
	
	/* 생 */
	#shang {
		margin-right: -9px;
		background-color: blue;
		color: white;		
	}
	
	/* 금 */
	#gum {
		background-color: rgb(241, 241, 58);
		color: purple;		
	}
	
	/* 배너 이미지 */
	.banner_img {			
		padding: 29px;		
	}
	
	/* 배너 글자 */	
	.img_marking {
		color: white;
		font-size: 37px;
		font-weight: bold;			
	}
	
	/* 배너 옆 공간 */
	.beside_Img	{
		width: 100px; 
		height: 100px; 
		padding: 29px;
	}
	
	.beside_Img_content {
		width: 480px;
		height: 200px;
		border: 1px solid red;
	}
	
		/* 서브 메뉴 */
		.submenu {
			width: 561px;
			height: 38px;
			background-color: rgb(205, 218, 241);
			padding: 10px;
			font-size: 15px;
			margin-bottom: 17px;
		}
	
	/* 바디의 왼쪽 상자 */
	.left_body {
		width: 757px;		
		padding: 18px 0px 5px 15px;
		float: left;		
	}
	
	
		/* 상단 타이틀 */
		.left_body_title {
			background-color: rgb(245, 211, 104);
			height: 78px;
			width: 727px;
					
		}	
		.left_title_text {			
			padding: 16px 10px 10px 27px;
			font-size: 40px;
			color: white;
			font-weight: bold;
			
		}
		
		/* 매물 상자 테두리 */
		.aroundBox {
			margin: 13px 8px 8px 6px;
		}
		
		/* 매물 상자 */
		.product {
			height: 192px;
			width: 148px;		
			float: left;
			background-color: rgb(245, 211, 104);
			padding: 10px;
			font-size: 15px;
			cursor: pointer;						
		}
		
		.product_text {
			padding: 20px 10px 10px 20px;
		}
		.text_marking1 {
			color: red;
			font-weight: bold;
			font-size: 24px;
			display:inline-block;
			margin: 0px 0px 10px -5px;
		}
		.text_marking2 {
			border-bottom: 1px dotted gray;
			display:inline-block;
			padding-bottom: 5px;
			margin-bottom: 5px;
			width: 117px;
		}
		
		/* 하단 타이틀 */
		.split_vertical {
			height: 10px;
			margin-bottom: 10px;
			clear: both;
		}
		.left_body_bottom {
			background-color: rgb(81, 138, 58);
			height: 83px;
			width: 699px;				
		}
		.bottom_text {
			padding: 20px 10px 10px 25px;
			font-size: 37px;
			color: white;
			font-weight: bold;
		}
	
	/* 바디 오른쪽 상자 */
	.right_body {
		width: 629px;			
		padding: 18px 0px 0px 15px;
		margin-left: 0px;		
		float: left;
	}
	
		/* 상단 타이틀 */
		.right_body_title {
			background-color: rgb(245, 211, 104);
			height: 78px;
			width: 602px;
			margin-bottom: 21px;
					
		}	
		.right_title_text {			
			padding: 16px 10px 10px 27px;
			font-size: 40px;
			color: white;
			font-weight: bold;
			
		}
		
		/* 소식 상자 */
		.infoBox {
			width: 561px;
			height: 38px;
			background-color: rgb(126, 157, 213);
			padding: 10px;
			font-size: 15px;
			margin-bottom: 17px;
		}	
		.infoBox_text {
			padding: 10px 10px 10px 20px;
			color: white;
			font-size: 20px;
		}
	
	/* 클릭 이벤트 */
	.clickEvent {
		cursor: pointer;
	}		
</style>
</head>
<body>
	<div class="box header">
		<span id="title" onclick="location.href='index.jsp'">
			<span id="tyo" class="title_char">토</span>
			<span id="shang" class="title_char">생</span>
			<span id="gum" class="title_char">금</span> 부동산
		</span>		
	</div>
	<div class="box">
		<div class="banner_img" style="position: relative; float:left;">
			<img src="images/newtown_03_02_p05-1.jpg" style="width: 800px; border-radius: 30px">
			<span class="img_marking" style="position: absolute; top: 361px; left: 118px;">재개발 전문상담 / 매매. 전세. 월세 전문</span>
			<span class="img_marking" style="position: absolute; top: 405px; left: 560px;">02-796-3114</span>
		</div>	
		<div class="beside_Img" style="float:left;">
			<div class="beside_Img_content">
				<div class="box submenu"></div>
				<div class="box submenu"></div>
				<div class="box submenu"></div>
				<div class="box submenu"></div>
			</div>
		</div>
		<div style="clear:both;"></div>	
	</div>
	<div class="box left_body">
		<div class="box left_body_title">
			<div class="left_title_text">실시간 매물 <span style="font-size: 20px;">2014년 7월 30일 업데이트</span></div>			
		</div>
		<div class="aroundBox">
			<div class="box product">
				<div class="product_text">
					<span class="text_marking1">매물</span><br />
					<span class="text_marking2">전세</span><br />
					<span class="text_marking2">보증금 1억</span><br />
					<span class="text_marking2">월 50</span>				
				</div>
			</div>
			<div class="box product">
				<div class="product_text">
					<span class="text_marking1">매물</span><br />
					<span class="text_marking2">전세</span><br />
					<span class="text_marking2">보증금 1억</span><br />
					<span class="text_marking2">월 50</span>				
				</div>
			</div>
			<div class="box product">
				<div class="product_text">
					<span class="text_marking1">매물</span><br />
					<span class="text_marking2">전세</span><br />
					<span class="text_marking2">보증금 1억</span><br />
					<span class="text_marking2">월 50</span>				
				</div>
			</div>
			<div class="box product">
				<div class="product_text">
					<span class="text_marking1">매물</span><br />
					<span class="text_marking2">전세</span><br />
					<span class="text_marking2">보증금 1억</span><br />
					<span class="text_marking2">월 50</span>				
				</div>
			</div>
			<div class="box product">
				<div class="product_text">
					<span class="text_marking1">매물</span><br />
					<span class="text_marking2">전세</span><br />
					<span class="text_marking2">보증금 1억</span><br />
					<span class="text_marking2">월 50</span>				
				</div>
			</div>
			<div class="box product">
				<div class="product_text">
					<span class="text_marking1">매물</span><br />
					<span class="text_marking2">전세</span><br />
					<span class="text_marking2">보증금 1억</span><br />
					<span class="text_marking2">월 50</span>				
				</div>
			</div>
			<div class="box product">
				<div class="product_text">
					<span class="text_marking1">매물</span><br />
					<span class="text_marking2">전세</span><br />
					<span class="text_marking2">보증금 1억</span><br />
					<span class="text_marking2">월 50</span>				
				</div>
			</div>
			<div class="box product">
				<div class="product_text">
					<span class="text_marking1">매물</span><br />
					<span class="text_marking2">전세</span><br />
					<span class="text_marking2">보증금 1억</span><br />
					<span class="text_marking2">월 50</span>				
				</div>
			</div>
		</div>
		<div class="box split_vertical"></div>
		<div class="box left_body_bottom bottom_text" >
			한남 뉴타운 매물정보
			<br />토생금 부동산 ☎  02-796-3114 
		</div>		
	</div>
	<div class="box right_body">
		<div class="box right_body_title">
			<div class="right_title_text">뉴타운 소식</div>			
		</div>
		<div class="aroundBox">
			<div class="box infoBox clickEvent" onclick="location.href='http://economy.hankooki.com/lpage/estate/201407/e2014071317130992720.htm'">
				<div class="infoBox_text">• 미운 오리' 한남뉴타운 날아오른다</div>
			</div>
			<div class="box infoBox clickEvent" onclick="location.href='http://news1.kr/articles/?1741137'">
				<div class="infoBox_text">• 한남 vs 천호, 뉴타운 사업도 지역따라 양극화</div>
			</div>					
		</div>
	</div>
</body>
</html>