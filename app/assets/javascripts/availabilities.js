$(document).ready(function() {
  var vendorId = document.querySelector(".availability-header").getAttribute('id'); 
});

$(document).ready(function(){
  // MONDAY
  // trigger availability form to appear
  $("#set-availability-monday").click(function(){
    $("#form-monday").show("fast");
  });

  $("#close-availability-monday").click(function(){
    $("#form-monday").hide("fast");
  });

  // TUESDAY
  // trigger availability form to appear
  $("#set-availability-tuesday").click(function(){
    $("#form-tuesday").show("fast");
  });

  $("#close-availability-tuesday").click(function(){
    $("#form-tuesday").hide("fast");
  });

  // WEDNESDAY
  // trigger availability form to appear
  $("#set-availability-wednesday").click(function(){
    $("#form-wednesday").show("fast");
  });

  $("#close-availability-wednesday").click(function(){
    $("#form-wednesday").hide("fast");
  });

  // THURSDAY
  // trigger availability form to appear
  $("#set-availability-thursday").click(function(){
    $("#form-thursday").show("fast");
  });

  $("#close-availability-thursday").click(function(){
    $("#form-thursday").hide("fast");
  });


  // FRIDAY
  // trigger availability form to appear
  $("#set-availability-friday").click(function(){
    $("#form-friday").show("fast");
  });

  $("#close-availability-friday").click(function(){
    $("#form-friday").hide("fast");
  });

  // SATURDAY
  // trigger availability form to appear
  $("#set-availability-saturday").click(function(){
    $("#form-saturday").show("fast");
  });

  $("#close-availability-saturday").click(function(){
    $("#form-saturday").hide("fast");
  });

  // SUNDAY
  // trigger availability form to appear
  $("#set-availability-sunday").click(function(){
    $("#form-sunday").show("fast");
  });

  $("#close-availability-sunday").click(function(){
    $("#form-sunday").hide("fast");
  });

  // trigger form submission

  $("#save-button").click(function(){
    if($('#form-monday').is(':visible')){
      $("#monday-form").trigger('submit.rails');
    }
    if($('#form-tuesday').is(':visible')){
      $("#tuesday-form").trigger('submit.rails');
    }
    if($('#form-wednesday').is(':visible')){
      $("#wednesday-form").trigger('submit.rails');
    }
    if($('#form-thursday').is(':visible')){
      $("#thursday-form").trigger('submit.rails');
    }
    if($('#form-friday').is(':visible')){
      $("#friday-form").trigger('submit.rails');
    }
    if($('#form-saturday').is(':visible')){
      $("#saturday-form").trigger('submit.rails');
    }
    if($('#form-sunday').is(':visible')){
      $("#sunday-form").trigger('submit.rails');
    }
    
  });

});

