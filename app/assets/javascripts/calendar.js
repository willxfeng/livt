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

  $('#sets-div').on('change', '.group-select', function(e){
    var groupButton = $(this);

    var request = $.ajax({
      method: 'GET',
      url: '/muscles',
      data: { ajax: true, groupId: groupButton.val() }
    });

    request.done(function(response) {
      var muscles = response.muscles;
      var exercises = response.exercises;
      var muscleSelect = groupButton.closest('.small-10').siblings('.medium-4')
        .find('.muscle-select');
      var exerciseSelect = groupButton.closest('.small-10').siblings('.medium-5')
        .find('.ex-select');

      muscleSelect.empty();
      for (i=0; i<muscles.length; i++) {
        muscleSelect.append($("<option></option>")
          .attr("value", muscles[i].id).text(muscles[i].name));
      }
      exerciseSelect.empty();
      for (i=0; i<exercises.length; i++) {
        exerciseSelect.append($("<option></option>")
          .attr("value", exercises[i].id).text(exercises[i].name));
      }
    });
  });

  $('#sets-div').on('change', '.muscle-select', function(e){
    var muscleButton = $(this);

    var request = $.ajax({
      method: 'GET',
      url: '/exercises',
      data: { ajax: true, muscleId: muscleButton.val() }
    });

    request.done(function(response) {
      var exercises = response.exercises;
      var exerciseSelect = muscleButton.closest('.small-10').siblings('.medium-5')
        .find('.ex-select');

      exerciseSelect.empty();
      for (i=0; i<exercises.length; i++) {
        exerciseSelect.append($("<option></option>")
          .attr("value", exercises[i].id).text(exercises[i].name));
      }
    });
  });

  $('#sets-div').on('click', '.remove-button', function(e){
    e.preventDefault();
    $(this).closest('.set-row').remove();
  });

  $('#sets-div').on('click', '.new-button', function(e){
    e.preventDefault();
    var thisButton = $(this);

    var request = $.ajax({
      method: 'POST',
      url: '/workouts',
      data: { ajax: true }
    });

    request.done(function(response) {
      thisButton.closest('.set-row').clone().appendTo('#sets-div');
    });
  });
});
