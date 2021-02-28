<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<head>
<script async
	src="https://www.googletagmanager.com/gtag/js?id=G-8PC3LKEGGD"></script>
<script>
      window.dataLayer = window.dataLayer || [];
      function gtag() {
        dataLayer.push(arguments);
      }
      gtag("js", new Date());

      gtag("config", "G-8PC3LKEGGD");
    </script>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=no" />
<title>It's yours</title>
<!-- 
<link rel="stylesheet" href="../style/main.css"  type="text/css"/>
-->
    <link rel="stylesheet" th:href="@{/style/main.css}" />

<script
	src="https://polyfill.io/v3/polyfill.min.js?features=Array.from,Promise,Symbol,Object.setPrototypeOf,Object.getOwnPropertySymbols"></script>
<script src="https://cdn.jsdelivr.net/npm/superagent"></script>
</head>
<body>
	<div class="section">
		<div class="searchForm">
			<p class="title">Instagram Picker</p>
			<div class="row">
				<p class="subTitle">貼文網址</p>
				<input class="textinput" id="url"
					placeholder="ex. https://www.instagram.com/p/B-ZEuJypDtG/" />
			</div>
			<div class="row clearfix">
				<div class="wHalf floatLeft">
					<p class="subTitle">抽獎人數</p>
					<input class="textinput width50" id="choice_count" value="1" />
				</div>
				<div class="wHalf floatLeft">
					<p class="subTitle">標記人數</p>
					<input class="textinput width50" id="tag_count" value="0" />
				</div>
			</div>
			<div class="row">
				<p class="subTitle">指定留言內容</p>
				<input class="textinput keyword" id="keyword" />
			</div>
			<div class="row clearfix">
				<div class="wHalf floatLeft switch">
					<p class="subTitle">可以重複留言</p>
					<div class="mutiSwitch" id="enable_duplicate">
						<div class="fill"></div>
					</div>
				</div>
				<div class="wHalf floatLeft">
					<div class="send">
						<p>抽獎</p>
						<div class="sending">
							<div></div>
							<div></div>
							<div></div>
						</div>
					</div>
				</div>
			</div>
			<div class="fetchBar"></div>
			<p class="hint">抽獎總是抽到那幾個留言的人嗎！看這邊（揮手</p>
		</div>
		<div class="paint">
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
		</div>
		<div class="result clearfix">
			<div class="col3-2">
				<div class="paddingBottom"></div>
				<div class="image">
					<img />
				</div>
			</div>
			<div class="col3-1">
				<div class="container">
					<div class="owner">
						<div class="avatar"></div>
						<div class="content">
							<p></p>
							<p></p>
						</div>
					</div>
					<div class="empty">
						<p>無人符合條件</p>
					</div>
					<div class="fetchBarAgain"></div>
				</div>
				<div class="buttons">
					<div class="button back">
						<p>重新設定</p>
						<div class="sending">
							<div></div>
							<div></div>
							<div></div>
						</div>
					</div>
					<div class="button again">
						<p>再抽一次</p>
						<div class="sending">
							<div></div>
							<div></div>
							<div></div>
						</div>
					</div>
					<div class="button copy">
						<p>複製得獎帳號</p>
						<div class="sending">
							<div></div>
							<div></div>
							<div></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<input class="pickers" />
	<div class="kc">
		<p>by @cos55555’s boyfriend</p>
	</div>
	<div class="error">
		<p></p>
	</div>
	<div class="showCopy">
		<p></p>
	</div>
	<div class="cover section">
		<div class="searchForm">
			<div class="title">
				<p
					style="font-weight: 500; color: #435851; font-size: 20px !important">
					現在有 Beta 手機版可以下載囉</p>
				<p style="font-size: 16px; line-height: 16px; color: #435851">
					You can download our beta version app in the app store.</p>
			</div>
			<p>為了解決近期 IG 的資料權限更動，導致無法正常獲取完整的留言內容，在這裡我們隆重的帶給大家～～燈燈燈～ It's
				Yours
				手機版（ios），希望手機版能幫助大家解決抽獎上的疑難雜症，不過由於目前還尚在測試階段，如果有碰到任何問題歡迎寄信至：itsyourspicker@gmail.com，有空時會前來排解，桑Ｑ飛哩罵曲
				(´・ω・ `)</p>
			<a href="https://apps.apple.com/tw/app/its-yours/id1536323911"
				target="_blank"
				style="display: block; text-align: center; margin-top: 16px"><p>前往下載
					App</p> <img src="./images/download.png" /></a>
		</div>
	</div>
	<script src="../js/main.js"></script>
</body>
</html>
