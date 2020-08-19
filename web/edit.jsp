<%-- 
    Document   : edit
    Created on : Aug 16, 2020, 10:26:15 AM
    Author     : LaptopAZ.vn
--%>


<%@page import="com.fai.model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicons -->
        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

        <!-- Libraries CSS Files -->
        <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

        <!-- Main Stylesheet File -->
        <link href="css/style.css" rel="stylesheet">

        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css"/>

    </head>
    <body>

        <!--==========================
        Header
        ============================-->
        <header id="header" class="fixed-top">
            <div class="container">

                <div class="logo float-left">
                    <!-- Uncomment below if you prefer to use an image logo -->
                    <h1 class="text-light"><a href="#header"><span>WCDASM</span></a></h1> 
                    <!--<a href="#intro" class="scrollto"><img src="img/logo.png" alt="" class="img-fluid"></a>-->
                </div>

                <nav class="main-nav float-right d-none d-lg-block">
                    <ul>
                        <li class="active"><a href="/wcdasm#example">Student List</a></li>
                        <li><a href="/wcdasm#add-student">Add Student</a></li>
                    </ul>
                </nav><!-- .main-nav -->

            </div>
        </header><!-- #header -->

        <!--==========================
          Intro Section
        ============================-->
        <section id="intro" class="clearfix">
            <div class="container">

                <div class="intro-img">
                    <img src="img/intro-img.svg" alt="" class="img-fluid">
                </div>

                <div class="intro-info">
                    <h2>Student Management <br><span>solutions</span><br>for your center!</h2>
                    <div>
                        <a href="/wcdasm#example" class="btn-get-started scrollto">Student List</a>
                        <a href="/wcdasm#add-student" class="btn-services scrollto">Add Student</a>
                    </div>
                </div>

            </div>
        </section><!-- #intro -->
        <br>
        <br>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-2"></div>
                <div class="col-8">
                    <h3>Update Student</h1>

                        <%
                            Student student = (Student) request.getAttribute("student");
                        %>
                        <form action="EditStudent" id="form-edit-student" method="POST">
                            <div class="form-group">
                                <label for="id">ID</label>
                                <input type="text" class="form-control" placeholder="Enter ID" name="id" id="id" value="<%=student.getId()%>" readonly="readonly">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Student Code</label>
                                <input type="text" class="form-control" placeholder="Enter Student Code" name="code" id="code" value="<%=student.getCode()%>">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Full Name</label>
                                <input type="text" required min="4" max="100" class="form-control" placeholder="Enter Full Name" name="fullName" id="fullName" value="<%=student.getFullName()%>">
                            </div>
                            <div class="form-group" id="gender-form-group">
                                <label for="inlineRadioOptions" class="pr-3">Gender</label>
                                <div class="form-check form-check-inline">
                                    <input required class="form-check-input genderSelect" type="radio" name="genderSelect" id="femaleRadio" value="f" <%=student.getGender().equals("f") ? "checked" : " "%>>
                                    <label class="form-check-label" for="femaleRadio">Female</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input genderSelect" type="radio" name="genderSelect" id="maleRadio" value="m"<%=student.getGender().equals("m") ? "checked" : " "%>>
                                    <label class="form-check-label" for="maleRadio">Male</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="hometown">Hometown</label>
                                <input required type="text" class="form-control" placeholder="Enter Hometown" name="hometown" id="hometown"  value="<%=student.getHometown()%>">
                            </div>
                            <div class="form-group">
                                <label for="phoneNumber">Phone Number</label>
                                <input type="text" required pattern="(03|07|08|09|01[2|6|8|9])+([0-9]{8})\b" class="form-control" placeholder="Enter Phone Number" name="phoneNumber" id="phoneNumber" value="<%=student.getPhoneNumber()%>">
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input required type="email" class="form-control" placeholder="Enter Email" name="email" id="email" value="<%=student.getEmail()%>">
                            </div>
                            <div class="form-group">
                                <label for="email">Year Of Birth</label>
                                <input required min="1900" max="2007" type="number" class="form-control" placeholder="Enter Year of Birth" name="yearOfBirth" id="yearOfBirth"  value="<%=student.getYearOfBirth()%>">
                            </div>

                            <button type="submit" class="btn btn-primary" name="submit" id="btn-submit-add-student">Submit</button> <a type="button" class="btn btn-dark" href="/wcdasm#student-list">Back</a>
                        </form>
                </div>
                <div class="col-2"></div>
            </div>
        </div>
        <br>
        <br>
        <br>

        <!--==========================
          Footer
        ============================-->
        <footer id="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-4 col-md-6 footer-info">
                            <h3>WCDASM</h3>
                            <p>Cras fermentum odio eu feugiat lide par naso tierra. Justo eget nada terra videa magna derita valies darta donna mare fermentum iaculis eu non diam phasellus. Scelerisque felis imperdiet proin fermentum leo. Amet volutpat consequat mauris nunc congue.</p>
                        </div>

                        <div class="col-lg-2 col-md-6 footer-links">
                            <h4>Useful Links</h4>
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#">About us</a></li>
                                <li><a href="#">Services</a></li>
                                <li><a href="#">Terms of service</a></li>
                                <li><a href="#">Privacy policy</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-contact">
                            <h4>Contact Us</h4>
                            <p>
                                A108 Adam Street <br>
                                New York, NY 535022<br>
                                United States <br>
                                <strong>Phone:</strong> +1 5589 55488 55<br>
                                <strong>Email:</strong> info@example.com<br>
                            </p>

                            <div class="social-links">
                                <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
                                <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
                                <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
                            </div>

                        </div>

                        <div class="col-lg-3 col-md-6 footer-newsletter">
                            <h4>Our Newsletter</h4>
                            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna veniam enim veniam illum dolore legam minim quorum culpa amet magna export quem marada parida nodela caramase seza.</p>
                            <form action="" method="post">
                                <input type="email" name="email"><input type="submit"  value="Subscribe">
                            </form>
                        </div>

                    </div>
                </div>
            </div>

            <div class="container">
                <div class="copyright">
                    &copy; Copyright <strong>WCDASM</strong>. All Rights Reserved
                </div>
                <div class="credits">
                    <!--
                      All the links in the footer should remain intact.
                      You can delete the links only if you purchased the pro version.
                      Licensing information: https://bootstrapmade.com/license/
                      Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=NewBiz
                    -->
                    Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                </div>
            </div>
        </footer><!-- #footer -->

        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
        <!-- Uncomment below i you want to use a preloader -->
        <!-- <div id="preloader"></div> -->

    </body>
</html>
