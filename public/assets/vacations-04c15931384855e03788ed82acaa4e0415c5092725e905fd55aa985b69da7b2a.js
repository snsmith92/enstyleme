$(document).ready(function () {

  $('#datetimepicker1').datetimepicker({
    viewMode: 'days',  
    sideBySide: true,
    keepOpen: false,
    useCurrent: false //Important! See issue #1075
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
