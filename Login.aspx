<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WEB.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <style>

       /* http://meyerweb.com/eric/tools/css/reset/ 
   v2.0b1 | 201101 
   NOTE: WORK IN PROGRESS
   USE WITH CAUTION AND TEST WITH ABANDON */

html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	outline: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}

/* remember to highlight inserts somehow! */
ins {
	text-decoration: none;
}
del {
	text-decoration: line-through;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

/*begin our styles*/

body {
	font: 16px/1.4em 'PT Sans', sans-serif;;
	color: #1c1c1c;
}

p,
ul {
	margin: 0 0 1.5em;
}

ul {
	list-style: disc;
	padding: 0 0 0 20px;
}

a {
	color: #1D745A;
}

h1 {

}

h2 {
	font-family: 'PT Serif', serif;
	font-size: 32px;
	line-height: 1.4em;
	margin: 0 0 .4em;
	font-weight: bold;
}

/*layout*/

.wrapper {
}

article {
	border-bottom: 1px solid #d8d8d8;
	padding: 10px 20px 0 20px;
	margin: 10px 0;
}

/*header*/

header {
	background: #1c1c1c;
	padding: 15px 20px;
}

		/*shorter clearfix http://nicolasgallagher.com/micro-clearfix-hack/*/
		header:before,
		header:after {
		    content:"";
		    display:table;
		}
		
		header:after {
		    clear:both;
		}
		
		/* For IE 6/7 (trigger hasLayout) */
		header {
		    zoom:1;
		}

h1.logo a {
	color: #d8d8d8;
	text-decoration: none;
	font-weight: bold;
	text-transform: uppercase;
	font-size: 20px;
	line-height: 22px;
	float: left;
	letter-spacing: 0.2em;
}

a.to_nav {
	float: right;
	color: #fff;
	background: #4e4e4e;
	text-decoration: none;
	padding: 0 10px;
	font-size: 12px;
	font-weight: bold;
	line-height: 22px;
	height: 22px;
	text-transform: uppercase;
	letter-spacing: 0.1em;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border-radius: 2px;
}

a.to_nav:hover,
a.to_nav:focus {
	color: #1c1c1c;
	background: #ccc;
}
	
/*navigation*/	

#primary_nav ul {
	list-style: none;
	background: #1c1c1c;
	padding: 5px 0;
}

#primary_nav li a {
	display: block;
	padding: 0 20px;
	color: rgb(0, 218, 255);
	text-decoration: none;
	font-weight: bold;
	text-transform: uppercase;
	letter-spacing: 0.1em;
	letter-spacing: 0.1em;
	line-height: 2em;
	height: 2em;
	border-bottom: 1px solid #383838;
}

#primary_nav li:last-child a {
	border-bottom: none;
}

#primary_nav li a:hover,
#primary_nav li a:focus {
	color: #1c1c1c;
	background: #ccc;
}

/*footer*/

footer {
	font-family: 'PT Serif', serif;
	font-style: italic;
	text-align: center;
	font-size: 14px;
}

/*media queries*/

		@media only screen and (min-width: 768px) {
		
			a.to_nav {
				display: none;
			}
			
			.wrapper {
				position: relative;
				width: 768px;
				margin: auto;
			}
			
			#primary_nav {
				position: absolute;
				top: 5px;
				right: 10px;
				background: none;
			}
			
			#primary_nav li {
				display: inline;
			}
			
			#primary_nav li a {
				float: left;
				border: none;
				padding: 0 10px;
				-webkit-border-radius: 2px;
				-moz-border-radius: 2px;
				border-radius: 2px;
			}
			
			#primary_nav li.top {
				display: none;
			}
	
		}
       .auto-style1 {
           text-align: center;
       }
       .link span{
    color:blue;
    font-size:30px;
}

.link:hover span{
    font-weight:bold;
}

.link:hover{
    text-decoration:underline;
}

   </style>
