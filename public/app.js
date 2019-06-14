$(function(){
  $('#keywords').tablesorter(); 
});

var searchButton = document.querySelector('.search')
var input = document.querySelector('input')

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
    console.log(response)
    //how to put html into ajax response - do it by removing what is there (query selector all) and appending all the reuired info
    response.forEach(function(profile) {
      <div class="profile-card">
        <a href=`/climber/${profile.id}`>
          <img class="home-image" src=`${profile.photo}` alt="">
          <p class="home-name">profile.first_name  profile.surname</p>
        </a>
      </div>
    })
  }
      
  $.ajax(options).done(handleDone)
}

searchButton.addEventListener('click', handleClick)
  