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
	color: #fff;
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
   </style>
</head>
<body id=" home">

    <div class="wrapper">
	
		<header>
		
			<h1 class="logo"><a href="">Nav</a></h1>
			
			<a class="to_nav" href="#primary_nav">Menu</a>
		
		</header>

        <br />
		
		<div class="heading">
<h1 style="font-size:28px;">WORCESTER PARK CARS AND MINICABS SERVICE</h1></div>
		

        <div id="ctl00_ContentPlaceHolder1_divContent">
<p>Worcester Park Cars Company provides quick, reliable, and affordable minicabs service in and around London and Greater London area including Surrey for all. Station Cars Worcester Park is one of the oldest and reputable minicabs service providers established before more than 2 decades.</p>
<h2>WORCESTER PARK KT4 LOCATION</h2>
<p>Worcester Park is London's south west, covering Surrey's Borough of Epsom and Ewell in the east and London's Borough of Sutton in the west. Worcester Park meets with the boundary of Royal Borough of Kingston upon Thames. We also cover these areas Stoneleigh, Motspur Park, Malden manor, Cheam, New Malden, Epsom down, Chessington North, Morden minicab in Merton, Tolworth, Raynes Park, Wimbledon Common, Airport Transfer in Esher Village, Norbiton, Surbiton, Kingston Hill.</p>
<h4>EXCELLENT MINICABS FACILITY IN NEW MALDEN</h4>
<p>New Malden – here we offer highest class facilities – like minicab and executive cars provided to all cities, airports, railway stations, as well as to scenic spots. The places of interest, you would surely like to visit here are – New Malden railway station, Waterloo, and so on.</p>
<h3>BEST MINICAB SERVICE IN CHEAM AREA</h3>
<p>Cheam is an area of London Borough of Sutton, England that has the areas - like Cheam hamlet and North Cheam.  We specialize in offering our exclusive services – such as minicabs, executive cars, on cheaper price added with highest standard-fleet and friendly-mannered chauffer facility in Cheam.</p>
<h4>EFFICIENT AND QUICK MINICAB SERVICES IN EWELL</h4>
<p>Ewell is having the areas – Ewell West, Ewell Village, Ewell East, where you may surely prefer to move and roam to enjoy your life with your family, your colleagues, or with your partners as well. Our top-notch minicabs coupled with executive cars facilities in Ewell has given us a unique niche relatively our competitors, thus we serve our valued clients with our utmost commitment and with our full attention and care.  Ewell is a surrounding area in Borough of Epson as well as Ewell in Surrey with its major focus on its central commercial hamlet. </p> 
<h4>STATION CARS OFFICE LOCATION</h4>
<p>We feel pleased in saying that we are the right answer for your minicab or executive car needs at the Worcester Park Station (hence remember the name – Station cars, for all times, for all your roaming and moving needs). To visit Stationcars minicab services just turn right when exiting the Worcester Park railway station, for direction please click, after any of the service you require from us, which are listed for your convenience:</p>
<h4>THE HIGHEST STANDARD STATION CARS SERVICES:</h4>
<ul>
<li>Private hire</li>
<li>Minicab Service</li>
<li>Airport Transfers</li>
<li>Executive Car (Social Trips, Weddings, Corporate Events) </li>
<li>School run</li>
<li>Same day Courier service</li>
<li>Cheap Vehicle for disabled and elderly</li>
<li>Account Facilities</li>
<li>Online Booking</li>
<li>Regular Booking</li>
<li>Wait and Return</li>
<li>ASAP Service – urgent service (subject to availability) </li>
<li>Single Baby Seat or Booster Seat is provided free of charge (subject to availability) </li>
<li>Intra City Discounted Fare (please call to get a quote) </li>
<li>Car Hire (please call to get a quote) </li></ul>
<h4>OUR STATION CARS FLEET IS AT YOUR DISPOSAL</h4>
<p>Our minicabs fleet includes Saloon, Estate, MPV, Executive, and 8 Seaters. Mini cabs are not more than five years old. Fully valeted and equipped with Tom Tom Sat Nav for Live Tracking and climate control for comfortable journey. Minicabs are registered and insured as per TFL (Transport for London) London mini cabs and Private hire requirements.</p>
<h4>OUR FRIENDLY-MANNERED MINICAB DRIVERS </h4>
<p>Company Minicabs drivers are TFL (Transport for London) London Mini Cab and Private Hire licensed, trained and perfectly guided to ensure and portray a professional attitude and the descent approach. All drivers have undergone ‘enhanced’ criminal records check from the Disclosure and Barring Service (DBS).</p>
<p>The Drivers are expert in Worcester Park local area whether it, be Super Markets, Hospitals, Schools, or nightlife on weekends. On customer’s request, we immediately send a driver who can proficiently speak all languages – such as English, Polish, Deutsch, Urdu, Punjabi and Tamil (subject to availability).</p>
<h3>24/7 SERVICE TO FACILITATE OUR VALUED CLIENTS</h3>
<p>Station Cars minicab service is available round-the-clock to facilitate our clients. Our office is always open for booking, accurate quick quotes and changing the existing jobs.</p>
<p>Now or whenever you require moving or roaming to anywhere and anyplace in London or outside London, STATIONS CARS are readily prepared and to serve our valued clients to provide our highest standard and top-quality services. If you need minicab or minicabs, then we would fully welcome you, thus call us on 020 8330 7000 or use our booking app to book online. For any online booking is made, from our office a confirmation email will be sent to our valued client along with the job reference for your convenience and future communication.</p>
<h5>SPEEDY AND RELIABLE SERVICE FOR AIRPORT TRANSFERS</h5>
<p>Station Cars offer highly reliable and entirely comfortable airport transfers minicab service to our valued clients, we feel honored to say that, they are speckled all around the London and greater London. Our fares are fully affordable as figured out to match with the budget of our varied types of valued clients, are listed as under:</p>
<ul>
<li>Popular London Airport Transfers Fare from Worcester Park KT4 (based on Saloon good enough for 4 people with 2 Luggage and 2 handbags)</li>
<li>London Heathrow Airport Terminal 1-4 from £ 28.00</li>
<li>London Heathrow Airport Terminal 5 from £ 31.00</li>
<li>Gatwick Airport from £ 31.00</li>
<li>London Stansted Airport from £ 85.00</li>
<li>London Luton Airport from £ 80.00</li>
<li>London City Airport from £ 45.00</li>
<li>Meet and Greet Service</li></ul>
<p>You can opt for our Meet and Greet Service at the airport added with the facility of our minicab driver, we mean that our driver will be holding your name board so that you can easily find him by the arrival at the airport. He will not only help you with the luggage but may also guide you to the minicabs. Hence, you can save time as well as secure yourself from any hassle while enjoying your journey back to home after jet lag.</p>
<h4>ENTIRELY SAFE AND SECURE AIRPORT DEPARTURES TO HOME OR OFFICE</h4>
<p>Our Customer Service People will help you during pre-booking your minicab for airport transfer, taking all the necessary details including the flight details as well as suggesting the proper type of minicab as per your requirements.</p>
<b>For correspondence and feedback please write us to:</b>
<p>Station Cars Ltd.<br>
7 Station Approach<br>
WORCESTER PARK<br>
KT4 7NB</p>
<p>You can also Email us for any further queries or Call us now on 020 8330 7000</p>
<p>Looking forward to welcome you and render our best service to you,</p>
<p>Customer Service Executive<br>
Station Cars</p>
</div>
		<nav id="primary_nav">
		
			<ul>
			
				<li><a href="">Home</li>
			
				<li><a href="">History</a></li>
			
				<li><a href="">Reports</a></li>
			
				<li><a href="">Track Me</a></li>
			
				<li><a href="">Contact</a></li>
			
				<li class="top"><a href="#home">Top</a></li>
			
			</ul>
		
		</nav><!--end primary_nav-->
		
		<footer>
		
			<p>Copyright &copy;2012 Ian Yates <a href="http://webdesign.tutsplus.com">Webdesigntuts+</a></p>
		
		</footer>
	
	</div><!--end wrapper-->
    
</body>
</html>
