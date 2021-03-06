<!--START SCROLL TOP BUTTON -->
	<a class="scrollToTop" href="#"> <i class="fa fa-angle-up"></i>
	</a>
	<!-- END SCROLL TOP BUTTON -->

	<!-- Start header  -->
	
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12">
					<div class="mu-header-area">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
								<div class="mu-header-top-left">
									<div class="mu-top-email">
										<i class="fa fa-envelope"></i> <span>techie.alekh@yahoo.com</span>
									</div>
									<div class="mu-top-phone">
										<i class="fa fa-phone"></i> <span>(+91) 9727035970</span>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
								<div class="mu-header-top-right">
									<nav>
										<ul class="mu-top-social-nav">
											<li><a href="www.facebook.com"><span
													class="fa fa-facebook"></span></a></li>
											<li><a href="www.twitter.com"><span
													class="fa fa-twitter"></span></a></li>
											<li><a href="www.google.com"><span
													class="fa fa-google-plus"></span></a></li>
											<li><a href="www.linkedin.com"><span
													class="fa fa-linkedin"></span></a></li>
											<li><a href="www.youtube.com"><span
													class="fa fa-youtube"></span></a></li>
										</ul>
									</nav>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	<!-- End header  -->
	<!-- Start menu -->
	<section id="mu-menu">
		<nav class="navbar navbar-default" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!-- LOGO -->
					<!-- TEXT BASED LOGO -->
					<a class="navbar-brand" href="index"><i
						class="fa fa-university"></i><span>ScopeLearn</span></a>
					<!-- IMG BASED LOGO  -->
					<!-- <a class="navbar-brand" href="index.html"><img src="assets/img/logo.png" alt="logo"></a> -->
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
						<li class="active"><a href="index.html">Home</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Course <span class="fa fa-angle-down"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="course.html">Course Archive</a></li>
								<li><a href="course-detail.html">Course Detail</a></li>
							</ul></li>
						<li><a href="gallery.html">Gallery</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Blog <span class="fa fa-angle-down"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="blog-archive.html">Blog Archive</a></li>
								<li><a href="blog-single.html">Blog Single</a></li>
							</ul></li>
						<li><a href="contact.html">Contact</a></li>
						<li><a href="<%=request.getContextPath()%>/login">Login</a></li>
						<li><a href="#" id="mu-search-icon"><i
								class="fa fa-search"></i></a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>
	</section>
	<!-- End menu -->

	<!-- Start search box -->
	<div id="mu-search">
		<div class="mu-search-area">
			<button class="mu-search-close">
				<span class="fa fa-close"></span>
			</button>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<form class="mu-search-form">
							<input type="search"
								placeholder="Type Your Keyword(s) & Hit Enter">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End search box -->
