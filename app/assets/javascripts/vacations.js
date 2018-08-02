$(document).ready(function () {

  $('#datetimepicker1').datetimepicker({
    viewMode: 'days',  
    sideBySide: true,
    keepOpen: false,
    useCurrent: false, //Important! See issue #1075
    minDate: moment(1, 'h'),
    autoclose: true
  });
  $('#datetimepicker2').datetimepicker({
    viewMode: 'days',  
    sideBySide: true,
    useCurrent: false //Important! See issue #1075
  });
  $("#datetimepicker1").on("dp.change", function (e) {
    $('#datetimepicker2').data("DateTimePicker").minDate(e.date);
  });
  $("#datetimepicker2").on("dp.change", function (e) {
    $('#datetimepicker1').data("DateTimePicker").maxDate(e.date);
  });


  $("#vacation-submit").click(function(){
    var vacationStart = ($("#datetimepicker1").find("input").val());
    var vacationEnd = $("#datetimepicker2").find("input").val();
    var vendorId = parseInt(document.querySelector(".vacation-title").getAttribute('id')); 

    $.ajax({
      type: 'POST',
      url: '/vendors/' + vendorId + '/vacations/',
      dataType: 'json',
      data: { vacation: {vacation_start: vacationStart, vacation_end: vacationEnd} }, 
      success: function(){
        $('#vacation-submit').text('Saved!');
        $('#vacation-submit').removeClass('btn-outline-success');
        $('#vacation-submit').addClass('btn-success')
      },
      error: function() {
        $('#vacation-submit').text('Could Not Save');
        $('#vacation-submit').removeClass('btn-outline-success');
        $('#vacation-submit').addClass('btn-danger')
      }
  });
  });

  // $('#datetimepicker1').datetimepicker({
  //   viewMode: 'days',
  //   showTodayButton: true,
  //   sideBySide: true,
  //   // inline: true,
  // });
  // $('#datetimepicker2').datetimepicker({
  //   viewMode: 'days',
  //   showTodayButton: true,
  //   sideBySide: true,
  //   // inline: true,
  // });
});