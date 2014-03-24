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


      var count = 0
    $(".random_otters").on("click", function(){
      $(".random_otters" + "#" + (count % 6)).attr("src", "/img/rotating_otter_images/otters_"+( (count % 5) + 1 )+".jpg");
      count++;
    });



  //   $('#logout button a').on("click", function (e) {
  //   e.preventDefault();
  //   var request = $.ajax({ url: $(this).attr('href'), type: 'delete' });
  //   request.done(function () { window.location = "/"; });
  // });

});
