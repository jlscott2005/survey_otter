$(document).ready(function(){
  $('form').on('click', '.add-question', function(event){
    event.preventDefault();
    console.log('hello');
    $($(this).siblings('ol')).append("<li><input type='text' name='survey[questions][][question]' placeholder='question'><button class='remove-button'>✖</button><button class='button add-option'>add option</button><ul><li><input type='text' name='survey[questions][][options][]' placeholder='option'><button class='remove-button'>✖</button></li></ul></li>");
  });
  $('form').on('click', '.add-option', function(event){
    event.preventDefault();
    console.log('hello');
    $($(this).siblings('ul')).append("<li><input type='text' name='survey[questions][][options][]' placeholder='option'><button class='remove-button'>✖</button></li>");
  });
  $('form').on('click', '.remove-button', function(event){
    event.preventDefault();
    $(this).parent().remove();
  });
});

