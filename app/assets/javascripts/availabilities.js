$(document).ready(function() {
  var vendorId = document.querySelector(".availability-header").getAttribute('id');
  $.get("/vendors/" + vendorId + "/availabilities").success( function( data ) {
    $.each(data, function(index,  availability) {
      if (availability.day === 0) {
        console.log(data);
        var liElement =
        moment(availability.day_start).format('h:mm a') + ' to ' + moment(availability.day_end).format('h:mm a');
        var ulAvailability = $('.monday-availability-time');
        ulAvailability.html(liElement);
      };
    });   
  });
});

$(document).ready(function(){
  // MONDAY
  // trigger availability form to appear
  $("#toggle-monday").click(function(){
    $("#form-monday").slideToggle("fast");
  });

  // trigger form submission and changing classes
  $("#monday-submit").click(function(e){
    e.preventDefault();
    
    var startTimeFieldMon = document.getElementById('availability_day_start_5i');
    var startTimeMon = startTimeFieldMon.options[startTimeFieldMon.selectedIndex].value;
    var endTimeFieldMon = document.getElementById('availability_day_end_5i'); 
    var endTimeMon = endTimeFieldMon.options[endTimeFieldMon.selectedIndex].value;
    var dayMon = document.getElementsByClassName('monday-day')[0].value;
    
    var payloadMonday = {
      availability: {
        day: dayMon,
        day_start: startTimeMon,
        day_end: endTimeMon,
      }
    };

    var vendorId = document.querySelector(".availability-header").getAttribute('id');
    var postUrl = "/vendors/" + vendorId + "/availabilities" ;
    
    $.post(postUrl, payloadMonday).success(function(data) {
      console.log(data);
    });
  });


  // $("#monday-submit").click(function(){
  //   var vendorId = document.querySelector(".availability-header").getAttribute('id');
  //   //$("#monday-form").trigger('submit.rails');
  //   $("#form-monday").hide();
  //   // $("#monday-row").hide();
  // });

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

