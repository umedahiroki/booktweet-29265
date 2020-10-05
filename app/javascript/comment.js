function comment() {
    const submit = document.getElementById("submit");
submit.addEventListener("click",(e) =>{
    const formData = new FormData(document.getElementById("form-date"));
    const XHR = new XMLHttpRequest();
    XHR.open("POST", "/comments", true);
    XHR.responseType = "json";
    XHR.send(formData);
    XHR.onload = () => {
        if (XHR.status != 200) {
          alert(`Error ${XHR.status}: ${XHR.statusText}`);
          return null;
        }
        const item = XHR.response.post;
        const list = document.getElementById("list");
        const formText = document.getElementById("submit");
        const HTML = `
        <div class="main-essance">
        <div class="second-block">
        <span class="comment-username">
        <%= link_to ${comment.user.nicknmame}, "/users/${comment.user_id}",class:'comment-orner' %>
        </span>
        <span class="side-message">
        ：
        </span>
        </div>
        
        <div class="comment-context">
        <%= safe_join(${comment.text.split("\n"),tag(br)}%>
        </div>
        </div>`;
        list.insertAdjacentHTML("afterend", HTML);
        formText.value = "";
      };
      e.preventDefault();
  });
}
window.addEventListener("load", comment);