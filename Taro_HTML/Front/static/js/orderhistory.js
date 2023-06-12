function toggleDetails(id, button) {
  var details = document.getElementById(id);
  if (details.style.display === "none") {
    details.style.display = "block";
    button.innerText = "收起明細";
  } else {
    details.style.display = "none";
    button.innerText = "查看明細";
  }
}