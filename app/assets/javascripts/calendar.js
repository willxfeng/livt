$(document).ready(function() {
  $(".month .day").css('height', '140px');
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

  $('.set-row').on('click', '.remove-button', function(e){
    e.preventDefault();
    $(this).closest('.set-row').remove();
  });

  $('.set-row').on('click', '.new-button', function(e){
    e.preventDefault();
    var thisButton = $(this);

    var request = $.ajax({
      method: 'POST',
      url: '/workouts',
      data: { ajax: true }
    });

    request.done(function(response) {
      thisButton.closest('.set-row').clone().appendTo('.reveal-modal');
    });
  });
});
