$(document).ready(function() {
  $(".month .day").css('height', '120px');
  $(".week .day").css('height', '450px');

  $(".day").hover(function(e){
    originalColor = $(this).css('background-color');
    $(this).css('background-color', '#ff8642');
    $(this).children('.add-workout').show();
  }, function(e){
    $(this).css('background-color', originalColor);
    $(this).children('.add-workout').hide();
  });

  $(".add-workout-link").click(function(e) {
    var workoutDate = $(this).attr('id');
    $("#modalTitle").text('Add workout for ' + workoutDate);
    $("#hidden-date").val(workoutDate);
  });

  $('#on-off').change(function(e) {
    if($(this).prop('checked')) {
      $('.month').hide();
      $('.week').show();
    } else {
      $('.week').hide();
      $('.month').show();
    }
  });
});
