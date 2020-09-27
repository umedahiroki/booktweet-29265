window.addEventListener('load', function(){

const pullDownButton = document.getElementById("context");

pullDownButton.addEventListener('mouseover', function(){
    pullDownButton.setAttribute("style", "background-color:#1C75BC;")
  });

pullDownButton.addEventListener('mouseout', function(){    
    pullDownButton.removeAttribute("style", "background-color:#FFFFFF;")
  });
})