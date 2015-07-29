// Movies

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

$("#movie-update").on('click', function(){
  $.ajax({
    url: '/movies/' + $("#movie-id").val(),
    method: 'PATCH',
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
    console.log("Updated movie!");
  }).fail(function(data){
    console.error(data);
  });
});

$("#movie-destroy").on('click', function(){
  $.ajax({
    url: '/movies/' + $("#movie-id").val(),
    method: 'DELETE',
  }).done(function(data){
    console.log("Deleted movie!");
  }).fail(function(data){
    console.error(data);
  });
});

// People

$("#person-create").on('click', function(){
  $.ajax({
    url: '/people',
    method: 'POST',
    data: {
      person: {
        name: $("#person-name").val(),
        born: $("#person-born").val(),
        died: $("#person-died").val(),
      }
    }
  }).done(function(data){
    console.log("Created person!");
  }).fail(function(data){
    console.error(data);
  });
});

$("#person-update").on('click', function(){
  $.ajax({
    url: '/people/' + $("#person-id").val(),
    method: 'PATCH',
    data: {
      person: {
        name: $("#person-name").val(),
        born: $("#person-born").val(),
        died: Number($("#person-died").val()),
      }
    }
  }).done(function(data){
    console.log("Updated person!");
  }).fail(function(data){
    console.error(data);
  });
});

$("#person-destroy").on('click', function(){
  $.ajax({
    url: '/people/' + $("#person-id").val(),
    method: 'DELETE',
  }).done(function(data){
    console.log("Deleted person!");
  }).fail(function(data){
    console.error(data);
  });
});

// Roles

$("#role-create").on('click', function(){
  $.ajax({
    url: '/roles',
    method: 'POST',
    data: {
      role: {
        name: $("#role-name").val(),
        person_id: Number($("#role-person-id").val()),
        movie_id: Number($("#role-movie-id").val()),
      }
    }
  }).done(function(data){
    console.log("Created role!");
  }).fail(function(data){
    console.error(data);
  });
});

$("#role-update").on('click', function(){
  $.ajax({
    url: '/roles/' + $("#role-id").val(),
    method: 'PATCH',
    data: {
      role: {
        name: $("#role-name").val(),
        person_id: Number($("#role-person-id").val()),
        movie_id: Number($("#role-movie-id").val()),
      }
    }
  }).done(function(data){
    console.log("Updated role!");
  }).fail(function(data){
    console.error(data);
  });
});

$("#role-destroy").on('click', function(){
  $.ajax({
    url: '/roles/' + $("#role-id").val(),
    method: 'DELETE',
  }).done(function(data){
    console.log("Deleted role!");
  }).fail(function(data){
    console.error(data);
  });
});

// Users -- password digest thingie

$("#user-create").on('click', function(){
  $.ajax({
    url: '/users',
    method: 'POST',
    data: {
      role: {
        email: $("#user-email").val(),
        username: $("#user-username").val(),
        password: $("#user-password").val(),
        token: $("#user-token").val()
      }
    }
  }).done(function(data){
    console.log("Created user!");
  }).fail(function(data){
    console.error(data);
  });
});

$("#user-update").on('click', function(){
  $.ajax({
    url: '/users/' + $("#user-id").val(),
    method: 'PATCH',
    data: {
      role: {
        name: $("#user-name").val(),
        username: $("#user-username").val(),
        password: $("#user-movie-id").val(),
        token: $("#user-token").val()
      }
    }
  }).done(function(data){
    console.log("Updated user!");
  }).fail(function(data){
    console.error(data);
  });
});

$("#user-destroy").on('click', function(){
  $.ajax({
    url: '/users/' + $("#user-id").val(),
    method: 'DELETE',
  }).done(function(data){
    console.log("Deleted user!");
  }).fail(function(data){
    console.error(data);
  });
});

// Reviews

$("#review-create").on('click', function(){
  $.ajax({
    url: '/reviews',
    method: 'POST',
    data: {
      role: {
        score: Number($("#review-score").val()),
        content: $("#review-content").val(),
        movie_id: Number($("#review-movie-id").val()),
        user_id: Number($("#review-user-id").val())
      }
    }
  }).done(function(data){
    console.log("Created reviews!");
  }).fail(function(data){
    console.error(data);
  });
});

$("#review-update").on('click', function(){
  $.ajax({
    url: '/reviews/' + $("#review-id").val(),
    method: 'PATCH',
    data: {
      role: {
        score: Number($("#review-score").val()),
        content: $("#review-content").val(),
        movie_id: Number($("#review-movie-id").val()),
        user_id: Number($("#review-user-id").val())
      }
    }
  }).done(function(data){
    console.log("Updated reviews!");
  }).fail(function(data){
    console.error(data);
  });
});

$("#review-destroy").on('click', function(){
  $.ajax({
    url: '/reviews/' + $("#review-id").val(),
    method: 'DELETE',
  }).done(function(data){
    console.log("Deleted reviews!");
  }).fail(function(data){
    console.error(data);
  });
});
