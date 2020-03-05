function openNav() {
  const openbtn = document.querySelector(".openbtn")
  if (openbtn) {
    openbtn.addEventListener('click', () => {
      document.getElementById("mySidebar").style.width = "300px";
      document.getElementById("main").style.marginright = "300px";
    });
  }
}

export { openNav };

