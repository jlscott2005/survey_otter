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


// //initialize with 3
// var startingNo = 3;
// var $node = "";
// for(varCount=0;varCount<=startingNo;varCount++){
//   var displayCount = varCount+1;
//   $node += '<p><label for="var'+displayCount+'">Variable '+displayCount+': </label><input type="text" name="var'+displayCount+'" id="var'+displayCount+'"><span class="removeVar">Remove Variable</span></p>';
// }
// $('form').prepend($node);

// $('form').on('click', '.removeVar', function(){
//   $(this).parent().remove();
//   //varCount--;
// });

// $('#addVar').on('click', function(){
//   //new node
//   varCount++;
//   $node = '<p><label for="var'+varCount+'">Variable '+varCount+': </label><input type="text" name="var'+varCount+'" id="var'+varCount+'"><span class="removeVar">Remove Variable</span></p>';
//   $(this).parent().before($node);
// });
