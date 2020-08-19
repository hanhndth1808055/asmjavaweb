<%-- 
    Document   : index
    Created on : Aug 12, 2020, 7:02:41 PM
    Author     : LaptopAZ.vn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.fai.model.Student, java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicons -->
        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">
        <link rel="stylesheet" href="css/tingle.min.css">
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet" />
        <link href="css/main.css" rel="stylesheet" />

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
        <script src="https://kit.fontawesome.com/1ed7b1f4b0.js" crossorigin="anonymous"></script>
        <script src="js/tingle.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous"></script>

        <title>Student Page</title>
    </head>
    <body>


        <!--==========================
        Header
        ============================-->
        <header id="header" class="fixed-top">
            <div class="container-fluid">

                <div class="logo float-left">
                    <!-- Uncomment below if you prefer to use an image logo -->
                    <h1 class="text-light"><a href="#header"><span>WCDASM</span></a></h1> 
                    <!--<a href="#intro" class="scrollto"><img src="img/logo.png" alt="" class="img-fluid"></a>-->
                </div>

                <nav class="main-nav float-right d-none d-lg-block">
                    <ul>
                        <li class="active"><a href="#example">Student List</a></li>
                        <li><a href="#add-student">Add Student</a></li>
                    </ul>
                </nav><!-- .main-nav -->

            </div>
        </header><!-- #header -->

        <!--==========================
          Intro Section
        ============================-->
        <section id="intro" class="clearfix">
            <div class="container-fluid">

                <div class="intro-img">
                    <img src="img/intro-img.svg" alt="" class="img-fluid">
                </div>

                <div class="intro-info">
                    <h2>Student Management <br><span>solutions</span><br>for your center!</h2>
                    <div>
                        <a href="#example" class="btn-get-started scrollto">Student List</a>
                        <a href="#add-student" class="btn-services scrollto">Add Student</a>
                    </div>
                </div>

            </div>
        </section><!-- #intro -->
        <br>
        <br>
        <br>
        <div class="container-fluid">
            <h3 id="add-student" class="text-center">Student List</h3>

            <div class="s012">
                <form action="SearchStudent" method="GET" id="searchform">
                    <div class="inner-form">
                        <div class="main-form" id="main-form">                            
                            <div class="row second">
                                <div class="input-wrap">
                                    <div class="icon-wrap">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                        <path d="M19 3h-1V1h-2v2H8V1H6v2H5c-1.11 0-1.99.9-1.99 2L3 19c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 16H5V8h14v11zM7 10h5v5H7z"></path>
                                        </svg>
                                    </div>
                                    <div class="input-field">
                                        <label>NAME</label>
                                        <input type="text" placeholder="Enter name" name="fullName" />
                                    </div>
                                </div>
                                <div class="input-wrap">
                                    <div class="icon-wrap">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                        <path d="M17 12h-5v5h5v-5zM16 1v2H8V1H6v2H5c-1.11 0-1.99.9-1.99 2L3 19c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2h-1V1h-2zm3 18H5V8h14v11z"></path>
                                        </svg>
                                    </div>
                                    <div class="input-field">
                                        <label>CODE</label>
                                        <input type="text" placeholder="Enter Code" name="code" />
                                    </div>
                                </div>
                                <div class="input-wrap">
                                    <div class="icon-wrap">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                        <path d="M15 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm-9-2V7H4v3H1v2h3v3h2v-3h3v-2H6zm9 4c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"></path>
                                        </svg>
                                    </div>
                                    <div class="input-field">
                                        <label>GENDER</label>
                                        <div class="input-select">
                                            <select data-trigger="" name="gender">
                                                <option placeholder="" name="f" value="f">Female</option>
                                                <option name="m" value="m">Male</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="input-wrap">
                                    <div class="icon-wrap">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                        <path d="M17 12h-5v5h5v-5zM16 1v2H8V1H6v2H5c-1.11 0-1.99.9-1.99 2L3 19c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2h-1V1h-2zm3 18H5V8h14v11z"></path>
                                        </svg>
                                    </div>
                                    <div class="input-field">
                                        <label>EMAIL</label>
                                        <input type="text" placeholder="Enter Email" name="email"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row second">
                                <div class="input-wrap">
                                    <div class="icon-wrap">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                        <path d="M19 3h-1V1h-2v2H8V1H6v2H5c-1.11 0-1.99.9-1.99 2L3 19c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 16H5V8h14v11zM7 10h5v5H7z"></path>
                                        </svg>
                                    </div>
                                    <div class="input-field">
                                        <label>PHONE NUMBER</label>
                                        <input type="text" placeholder="Enter Tel" name="phoneNumber"/>
                                    </div>
                                </div>
                                <div class="input-wrap">
                                    <div class="icon-wrap">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                        <path d="M15 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm-9-2V7H4v3H1v2h3v3h2v-3h3v-2H6zm9 4c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"></path>
                                        </svg>
                                    </div>
                                    <div class="input-field">
                                        <label>HOMETOWN</label>
                                        <input type="text" placeholder="Enter Hometown" name="hometown"/>
                                    </div>
                                </div>
                                <div class="input-wrap">
                                    <div class="icon-wrap">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                        <path d="M15 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm-9-2V7H4v3H1v2h3v3h2v-3h3v-2H6zm9 4c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"></path>
                                        </svg>
                                    </div>
                                    <div class="input-field">
                                        <label>YOB <span id='range'></span></label>
                                        <!-- slider --> 
                                        <div id="slider"></div><br/>
                                        <input type="hidden" name="minyear" id="minyear" />
                                        <input type="hidden" name="maxyear" id="maxyear" />
                                    </div>

                                </div>
                                <div class="align-middle">
                                    <button class="btn-search" id="btnsearch" type="submit">Search</button>
                                    <!-- Button to Open the Modal -->
                                    <button type="button" class="btn btn-search" data-toggle="modal" data-target="#myModal" id="btn-modal" data-id="111" style="margin-left:20px;">
                                        Add New
                                    </button>

                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
