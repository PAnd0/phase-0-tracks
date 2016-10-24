$(document).ready(function() {
  $('#pirate').hide();
  $('#troll').hide();

  $('#pirate-button').click(function() {
    $('#concerned').hide();
    $('#pirate').show();
  });

  $('#concerned-button').click(function() {
    $('#pirate').hide();
    $('#concerned').show();
  });

  $('.guy-pic').hover(
    function() {
      $(this).data('src', $(this).attr('src'));
      $(this).attr('src', $(this).attr('data-hover'));
    },
    function() {
      $(this).attr('src', $(this).data('src'));
    });

  // $('.guy-pic').hover(
  //   var hoveredPic = $(this)
  //   var origSrc = $(this).attr('src');
  //   function() {
  //     $(this).attr('src','images/troll.jpg');
  //   },
  //   function() {
  //     $(this).attr('src',origSrc);
  //   });
});