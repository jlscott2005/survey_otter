var optionNode = "<li><input class='option' type='text' name='survey[questions][][options][]' placeholder='an option'> <button class='remove-button'>✖</button></li>";

var questionNode = "<li><input class='question' type='text' name='survey[questions][][question]' placeholder='What do you want to ask?'> <button class='remove-button'>✖</button><button class='button add-option'>add option</button><ul>"+optionNode+"</ul></li>";

$(document).ready(function(){

  $('#survey-builder > ol').append(questionNode);

  $('#survey-builder').on('click', '.add-question', function(event){
    event.preventDefault();
    $($(this).siblings('ol')).append(questionNode);
  });

  $('#survey-builder').on('click', '.add-option', function(event){
    event.preventDefault();
    $($(this).siblings('ul')).append(optionNode);
  });

  $('#survey-builder').on('click', '.remove-button', function(event){
    event.preventDefault();
    $(this).parent().remove();
  });
});