</head>
<body id=" home">

    <form id="form1" runat="server">

    <div class="wrapper" style="color: #000000">
	
		<header>
		
			<h1 class="logo"><a href="Home.aspx">LOGOUT</a></h1>
			
			<a class="to_nav" href="#primary_nav">Menu</a>
		
		</header>
        Welcome
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <h1 style="font-style: italic; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: 'times New Roman', Times, serif; font-size: x-large;">Station Cars Norbiton Taxi Bookings</h1>
        <p style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); margin: 0px; padding: 0.5em 0px; font-size: 16px; font-family: &quot;delius swash caps&quot;, cursive; line-height: 1.5; color: rgb(0, 0, 0);">
            <b>020 8541 0100</b>&nbsp;Whether you want a taxi to Norbiton or require a ride home from the Domestic Terminal,<b>Station Cars Norbiton Taxi</b>&nbsp;have got you enclosed. With classy taxi booking techniques&nbsp;<b>Station Cars Norbiton Cab</b>&nbsp;will get you to Airport on time.</p>
        <h5 style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;delius swash caps&quot;, cursive;">Heathrow Airport Taxi</h5>
        <p style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); margin: 0px; padding: 0.5em 0px; font-size: 16px; font-family: &quot;delius swash caps&quot;, cursive; line-height: 1.5; color: rgb(0, 0, 0);">
            Be given a map to your pick up point at Heathrow Airport and still be told how much time you have given yourself to get to the Airport.</p>
        <h2 style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); margin: 0px; padding: 0.5em 0px 0.2em; font-size: 36px; line-height: 1.2; color: rgb(0, 0, 0); font-family: 'Times New Roman', Times, serif;">Station Cars Norbiton Cab Service’s</h2>
        <p style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); margin: 0px; padding: 0.5em 0px; font-size: 16px; font-family: &quot;delius swash caps&quot;, cursive; line-height: 1.5; color: rgb(0, 0, 0);">
            <b>Station Cars Norbiton Cabs</b>&nbsp;offers an excellence&nbsp;<b>Norbiton taxi service</b>&nbsp;travelling all over the Norbiton and sub area, Station Cars Norbiton Cab strives to be the quick and welcoming solution for all Gatwick Airport bookings.</p>
        <h3 style="color: #000000; font-family: 'times New Roman', Times, serif;">Minicabs &amp; Taxis Services</h3>
        <p style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); margin: 0px; padding: 0.5em 0px; font-size: 16px; font-family: &quot;delius swash caps&quot;, cursive; line-height: 1.5; color: rgb(0, 0, 0);">
            in<b>&nbsp;Station Cars Norbiton</b>, passengers have a range of vehicles and taxi services to decide from. Whether you are looking for a regular minicab, a best service or a mini cab for group travel or for passengers in wheelchairs, Station Cars Norbiton taxis provide for your needs.</p>
        <h4 style="color: #000000; font-family: 'times New Roman', Times, serif; ">Taxi Office in Norbiton</h4>
        <p style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); margin: 0px; padding: 0.5em 0px; font-size: 16px; font-family: &quot;delius swash caps&quot;, cursive; line-height: 1.5; color: rgb(0, 0, 0);">
            When seeking a cab, utilize our Minicabs and take note of particular mini cab for most important events or you might wish to many hire in peak periods to decrease the wait. In addition, the&nbsp;<b>Station Cars Taxis</b>Service is the best taxi service in the country.</p>
        <h6 style="color: #000000; font-family: 'times New Roman', Times, serif;">Call us or Contact us via Email for Taxi &amp; Minicab Service in Norbiton</h6>
        <p style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); margin: 0px; padding: 0.5em 0px; font-size: 16px; font-family: &quot;delius swash caps&quot;, cursive; line-height: 1.5; color: rgb(150, 162, 166);">
        </p>
        <h3 style="color: #000000; font-family: 'times New Roman', Times, serif;">Norbiton Cabs Airport Transfers Service Firm</h3>
        <p style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); margin: 0px; padding: 0.5em 0px; font-size: 16px; font-family: &quot;delius swash caps&quot;, cursive; line-height: 1.5; color: rgb(150, 162, 166);">
        </p>
        <p style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); margin: 0px; padding: 0.5em 0px; font-size: 16px; font-family: &quot;delius swash caps&quot;, cursive; line-height: 1.5; color: rgb(0, 0, 0);">
            <b style="color: #000000">Norbiton Airport Transfers</b>&nbsp;is the perfect firm to go directly to desire place from the airport as we offer 24/7&nbsp;<b>Airport Transfer</b>&nbsp;services which are highly efficient and provide you with a personal driver that will take you directly to your booked hotel.</p>
        <p style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); margin: 0px; padding: 0.5em 0px; font-size: 16px; font-family: &quot;delius swash caps&quot;, cursive; line-height: 1.5; color: rgb(150, 162, 166);">
        </p>
        <h4 style="color: #000000; font-family: 'times New Roman', Times, serif; ">Dial Number and Enjoy Taxis Company Fares or Price</h4>
        <p style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); margin: 0px; padding: 0.5em 0px; font-size: 16px; font-family: &quot;delius swash caps&quot;, cursive; line-height: 1.5; color: rgb(150, 162, 166);">
        </p>
        <span style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); font-family: &quot;delius swash caps&quot;, cursive; font-size: 16px;">Furthermore, you have full access to the&nbsp;</span><b style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); font-family: &quot;delius swash caps&quot;, cursive; font-size: 16px;">Company</b><span style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(150, 162, 166); font-family: &quot;delius swash caps&quot;, cursive; font-size: 16px;">&nbsp;</span><b style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); font-family: &quot;delius swash caps&quot;, cursive; font-size: 16px;">cabs 
        driver</b><span style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); font-family: &quot;delius swash caps&quot;, cursive; font-size: 16px;">&nbsp;for the time you have booked for and will receive quality air conditioned&nbsp;</span><b style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); font-family: &quot;delius swash caps&quot;, cursive; font-size: 16px;">Taxis</b><span style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); font-family: &quot;delius swash caps&quot;, cursive; font-size: 16px;">&nbsp;for 
        your convenience. Call At&nbsp;</span><b style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); font-family: &quot;delius swash caps&quot;, cursive; font-size: 16px;">Station Car Taxis and Cabs OfficeNumber</b><span style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); font-family: &quot;delius swash caps&quot;, cursive; font-size: 16px;">&nbsp;and get affordable&nbsp;</span><b style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); font-family: &quot;delius swash caps&quot;, cursive; font-size: 16px;">Fares 
        or Price</b><span style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); font-family: &quot;delius swash caps&quot;, cursive; font-size: 16px;">&nbsp;that no one can measure.</span><p style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); margin: 0px; padding: 0.5em 0px; font-size: 16px; font-family: &quot;delius swash caps&quot;, cursive; line-height: 1.5; color: rgb(150, 162, 166);">
        </p>
        <h5 style="color: #000000; font-family: 'times New Roman', Times, serif;" class="auto-style1">Station Car Taxis &amp; Cabs Company</h5>
        <br class="Apple-interchange-newline" />
        <br />
        <br />
        <br />
        <br />
        <br />
		<nav id="primary_nav" >
		
			<ul>
			
				<li><a href="Login.aspx">Home</li>
			
				<li><a href="">History</a></li>
			
				<li ><a href="BookingPortal.aspx">ONLINE BOOKING</a></li>
			
				<li><a href="Admin.aspx">ADMIN</a></li>
			
				<li><a href="">Contact</a></li>
			
				<li class="top"><a href="#home">Top</a></li>
			
			</ul>
		
		</nav><!--end primary_nav-->
		
		<footer>
		
			<p>Copyright &copy;2016 Norbiton</p>
		
		</footer>
	
	</div><!--end wrapper-->
    
    </form>
    
</body>
</html>
