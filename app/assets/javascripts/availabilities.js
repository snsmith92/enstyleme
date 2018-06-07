$(document).ready(function(){
  // MONDAY
  // trigger form
  $("#toggle-monday").click(function(){
    $("#form-monday").slideToggle();
  });
  // 
  $("#add-break-monday").click(function(){
    $("#break-monday").slideToggle();
    $("#add-break-monday").hide();
  });

  $("#monday-submit").click(function(){
    $("#monday-form").trigger('submit.rails');
    $("#monday-submit").hide();
    $("#monday-edit").show("fade", 1000);
    $(this).parents('tr').removeClass("grey-background");
    $(this).parents('tr').addClass("green-background");
  });

  $("#monday-edit").click(function(){
    $("#monday-edit").hide();
    $("#monday-submit").show("fade", 1000);
    $(this).parents('tr').removeClass("green-background");
    $(this).parents('tr').addClass("gray-background");
  });
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

