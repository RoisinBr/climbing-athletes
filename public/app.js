$(function(){
  $('#keywords').tablesorter(); 
});

var searchButton = document.querySelector('.search')
var input = document.querySelector('input')
var section = document.querySelector('section')

var handleClick = event => {
  event.preventDefault();

  var options = {
      url: "/climber",
      method: "get",
      data: {
          name: input.value
      }
  }

  var handleDone = function(response) {
    var profiles = document.querySelectorAll('.profile-card')
    profiles.forEach(function(profile) {
      profile.remove()
    })
    response.forEach(function(profile) {
        var div = document.createElement('div');
        var a = document.createElement('a');
        var img = document.createElement('img');
        var p = document.createElement('p');
        img.src = `${profile.photo}`;
        a.href = `/climber/${profile.id}`;
        p.textContent = `${profile.first_name} ${profile.surname}`;
        p.classList.add('home-name');
        div.classList.add('profile-card');
        img.classList.add('home-image');
        section.append(div);
        div.append(a)
        a.append(img, p)
    })
  }
      
  $.ajax(options).done(handleDone)
}

searchButton.addEventListener('click', handleClick)
  