<!-- The Modal -->
                                <div class="modal" id="myModal">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                                <h4 class="modal-title">Add a New Student</h4>
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            </div>

                                            <!-- Modal body -->
                                            <div class="modal-body">
                                                <form action="AddStudent" id="form-add-student" method="POST">
                                                    <div class="form-group">
                                                        <label for="pwd">Full Name</label>
                                                        <input required type="text" class="form-control" placeholder="Enter Full Name" name="fullName" id="fullName" min="4" max="100">
                                                    </div>
                                                    <div class="form-group" id="gender-form-group">
                                                        <label for="inlineRadioOptions" class="pr-3">Gender</label>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input genderSelect" type="radio" name="genderSelect" id="femaleRadio" value="f" required>
                                                            <label class="form-check-label" for="femaleRadio">Female</label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input genderSelect" type="radio" name="genderSelect" id="maleRadio" value="m">
                                                            <label class="form-check-label" for="maleRadio">Male</label>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="hometown">Hometown</label>
                                                        <input type="text" required class="form-control" placeholder="Enter Hometown" name="hometown" id="hometown">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="phoneNumber">Phone Number</label>
                                                        <input type="text" required class="form-control" placeholder="Enter Phone Number" name="phoneNumber" id="phoneNumber" pattern="(03|07|08|09|01[2|6|8|9])+([0-9]{8})\b">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="email">Email</label>
                                                        <input type="email" required class="form-control" placeholder="Enter Email" name="email" id="email">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="email">Year Of Birth</label>
                                                        <input type="number" required class="form-control" placeholder="Enter Year of Birth" name="yearOfBirth" id="yearOfBirth" min="1900" max="2007">
                                                    </div>
                                                    <button type="submit" class="btn btn-primary" name="submit" id="btn-submit-add-student">Submit</button>
                                                </form>
                                            </div>

                                            <!-- Modal footer -->
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                            </div>

                                        </div>
                                    </div>
                                </div>            
            <table id="example" class="display">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Code</th>
                        <th>Full Name</th>
                        <th>Gender</th>
                        <th>Hometown</th>
                        <th>Phone Number</th>
                        <th>Email</th>
                        <th>Year Of Birth</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>ID</th>
                        <th>Code</th>
                        <th>Full Name</th>
                        <th>Gender</th>
                        <th>Hometown</th>
                        <th>Phone Number</th>
                        <th>Email</th>
                        <th>Year Of Birth</th>
                        <th>Action</th>
                    </tr>
                </tfoot>
            </table>
        </div>

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

    <script src="lib/jquery/jquery-migrate.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/mobile-nav/mobile-nav.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/isotope/isotope.pkgd.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>
    <!-- Contact Form JavaScript File -->
    <script src="contactform/contactform.js"></script>

    <!-- Template Main Javascript File -->
    <script src="js/main.js"></script>
    <script src="js/extention/choices.js"></script>
    <script>
        const choices = new Choices('[data-trigger]',
                {
                    searchEnabled: false,
                    itemSelectText: '',
                });

    </script>
    <script src="js/extention/flatpickr.js"></script>
    <script>
        flatpickr(".datepicker",
                {
                    dateFormat: "m/d/y"
                });
        var btnTypes = document.querySelectorAll('.travel-type-wrap .item')
        for (let i = 0; i < btnTypes.length; i++)
        {
            btnTypes[i].addEventListener('click', function ()
            {
                for (let i = 0; i < btnTypes.length; i++)
                {
                    btnTypes[i].classList.remove('active')
                }
                btnTypes[i].classList.add('active')
            })
        }

    </script>
    <script type="text/javascript" >
        var serializeForm = function (form) {
            var obj = {};
            var formData = new FormData(form);
            for (var key of formData.keys()) {
                obj[key] = formData.get(key);
            }
            return obj;
        };
        function deleteStudent(id) {

// instanciate new modal
            var modal = new tingle.modal({
                footer: true,
                stickyFooter: false,
                closeMethods: ['overlay', 'button', 'escape'],
                closeLabel: "Close",
                cssClass: ['custom-class-1', 'custom-class-2'],
                onOpen: function () {
                    console.log('modal open');
                },
                onClose: function () {
                    console.log('modal closed');
                },
                beforeClose: function () {
                    // here's goes some logic
                    // e.g. save content before closing the modal
                    return true; // close the modal
                    return false; // nothing happens
                }
            });

// set content
            modal.setContent('<div style="font-size:23px;">Are you sure you want to remove this student?</div>');

// add a button
            modal.addFooterBtn('Cancel', 'tingle-btn btn-primary', function () {
                // here goes some logic
                modal.close();
            });

// add another button
            modal.addFooterBtn('Confirm', 'tingle-btn btn-danger', function () {
                fetch('/wcdasm/DeleteStudent?id=' + id, {
                    method: 'GET'
                }).then(function (response) {
                    if (response.ok) {
                        return response;
                    }
                    return Promise.reject(response);
                }).then(function (data) {
                    console.log(data);
                    $("#example").DataTable({
                        "sScrollX": "100%",
                        "paging": true,
                        "ordering": true,
                        "filter": false,
                        "destroy": true,
                        "orderMulti": false,
                        "serverSide": true,
                        "Processing": true,
                        "bInfo": false,
                        "bFilter": false,
                        "bLengthChange": false,
                        "columnDefs": [
                            {"width": "5%", "targets": [0]}
                        ],
                        "ajax":
                                {
                                    "url": "StudentListAjax",
                                    "type": "GET",
                                    "dataType": "JSON"
                                }
                    });
                }).catch(function (error) {
                    console.warn(error);
                });
                modal.close();
            });

// open modal
            modal.open();
        }

        $(document).ready(function () {
            $("#slider").slider({
                range: true,
                min: 1900,
                max: 2007,
                values: [1900, 2007],
                slide: function (event, ui) {

                    // Get values
                    var min = ui.values[0];
                    var max = ui.values[1];
                    $('#range').text(min + ' - ' + max);
                    $('#minyear').val(min);
                    $('#maxyear').val(max);
                }
            });
            $("#searchform").submit(function (e) {

                e.preventDefault(); // avoid to execute the actual submit of the form.

                var form = $(this);
                var url = form.attr('action');

                $.ajax({
                    type: "POST",
                    url: url,
                    data: form.serialize(), // serializes the form's elements.
                    success: function (data)
                    {
                        console.log(data); // show response from the php script.
                        $("#example").DataTable({
                            destroy: true,
                            data: JSON.parse(data)
                        });
                    }
                });
            });
//            $("#btnsearch").click(function () {
////                                     AJAX request
//                $.ajax({
//                    url: 'SearchStudent',
//                    type: 'get',
//                    data: {min: min, max: max},
//                    success: function (response) {
//                        console.log(response);
////                             Updating table data
////                            $('#emp_table tr:not(:first)').remove();
////                            $('#emp_table').append(response);
//                    }
//                });
//                
//            });

            $("#example").DataTable({
                "paging": true,
                "ordering": true,
                "filter": false,
                "destroy": true,
                "orderMulti": false,
                "serverSide": true,
                "Processing": true,
                "bInfo": false,
                "bFilter": false,
                "bLengthChange": false,
                "columnDefs": [
                    {"width": "5%", "targets": [0]}
                ],
                "ajax":
                        {
                            "url": "StudentListAjax",
                            "type": "GET",
                            "dataType": "JSON"
                        }
            });
//            $("#btn-modal").click(function (event) {
//                event.preventDefault();
//                console.log($(this));
//            });

            $("#form-add-student").submit(function (e) {
                e.preventDefault();
                var selValueByClass = $(".genderSelect:checked").val();
                $("#gender-form-group").append('<input name="gender" hidden="true" id="gender" value="' + selValueByClass + '">');

                console.log(selValueByClass);
                var post_url = $(this).attr("action"); //get form action url
                var request_method = $(this).attr("method"); //get form GET/POST method
                var form_data = $(this).serialize(); //Encode form elements for submission

                $.ajax({
                    url: post_url,
                    type: request_method,
                    data: form_data
                }).done(function (response) { //
                    $("#example").DataTable({
                        "paging": true,
                        "ordering": true,
                        "filter": false,
                        "destroy": true,
                        "orderMulti": false,
                        "serverSide": true,
                        "Processing": true,
                        "bInfo": false,
                        "bFilter": false,
                        "bLengthChange": false,
                        "columnDefs": [
                            {"width": "5%", "targets": [0]}
                        ],
                        "ajax":
                                {
                                    "url": "StudentListAjax",
                                    "type": "GET",
                                    "dataType": "JSON"
                                }
                    });
                    $('.modal').modal('hide');
                    // creating new click event for save button
                    $(".delete").click(function (event) {
                        event.preventDefault();
                        var id = +this.dataId;
                        $.ajax({
                            url: "DeleteStudent",
                            type: "post",
                            data: {
                                id: id,
                            },
                            success: function (data) {
                                alert(data); // alerts the response from jsp
                                location.reload();
                            }
                        });
                    });
                });
            });
        });
    </script>
</html>
