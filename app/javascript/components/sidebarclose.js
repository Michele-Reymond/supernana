function closeNav() {
  const closebtn = document.querySelector(".closebtn")
  if (closebtn) {
    closebtn.addEventListener('click', () => {
      document.getElementById("mySidebar").style.width = "0";
      document.getElementById("main").style.marginright= "0";
    });
  }
}

export { closeNav };



