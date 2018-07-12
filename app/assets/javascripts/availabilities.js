$(document).ready(function() {
  var vendorId = document.querySelector(".availability-header").getAttribute('id');
  $.get("/vendors/" + vendorId + "/availabilities").success( function( data ) {
    var htmlString = "";
    $.each(data, function(index,  availability) {
      if (availability.day === 0) {
        day = "Mondays" 
      } else if (availability.day === 1) {
        day = "Tuesdays"
      } else if (availability.day === 2) {
        day = "Wednesdays"
      } else if (availability.day === 3) {
        day = "Thursdays"
      } else if (availability.day === 4) {
        day = "Fridays"
      } else if (availability.day === 5) {
        day = "Saturdays"
      } else  {
        day = "Sundays"
      };
   
      var liElement = '<li><div class="view"><label> &nbsp; &nbsp;' + day + ": " +
         availability.day_start + ' to ' + availability.day_end +
         '</label></div></li>';
        htmlString += liElement;
    });
    var ulAvailability = $('.availability-list');
    ulAvailability.html(htmlString);
  });
});

$(document).ready(function(){
  // MONDAY
  // trigger availability form to appear
  $("#toggle-monday").click(function(){
    $("#form-monday").slideToggle("fast");
  });

  // trigger form submission and changing classes
  $("#monday-submit").click(function(){
    var vendorId = document.querySelector(".availability-header").getAttribute('id');
    //$("#monday-form").trigger('submit.rails');
    $("#form-monday").hide();
    $("#monday-row").hide();
  });

/////////////////////////
  // TUESDAY
  // trigger availability form to appear
  $("#toggle-tuesday").click(function(){
    $("#form-tuesday").slideToggle("fast");
  });

  // trigger form submission and changing classes
  $("#tuesday-submit").click(function(){
    var vendorId = document.querySelector(".availability-header").getAttribute('id');
    //$("#monday-form").trigger('submit.rails');
    $("#form-tuesday").hide();
    $("#tuesday-row").hide();
  });

/////////////////////////
  // WEDNESDAY
  // trigger availability form to appear
  $("#toggle-wednesday").click(function(){
    $("#form-wednesday").slideToggle("fast");
  });

  // trigger form submission and changing classes
  $("#wednesday-submit").click(function(){
    var vendorId = document.querySelector(".availability-header").getAttribute('id');
    //$("#monday-form").trigger('submit.rails');
    $("#form-wednesday").hide();
    $("#wednesday-row").hide();
  });

/////////////////////////
  // THURSDAY
  // trigger availability form to appear
  $("#toggle-thursday").click(function(){
    $("#form-thursday").slideToggle("fast");
  });

  // trigger form submission and changing classes
  $("#thursday-submit").click(function(){
    var vendorId = document.querySelector(".availability-header").getAttribute('id');
    //$("#monday-form").trigger('submit.rails');
    $("#form-thursday").hide();
    $("#thursday-row").hide();
  });
  
/////////////////////////
  // FRIDAY
  // trigger availability form to appear
  $("#toggle-friday").click(function(){
    $("#form-friday").slideToggle("fast");
  });

  // trigger form submission and changing classes
  $("#friday-submit").click(function(){
    var vendorId = document.querySelector(".availability-header").getAttribute('id');
    //$("#monday-form").trigger('submit.rails');
    $("#form-friday").hide();
    $("#friday-row").hide();
  });

/////////////////////////
  // SATURDAY
  // trigger availability form to appear
  $("#toggle-saturday").click(function(){
    $("#form-saturday").slideToggle("fast");
  });

  // trigger form submission and changing classes
  $("#saturday-submit").click(function(){
    var vendorId = document.querySelector(".availability-header").getAttribute('id');
    //$("#monday-form").trigger('submit.rails');
    $("#form-saturday").hide();
    $("#saturday-row").hide();
  });

/////////////////////////
  // SUNDAY
  // trigger availability form to appear
  $("#toggle-sunday").click(function(){
    $("#form-sunday").slideToggle("fast");
  });

  // trigger form submission and changing classes
  $("#sunday-submit").click(function(){
    var vendorId = document.querySelector(".availability-header").getAttribute('id');
    //$("#monday-form").trigger('submit.rails');
    $("#form-sunday").hide();
    $("#sunday-row").hide();
  });
});

