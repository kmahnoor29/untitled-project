<%--
  Created by IntelliJ IDEA.
  User: mano
  Date: 1/27/2020
  Time: 7:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>CD &mdash;Service</title>



  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="home/https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Oswald:400,700">
  <link rel="stylesheet" href="home/fonts/icomoon/style.css">
  <link rel="stylesheet" href="home/css/bootstrap.min.css">
  <link rel="stylesheet" href="home/css/magnific-popup.css">
  <link rel="stylesheet" href="home/css/jquery-ui.css">
  <link rel="stylesheet" href="home/css/owl.carousel.min.css">
  <link rel="stylesheet" href="home/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="home/css/bootstrap-datepicker.css">
  <link rel="stylesheet" href="home/css/mediaelementplayer.css">
  <link rel="stylesheet" href="home/css/animate.css">
  <link rel="stylesheet" href="home/fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" href="home/css/fl-bigmug-line.css">
  <script src="home/js/jquery-3.3.1.min.js"></script>
  <link rel="stylesheet" href="home/css/aos.css">
  <link rel="stylesheet" href="home/css/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <link rel="stylesheet" href="home//https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
    .rating {
      float:left;
      width:300px;
    }
    .rating span { float:right; position:relative; }
    .rating span input {
      position:absolute;
      top:0px;
      left:0px;
      opacity:0;
    }
    .rating span label {
      display:inline-block;
      width:30px;
      height:30px;
      text-align:center;
      color:#FFF;
      background:#ccc;
      font-size:30px;
      margin-right:2px;
      line-height:30px;
      border-radius:50%;
      -webkit-border-radius:50%;
    }
    .rating span:hover ~ span label,
    .rating span:hover label,
    .rating span.checked label,
    .rating span.checked ~ span label {
      background:#F90;
      color:#FFF;
    }

    #sologan {

      font-size:10px;

    }
    #foot {
      color: #FFF;
    }


    * {
      box-sizing: border-box;
    }

    /* Style the search field */
    form.example input[type=text] {
      padding: 10px;
      font-size: 17px;
      border: 1px solid grey;
      float: left;
      width: 80%;
      background: #f1f1f1;
    }

    /* Style the submit button */
    form.example button {
      float: left;
      width: 20%;
      padding: 10px;
      height:8.5%;
      background: #008B8B;
      color: white;
      font-size: 17px;
      border: 1px solid grey;
      border-left: none; /* Prevent double borders */
      cursor: pointer;
    }

    form.example button:hover {
      background: #0b7dda;
    }

    /* Clear floats */
    form.example::after {
      content: "";
      clear: both;
      display: table;
    }
  </style>

</head>
<body>



<div class="site-wrap">
  <div class="site-navbar mt-4">
    <div class="container py-1">
      <div class="row align-items-center">
        <div class="col-8 col-md-8 col-lg-4">
          <h1 class="mb-0"><a href="index.html" class="text-white h2 mb-0"><strong>CD Service<span class="text-primary">.</span>

            <br>
            <div>

              <p id="sologan">
                Customize Darzi Service

              </p></div>
          </strong></a></h1>
        </div>
        <div class="col-4 col-md-4 col-lg-8">
          <nav class="site-navigation text-right text-md-right" role="navigation">
            <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>
            <ul class="site-menu js-clone-nav d-none d-lg-block">
              <li>
                <a href="home.jsp">Home</a>
              </li>
              <li class="active"><a href="about.html">About</a></li>
              <li><a href="profiles.jsp">Log In</a></li>
              <li><a href="#">Sign Up As</a>
                <ul class="site-menu js-clone-nav d-none d-lg-block">

                  <li><a href="registrationCustomer.jsp">Customer</a></li>
                  <li><a href="registrationProducer.jsp">Producer</a></li>
                  </ul>
              </li>

            </ul>
          </nav>
        </div>

      </div>
    </div>
  </div>
</div>
<div class="site-mobile-menu">
  <div class="site-mobile-menu-header">
    <div class="site-mobile-menu-close mt-3">
      <span class="icon-close2 js-menu-toggle"></span>
    </div>
  </div>
  <div class="site-mobile-menu-body"></div>
