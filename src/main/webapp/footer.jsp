<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<footer class="footer">

<style>

.footer {
	background-color: #1a1a2e;
	color: #fff;
	padding: 10px 0;
	width: 100vw;
	border-radius: 20px;
	position: relative;
	bottom: 0;
	top: 110vh;
	height: auto;
}

.footer .container-footer {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-wrap: wrap;
	padding: 10px;
	height: 100%;
	width: 100%;
}

.footer-content {
	display: flex;
	gap: 120px;
	flex: 1;
	height: 100%;
	width: 100%;
	align-items: center;
	justify-content: center; 
}

.quick-links ul {
	list-style: none;
	padding-left: 0;
}

.quick-links a {
	color: gray;
	text-decoration: none;
	transition: color 0.3s ease;
}

.quick-links a:hover {
	color: #ffcc29;
}

.additional-info p {
	font-size: 14px;
}

/* Copyright section */
.footer .copyright {
	margin-top: 20px;
	text-align: center;
	font-size: 14px;
	flex-basis: 100%;
}
</style>
	<div class="container-footer">
		<div class="footer-content">
			<div class="quick-links">
				<h3>Quick Links</h3>
				<ul>
					<li><a href="#">About Us</a></li>
					<li><a href="#">Contact Us</a></li>
					<li><a href="#">Terms and Conditions</a></li>
					<li><a href="#">Privacy Policy</a></li>
				</ul>
			</div>
			<div class="additional-info">
				<h3>Additional Information</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
			</div>
		</div>
		<div class="copyright">
			<p>&copy; 2023 Job Portal. All rights reserved.</p>
		</div>
	</div>
</footer>
