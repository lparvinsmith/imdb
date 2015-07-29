$("#movie-create").on('click', function(){
  $.ajax({
    url: '/movies',
    method: 'POST',
    data: {
      movie: {
        title: $("#movie-title").val(),
        description: $("#movie-description").val(),
        release_year: Number($("#movie-year").val()),
        mpaa_rating: $("#movie-mpaa").val(),
        length: Number($("#movie-length").val())
      }
    }
  }).done(function(data){
    console.log("Created movie!");
  }).fail(function(data){
    console.error(data);
  });
});