</div> <!-- .site-mobile-menu -->

<div class="site-blocks-cover inner-page-cover overlay" style="background-image: url('home/images/tailoring.jpg');"
     data-aos="fade" data-stellar-background-ratio="0.5" data-aos="fade">
  <div class="container">
    <div class="row align-items-center justify-content-center">
      <div class="col-md-7 text-center" data-aos="fade-up" data-aos-delay="400">
        <h2 style="font-family: Franklin Gothic Medium, Arial Narrow, Arial, sans-serif;"
                class="text-white">
          Customize Darzi Service</h2>
        <p style=" font-family: Franklin Gothic Medium, Arial Narrow, Arial, sans-serif , cursive;  ">
          <span class="text-primary">
          Pakistan's first ever online freelance sewing and stiching website.
        </span></p>

        <form class="example">
          <input type="text"  pattern="^[a-zA-Z ]*$" title="Invalid input" placeholder="Search.." id="searchtxt" name="search">
          <button type="submit"><i class="fa fa-search"></i></button>
        </form>

      </div>
    </div>
  </div>
</div>
<div class="site-section">
  <div class="container">
    <div class="row">
      <div class="col-lg-6">
        <img src="home/images/tailor.jpg" alt="" class="img-fluid">
      </div>
      <div class="col-lg-6">
        <div class="site-section-heading text-center mb-5 w-border col-md-6 mx-auto">
          <h2 class="mb-5">Office</h2>
          <p>
            There is no need to go to the office because you can able to visit us just by clicking the contact us option in the menu-bar, send queries and get information.

          </p>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="site-section">
  <div class="container" data-aos="fade-up">
    <div class="row">
      <div class="site-section-heading text-center mb-5 w-border col-md-6 mx-auto">
        <h2 class="mb-5">Team</h2>
        <p>
          We warmly welcome you guys to visit Pakistan's first ever freelance tailor/sewing website. You are free to visit the website, Post a order or get the order, Thankyou!
        </p>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
        <div class="team-member">

          <img src="home/images/person_2.jpg" alt="Image" class="img-fluid">

          <div class="text">

            <h2 class="mb-2 font-weight-light h4">Mahnoor Khan</h2>
            <span class="d-block mb-2 text-white-opacity-05">Co Founder</span>
            <p class="mb-4">I'm Co founder of this website also a Computer Scientist.Happy to see you here!</p>

          </div>

        </div>
      </div>

      <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
        <div class="team-member">

          <img src="home/images/person_1.jpg" alt="Image" class="img-fluid">

          <div class="text">

            <h2 class="mb-2 font-weight-light h4">Tahira Nawaz</h2>
            <span class="d-block mb-2 text-white-opacity-05">Co Founder</span>
            <p class="mb-4">One of the co founder of CD services.</p>

          </div>

        </div>
      </div>

      <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
        <div class="team-member">

          <img src="home/images/person_3.jpg" alt="Image" class="img-fluid">

          <div class="text">

            <h2 class="mb-2 font-weight-light h4">Hina Zakir</h2>
            <span class="d-block mb-2 text-white-opacity-05">Co Founder</span>
            <p class="mb-4">One of the co founder of CD services.</p>

          </div>

        </div>
      </div>




    </div>
  </div>
</div>


