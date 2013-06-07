$(document).ready(function() {
  $('.login').click(function(event) {
    event.preventDefault();
    $.get('/login', function(response) {
      $('.container').append(response);
    });
  });
  $('.signup').click(function(event) {
    event.preventDefault();
    $.get('/user/new', function(response) {
      $('.container').append(response);
    });
  });
  $('.newpost').click(function(event) {
    event.preventDefault();
    $.get('/posts/new', function(response) {
      $('h1').after(response);
    });
  });
});
