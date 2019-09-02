$(function(){
  var i=0
  $('h1').click(function(){
    $('p').fadeIn();
  })

  var reloadSlide = function(e){
    
    $.ajax({
      url:"/",
      type:"get",
      datatype:"json"
    })
    .done(function(messages){
        if (i==messages.length){
          i=0
        }

      $('.slide').fadeOut(500);
      $('.slide').eq(i).effect('highlight');
      i++
      
    })



    
  }

  setInterval(reloadSlide, 5000);

});