<div class="site-section">
  <div class="container">
    <div class="row">
      <div class="site-section-heading text-center mb-5 w-border col-md-6 mx-auto" data-aos="fade-up">
        <h2 class="mb-5">Best Producers</h2>
        <p>As the business is growing we are providing many great opportunities , we like to share some of the best projects done by our producers to encourage those who put efforts and yes sure they will get rewarded.</p>
      </div>
    </div>

    <div class="site-block-retro d-block d-md-flex">
      <a href="#" class="col1 unit-9 no-height" data-aos="fade-up" data-aos-delay="100">
        <div class="image" style="background-image: url('images/'); background-image: url('home/images/a05124e29fc7446069a476b994cd9797.jpg'); "></div>
        <div class="unit-9-content">
          <h2>Trouser Shirt  </h2>
          <h3>By Rehan Ahmed</h3>
          <span>Earned:$600</span>
          <span>Completed Projects:5</span>
          <script src="jquery-3.3.1.min.js"></script>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
                        <span class="rating">
                            <span><input type="radio" name="rating" id="str5" value="5"><label for="str5"></label></span>
                            <span><input type="radio" name="rating" id="str4" value="4"><label for="str4"></label></span>
                            <span><input type="radio" name="rating" id="str3" value="3"><label for="str3"></label></span>
                            <span><input type="radio" name="rating" id="str2" value="2"><label for="str2"></label></span>
                            <span><input type="radio" name="rating" id="str1" value="1"><label for="str1"></label></span>

                        </span>
                        <span>
                            <span><input type="button" name="View Profile" value="Profile"></span>
                        </span>
        </div>
      </a>
      <div class="col2 ml-auto">
        <a href="#" class="col2-row1 unit-9 no-height" data-aos="fade-up" data-aos-delay="200">
          <div class="image" style="background-image: url('images/'); background-image: url('home/images/Kayseria-Best-Winter-Dresses-Collection-2018-for-Women-Little-Girls-8.jpg'); "></div>
          <div class="unit-9-content">
            <h2>Beautifully stiched kurta</h2>
            <h3>By Sadiya Kanwal</h3>
            <span>Earned:$290</span>
            <span>Completed Projects:29</span>

            <div class="rating">
              <span><input type="radio" name="rating" id="str5" value="5"><label for="str5"></label></span>
              <span><input type="radio" name="rating" id="str4" value="4"><label for="str4"></label></span>
              <span><input type="radio" name="rating" id="str3" value="3"><label for="str3"></label></span>
              <span><input type="radio" name="rating" id="str2" value="2"><label for="str2"></label></span>
              <span><input type="radio" name="rating" id="str1" value="1"><label for="str1"></label></span>
            </div>
                            <span>
                                <span><input type="button" name="View Profile" value="Profile"></span>
                            </span>
          </div>
        </a>
        <a href="#" class="col2-row2 unit-9 no-height" data-aos="fade-up" data-aos-delay="300">
          <div class="image" style="background-image: url('images/'); background-image: url('home/images/89ed44367afdb60772ed1adf956648a4.jpg'); "></div>
          <div class="unit-9-content">
            <h2>Simple  desi shalwar kameez</h2>
            <h3>By Azam Shiekh</h3>
            <span>Earned:$1,290</span>
            <span>Completed Projects:2</span>

            <div class="rating">
              <span><input type="radio" name="rating" id="str5" value="5"><label for="str5"></label></span>
              <span><input type="radio" name="rating" id="str4" value="4"><label for="str4"></label></span>
              <span><input type="radio" name="rating" id="str3" value="3"><label for="str3"></label></span>
              <span><input type="radio" name="rating" id="str2" value="2"><label for="str2"></label></span>
              <span><input type="radio" name="rating" id="str1" value="1"><label for="str1"></label></span>
            </div>
                            <span>
                                <span><input type="button" name="View Profile" value="Profile"></span>
                            </span>
          </div>
        </a>
      </div>
    </div>

  </div>
</div>

<div id="foot">
  <footer class="site-footer">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="mb-5">
            <h3 class="footer-heading mb-4">About CD Service</h3>
            <p>This website is for everyone who is interested in getting things done at their ease,You can get hand-made clothing with good quality at a very resonable price. It is also a community service website that provide opportuinity for the people who are most likely are consumers can post projects get the benefit because of no criteria of education particularly based on the skills. The more get the more you earn.</p>
          </div>
          <div class="mb-5">
            <h3 class="footer-heading mb-4">Subscribe</h3>
            <form action="#" method="post" class="site-block-subscribe">
              <div class="input-group mb-3">
                <input type="text" class="form-control border-secondary bg-transparent" placeholder="Enter your email"
                       aria-label="Enter Email" aria-describedby="button-addon2">
                <div class="input-group-append">
                  <button class="btn btn-primary rounded-top-right-0" type="button" id="button-addon2">Subscribe</button>
                </div>
              </div>
            </form>
          </div>
        </div>


      </div>
    </div>
  </footer>
