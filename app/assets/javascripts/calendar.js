$(document).ready(function() {
  $(".day").hover(function(e){
    $(this).css('cursor', 'pointer');
    originalColor = $(this).css('background-color');
    $(this).css('background-color', '#ff8642');
  }, function(e){
    $(this).css('background-color', originalColor);
  });

  $(".day").on('click', function(e){
    alert('sup');
  });

  $('#on-off').change(function(e) {
    if($(this).prop('checked')) {
      $('.month').css('display', 'none');
      $('.week').css('display', 'inline');
    } else {
      $('.week').css('display', 'none');
      $('.month').css('display', 'inline');
    }
  });
});
