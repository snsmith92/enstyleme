$(document).ready(function(){
  //var vendor_class = document.getElementByClassName("availability-header")[0].value;
  //var vendor_id = vendor_class.prop('id');
  
  // MONDAY
  // trigger availability form to appear
  $("#toggle-monday").click(function(){
    $("#form-monday").slideToggle("fast");
  });

  // trigger form submission and changing classes
  $("#monday-submit").click(function(){
    var vendorId = document.querySelector(".availability-header").getAttribute('id');
    $("#monday-form").trigger('submit.rails');
    $("#form-monday").hide();
  });

  // trigger form edit

  // trigger form delete
  $("#monday-button-delete").click(function(){
    $('#monday-times').load("/vendors/" + vendor_id + "/availabilities/new #monday-times");
    $('.monday-buttons').load("/vendors/" + vendor_id + "/availabilities/new #monday-times");
  });

  // $("#toggle-monday-delete").click(function(){
  //   $.ajax({
  //   type: ‘delete’,
  //   url: url,
  //   data: data,
  //   success: success,
  //   dataType: dataType
  //   });
  //   $('#monday-times').load(document.URL +  ' #monday-times');
  // });

/////////////////////////
  $("#toggle-tuesday").click(function(){
    $("#form-tuesday").slideToggle();
  });
  $("#add-break-tuesday").click(function(){
    $("#break-tuesday").slideToggle();
    $("#add-break-tuesday").hide();
  });
  $("#toggle-wednesday").click(function(){
    $("#form-wednesday").slideToggle();
  });
  $("#add-break-wednesday").click(function(){
    $("#break-wednesday").slideToggle();
    $("#add-break-wednesday").hide();
  });
  $("#toggle-thursday").click(function(){
    $("#form-thursday").slideToggle();
  });
  $("#add-break-thursday").click(function(){
    $("#break-thursday").slideToggle();
    $("#add-break-thursday").hide();
  });
  
  $("#toggle-friday").click(function(){
    $("#form-friday").slideToggle();
  });
  $("#add-break-friday").click(function(){
    $("#break-friday").slideToggle();
    $("#add-break-friday").hide();
  });
  $("#toggle-saturday").click(function(){
    $("#form-saturday").slideToggle();
  });
  $("#add-break-saturday").click(function(){
    $("#break-saturday").slideToggle();
    $("#add-break-saturday").hide();
  });
  $("#toggle-sunday").click(function(){
    $("#form-sunday").slideToggle();
  });
  $("#add-break-sunday").click(function(){
    $("#break-sunday").slideToggle();
    $("#add-break-sunday").hide();
  });
});

