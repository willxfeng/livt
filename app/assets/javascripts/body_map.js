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
    $('.hover-show').empty();

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

      div.css('padding-top', '10px');

      div.append(
        "<h2>" + group.name + "</h2>",
        "<p>" + group.description + "</p>"
      );

      div.append("<ul>");
      for (var i = 0; i < muscles.length; i++) {
        div.append("<li><ul>");
        div.append("<li><a href='/muscles/" + muscles[i].id +
        "'>" + muscles[i].name + "</a></li>");
        div.append("<li><a href='/muscles/" + muscles[i].id +
        "'><img src='" + muscles[i].image + "' '/></a></li>");
        div.append("</ul></li>");
      }
      div.append("</ul>");

      $('ul').addClass('hoverlist');
    });
  }, function() {
  });
});
