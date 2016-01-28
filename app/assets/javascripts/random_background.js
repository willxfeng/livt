$(document).ready(function() {
  $('body').css('background-image', 'url(' + getRandImg() + ')');
});

var getRandImg = function() {
  var images = [
    'https://s3.amazonaws.com/livt-backgrounds/background1.jpg',
    'https://s3.amazonaws.com/livt-backgrounds/background2.jpg',
    'https://s3.amazonaws.com/livt-backgrounds/background3.jpg',
    'https://s3.amazonaws.com/livt-backgrounds/background4.jpg',
    'https://s3.amazonaws.com/livt-backgrounds/background5.jpg',
    'https://s3.amazonaws.com/livt-backgrounds/background6.jpg',
    'https://s3.amazonaws.com/livt-backgrounds/background7.jpg'
  ]

  return images[Math.floor(Math.random() * images.length)];
}
