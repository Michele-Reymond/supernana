function openNav() {
  const openbtn = document.querySelector(".openbtn")

  openbtn.addEventListener('click', () => {
    document.getElementById("mySidebar").style.width = "250px";
    document.getElementById("main").style.marginright = "250px";
  });
}

export { openNav };

