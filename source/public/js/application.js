$(document).ready(function() {
    $('#user-box button').on('click', function(e) {
      e.preventDefault();
      $('#login').show();
      $('#non-user').hide();
    });

    $('#logout button a').on("click", function (e) {
    e.preventDefault();
    var request = $.ajax({ url: $(this).attr('href'), type: 'delete' });
    request.done(function () { window.location = "/"; });
  });

});
