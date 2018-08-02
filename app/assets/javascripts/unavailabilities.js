// $(document).ready(function() {
//   var vendorId = document.querySelector(".unavailability-header").getAttribute('id'); 
// });

$(document).ready(function(){
  // MONDAY
  // trigger availability form to appear
  $("#set-unavailability-monday").click(function(){
    $("#un-form-monday").show("fast");
  });

  $("#close-unavailability-monday").click(function(){
    $("#un-form-monday").hide("fast");
  });

  // TUESDAY
  // trigger availability form to appear
  $("#set-unavailability-tuesday").click(function(){
    $("#un-form-tuesday").show("fast");
  });

  $("#close-unavailability-tuesday").click(function(){
    $("#un-form-tuesday").hide("fast");
  });

  // WEDNESDAY
  // trigger availability form to appear
  $("#set-unavailability-wednesday").click(function(){
    $("#un-form-wednesday").show("fast");
  });

  $("#close-unavailability-wednesday").click(function(){
    $("#un-form-wednesday").hide("fast");
  });

  // THURSDAY
  // trigger availability form to appear
  $("#set-unavailability-thursday").click(function(){
    $("#un-form-thursday").show("fast");
  });

  $("#close-unavailability-thursday").click(function(){
    $("#un-form-thursday").hide("fast");
  });


  // FRIDAY
  // trigger availability form to appear
  $("#set-unavailability-friday").click(function(){
    $("#un-form-friday").show("fast");
  });

  $("#close-unavailability-friday").click(function(){
    $("#un-form-friday").hide("fast");
  });

  // SATURDAY
  // trigger availability form to appear
  $("#set-unavailability-saturday").click(function(){
    $("#un-form-saturday").show("fast");
  });

  $("#close-unavailability-saturday").click(function(){
    $("#un-form-saturday").hide("fast");
  });

  // SUNDAY
  // trigger availability form to appear
  $("#set-unavailability-sunday").click(function(){
    $("#un-form-sunday").show("fast");
  });

  $("#close-unavailability-sunday").click(function(){
    $("#un-form-sunday").hide("fast");
  });

  // trigger form submission

  $("#un-save-button").click(function(){
    if($('#un-form-monday').is(':visible')){
      $("#monday-form-un").trigger('submit.rails');
    }
    if($('#un-form-tuesday').is(':visible')){
      $("#tuesday-form-un").trigger('submit.rails');
    }
    if($('#un-form-wednesday').is(':visible')){
      $("#wednesday-form-un").trigger('submit.rails');
    }
    if($('#un-form-thursday').is(':visible')){
      $("#thursday-form-un").trigger('submit.rails');
    }
    if($('#un-form-friday').is(':visible')){
      $("#friday-form-un").trigger('submit.rails');
    }
    if($('#un-form-saturday').is(':visible')){
      $("#saturday-form-un").trigger('submit.rails');
    }
    if($('#un-form-sunday').is(':visible')){
      $("#sunday-form-un").trigger('submit.rails');
    }

    if($('#close-unavailability-monday').hasClass('active')){
      var availabilityIdMon = $("#close-unavailability-monday").children("input").prop('id');
      var availabilityIdIntMon = parseInt(availabilityIdMon);
      var vendorId = document.querySelector(".unavailability-new-page").getAttribute('id'); 
      var vendorIdInt = parseInt(vendorId);

      if (isNaN(availabilityIdIntMon) === false) {
        $.ajax({
            type: 'DELETE',
            url: '/vendors/' + vendorIdInt + '/unavailabilities/' + availabilityIdIntMon + '/'
        });
      }
    }

    if($('#close-unavailability-tuesday').hasClass('active')){
      var availabilityIdTue = $("#close-unavailability-tuesday").children("input").prop('id');
      var availabilityIdIntTue = parseInt(availabilityIdTue);
      var vendorId = document.querySelector(".unavailability-new-page").getAttribute('id'); 
      var vendorIdInt = parseInt(vendorId);

      if (isNaN(availabilityIdIntTue) === false) {
        $.ajax({
          type: 'DELETE',
          url: '/vendors/' + vendorIdInt + '/unavailabilities/' + availabilityIdIntTue + '/'
      });
      }
    }

    if($('#close-unavailability-wednesday').hasClass('active')){
      var availabilityIdWed = $("#close-unavailability-wednesday").children("input").prop('id');
      var availabilityIdIntWed = parseInt(availabilityIdWed);
      var vendorId = document.querySelector(".unavailability-new-page").getAttribute('id'); 
      var vendorIdInt = parseInt(vendorId);

      if (isNaN(availabilityIdIntWed) === false) {
        $.ajax({
          type: 'DELETE',
          url: '/vendors/' + vendorIdInt + '/unavailabilities/' + availabilityIdIntWed + '/'
      });
      }
    }

    if($('#close-unavailability-thursday').hasClass('active')){
      var availabilityIdThurs= $("#close-unavailability-thursday").children("input").prop('id');
      var availabilityIdIntThurs = parseInt(availabilityIdThurs);
      var vendorId = document.querySelector(".unavailability-new-page").getAttribute('id'); 
      var vendorIdInt = parseInt(vendorId);

      if (isNaN(availabilityIdIntThurs) === false) {
        $.ajax({
          type: 'DELETE',
          url: '/vendors/' + vendorIdInt + '/unavailabilities/' + availabilityIdIntThurs + '/'
      });
      }
    }

    if($('#close-unavailability-friday').hasClass('active')){
      var availabilityIdFri= $("#close-unavailability-friday").children("input").prop('id');
      var availabilityIdIntFri = parseInt(availabilityIdFri);
      var vendorId = document.querySelector(".unavailability-new-page").getAttribute('id'); 
      var vendorIdInt = parseInt(vendorId);

      if (isNaN(availabilityIdIntFri) === false) {
        $.ajax({
          type: 'DELETE',
          url: '/vendors/' + vendorIdInt + '/unavailabilities/' + availabilityIdIntFri + '/'
      });
      }
    }

    if($('#close-unavailability-saturday').hasClass('active')){
      var availabilityIdSat= $("#close-unavailability-saturday").children("input").prop('id');
      var availabilityIdIntSat = parseInt(availabilityIdSat);
      var vendorId = document.querySelector(".unavailability-new-page").getAttribute('id'); 
      var vendorIdInt = parseInt(vendorId);

      if (isNaN(availabilityIdIntSat) === false) {
        $.ajax({
          type: 'DELETE',
          url: '/vendors/' + vendorIdInt + '/unavailabilities/' + availabilityIdIntSat + '/'
      });
      }
    }


    if($('#close-unavailability-sunday').hasClass('active')){
      var availabilityIdSun= $("#close-unavailability-sunday").children("input").prop('id');
      var availabilityIdIntSun = parseInt(availabilityIdSun);
      var vendorId = document.querySelector(".unavailability-new-page").getAttribute('id'); 
      var vendorIdInt = parseInt(vendorId);

      if (isNaN(availabilityIdIntSun) === false) {
        $.ajax({
          type: 'DELETE',
          url: '/vendors/' + vendorIdInt + '/unavailabilities/' + availabilityIdIntSun + '/'
      });
      }
    }


    $('#un-save-button').text('Saved!');
    $('#un-save-button').removeClass('btn-outline-success');
    $('#un-save-button').addClass('btn-success')

  });

});

