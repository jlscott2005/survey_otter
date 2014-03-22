$(document).ready(function() {
    $('#user-box #login-button').on('click', function(e) {
      e.preventDefault();
      $('#login').show();
      $('#non-user').hide();
    });

    $('#user-box #signup-button').on('click', function(e) {
      e.preventDefault();
      $('#signup').show();
      $('#non-user').hide();
    });

    $('#user-box #login form a').on('click', function(e) {
      e.preventDefault();
      $('#login').hide();
      $('#non-user').show();
    });

    $('#user-box #signup form a').on('click', function(e) {
      e.preventDefault();
      $('#signup').hide();
      $('#non-user').show();
    });

  //   $('#logout button a').on("click", function (e) {
  //   e.preventDefault();
  //   var request = $.ajax({ url: $(this).attr('href'), type: 'delete' });
  //   request.done(function () { window.location = "/"; });
  // });

});