</div>


<script src="home/js/jquery-3.3.1.min.js"></script>
<script src="home/js/jquery-migrate-3.0.1.min.js"></script>
<script src="home/js/jquery-ui.js"></script>
<script src="home/js/popper.min.js"></script>
<script src="home/js/bootstrap.min.js"></script>
<script src="home/js/owl.carousel.min.js"></script>
<script src="home/js/mediaelement-and-player.min.js"></script>
<script src="home/js/jquery.stellar.min.js"></script>
<script src="home/js/jquery.countdown.min.js"></script>
<script src="home/js/jquery.magnific-popup.min.js"></script>
<script src="home/js/bootstrap-datepicker.min.js"></script>
<script src="home/js/aos.js"></script>
<script src="home/js/circleaudioplayer.js"></script>
<script src="home/js/main.js"></script>
<script>
  $(document).ready(function () {
    // Check Radio-box
    $(".rating input:radio").attr("checked", false);

    $('.rating input').click(function () {
      $(".rating span").removeClass('checked');
      $(this).parent().addClass('checked');
    });

    $('input:radio').change(
            function () {
              var userRating = this.value;
              alert(userRating);
            });
  });


  (function ($) {
    $.fn.countTo = function (options) {
      options = options || {};

      return $(this).each(function () {
        // set options for current element
        var settings = $.extend({}, $.fn.countTo.defaults, {
          from:            $(this).data('from'),
          to:              $(this).data('to'),
          speed:           $(this).data('speed'),
          refreshInterval: $(this).data('refresh-interval'),
          decimals:        $(this).data('decimals')
        }, options);

        // how many times to update the value, and how much to increment the value on each update
        var loops = Math.ceil(settings.speed / settings.refreshInterval),
                increment = (settings.to - settings.from) / loops;

        // references & variables that will change with each update
        var self = this,
                $self = $(this),
                loopCount = 0,
                value = settings.from,
                data = $self.data('countTo') || {};

        $self.data('countTo', data);

        // if an existing interval can be found, clear it first
        if (data.interval) {
          clearInterval(data.interval);
        }
        data.interval = setInterval(updateTimer, settings.refreshInterval);

        // initialize the element with the starting value
        render(value);

        function updateTimer() {
          value += increment;
          loopCount++;

          render(value);

          if (typeof(settings.onUpdate) == 'function') {
            settings.onUpdate.call(self, value);
          }

          if (loopCount >= loops) {
            // remove the interval
            $self.removeData('countTo');
            clearInterval(data.interval);
            value = settings.to;

            if (typeof(settings.onComplete) == 'function') {
              settings.onComplete.call(self, value);
            }
          }
        }

        function render(value) {
          var formattedValue = settings.formatter.call(self, value, settings);
          $self.html(formattedValue);
        }
      });
    };

    $.fn.countTo.defaults = {
      from: 0,               // the number the element should start at
      to: 0,                 // the number the element should end at
      speed: 1000,           // how long it should take to count between the target numbers
      refreshInterval: 100,  // how often the element should be updated
      decimals: 0,           // the number of decimal places to show
      formatter: formatter,  // handler for formatting the value before rendering
      onUpdate: null,        // callback method for every time the element is updated
      onComplete: null       // callback method for when the element finishes updating
    };

    function formatter(value, settings) {
      return value.toFixed(settings.decimals);
    }
  }(jQuery));

  jQuery(function ($) {
    // custom formatting example
    $('.count-number').data('countToOptions', {
      formatter: function (value, options) {
        return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
      }
    });

    // start all the timers
    $('.timer').each(count);

    function count(options) {
      var $this = $(this);
      options = $.extend({}, options || {}, $this.data('countToOptions') || {});
      $this.countTo(options);
    }
  });
</script>




</body>
</html>