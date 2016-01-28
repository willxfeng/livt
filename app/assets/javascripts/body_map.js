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
    var muscleGroupID = this.id.split('-')[0];
    var request = $.ajax({
      method: 'GET',
      url: '/muscle_groups/' + muscleGroupID,
      data: { ajax: true }
    });

    request.done(function(response) {
      var group = response.group;
      var muscles = response.muscles;
      var div = $('.hover-show');
      var ul = $('#hover-muscles');

      div.css('padding-top', '10px');

      $('h3').empty();

      $('#muscle-name').text(group.name);
      $('#muscle-desc').text(group.description);

      ul.empty();
      for (var i = 0; i < muscles.length; i++) {
        ul.append("<li>");
        ul.append("<a href='/muscles/" + muscles[i].id +
        "'>" + muscles[i].name + "</a><br>");
        ul.append("<a href='/muscles/" + muscles[i].id +
        "'><img src='" + muscles[i].image + "' '/></a><br>");
        ul.append("</li>");
      }

      $('ul').addClass('hoverlist');
    });
  }, function() {
  });
});
