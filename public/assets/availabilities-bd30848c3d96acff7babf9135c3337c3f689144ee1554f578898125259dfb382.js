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

    if($('#close-availability-monday').hasClass('active')){
      var availabilityIdMon = $("#close-availability-monday").children("input").prop('id');
      var availabilityIdIntMon = parseInt(availabilityIdMon);
      var vendorId = document.querySelector(".availability-new-page").getAttribute('id'); 
      var vendorIdInt = parseInt(vendorId);

      if (isNaN(availabilityIdIntMon) === false) {
        $.ajax({
            type: 'DELETE',
            url: '/vendors/' + vendorIdInt + '/availabilities/' + availabilityIdIntMon + '/'
        });
      }
    }

    if($('#close-availability-tuesday').hasClass('active')){
      var availabilityIdTue = $("#close-availability-tuesday").children("input").prop('id');
      var availabilityIdIntTue = parseInt(availabilityIdTue);
      var vendorId = document.querySelector(".availability-new-page").getAttribute('id'); 
      var vendorIdInt = parseInt(vendorId);

      if (isNaN(availabilityIdIntTue) === false) {
        $.ajax({
          type: 'DELETE',
          url: '/vendors/' + vendorIdInt + '/availabilities/' + availabilityIdIntTue + '/'
      });
      }
    }

    if($('#close-availability-wednesday').hasClass('active')){
      var availabilityIdWed = $("#close-availability-wednesday").children("input").prop('id');
      var availabilityIdIntWed = parseInt(availabilityIdWed);
      var vendorId = document.querySelector(".availability-new-page").getAttribute('id'); 
      var vendorIdInt = parseInt(vendorId);

      if (isNaN(availabilityIdIntWed) === false) {
        $.ajax({
          type: 'DELETE',
          url: '/vendors/' + vendorIdInt + '/availabilities/' + availabilityIdIntWed + '/'
      });
      }
    }

    if($('#close-availability-thursday').hasClass('active')){
      var availabilityIdThurs= $("#close-availability-thursday").children("input").prop('id');
      var availabilityIdIntThurs = parseInt(availabilityIdThurs);
      var vendorId = document.querySelector(".availability-new-page").getAttribute('id'); 
      var vendorIdInt = parseInt(vendorId);

      if (isNaN(availabilityIdIntThurs) === false) {
        $.ajax({
          type: 'DELETE',
          url: '/vendors/' + vendorIdInt + '/availabilities/' + availabilityIdIntThurs + '/'
      });
      }
    }

    if($('#close-availability-friday').hasClass('active')){
      var availabilityIdFri= $("#close-availability-friday").children("input").prop('id');
      var availabilityIdIntFri = parseInt(availabilityIdFri);
      var vendorId = document.querySelector(".availability-new-page").getAttribute('id'); 
      var vendorIdInt = parseInt(vendorId);

      if (isNaN(availabilityIdIntFri) === false) {
        $.ajax({
          type: 'DELETE',
          url: '/vendors/' + vendorIdInt + '/availabilities/' + availabilityIdIntFri + '/'
      });
      }
    }

    if($('#close-availability-saturday').hasClass('active')){
      var availabilityIdSat= $("#close-availability-saturday").children("input").prop('id');
      var availabilityIdIntSat = parseInt(availabilityIdSat);
      var vendorId = document.querySelector(".availability-new-page").getAttribute('id'); 
      var vendorIdInt = parseInt(vendorId);

      if (isNaN(availabilityIdIntSat) === false) {
        $.ajax({
          type: 'DELETE',
          url: '/vendors/' + vendorIdInt + '/availabilities/' + availabilityIdIntSat + '/'
      });
      }
    }


    if($('#close-availability-sunday').hasClass('active')){
      var availabilityIdSun= $("#close-availability-sunday").children("input").prop('id');
      var availabilityIdIntSun = parseInt(availabilityIdSun);
      var vendorId = document.querySelector(".availability-new-page").getAttribute('id'); 
      var vendorIdInt = parseInt(vendorId);

      if (isNaN(availabilityIdIntSun) === false) {
        $.ajax({
          type: 'DELETE',
          url: '/vendors/' + vendorIdInt + '/availabilities/' + availabilityIdIntSun + '/'
      });
      }
    }


    $('#save-button').text('Saved!');
    $('#save-button').removeClass('btn-outline-success');
    $('#save-button').addClass('btn-success')

  });

});

