$(document).ready(function() {
  $('#blank-body').maphilight({
    fillOpacity: 0.6,
    strokeOpacity: 0.6,
    fillColor: 'ff0000',
    strokeWidth: 0,
    fade: true,
    groupBy: 'title'
  });

  $('.body-area').hover(function(){
    // $('.hover-show').empty();
    var request = $.ajax({
      method: 'GET',
      url: '/muscles',
      data: { title: $(this).attr('title') }
    });

    request.done(function(response) {
      $('.hover-show').text(response.key);
    });
  }, function() {
    $('.hover-show').empty();
  });
});
