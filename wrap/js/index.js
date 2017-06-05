function changesrc(form) {
  var sub_link = form.ex.value;
  var y_link = "https://youtube.com/embed/";
  y_link = y_link.concat(sub_link)
  console.log(y_link)
  var frame = document.getElementById("video");
  frame.src = y_link
}