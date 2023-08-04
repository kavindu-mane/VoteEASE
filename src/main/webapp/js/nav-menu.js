let menuOpen = false;
const menuSettings = (e) => {
  const MENU = document.getElementById("menu");
  const docElement = document.documentElement.classList;
  if (menuOpen) {
    MENU.classList.replace("right-0", "-right-80");
    docElement.remove("overflow-y-hidden");
    menuOpen = false;
    e.target.innerHTML = "menu";
  } else {
    MENU.classList.replace("-right-80", "right-0");
    docElement.add("overflow-y-hidden");
    menuOpen = true;
    e.target.innerHTML = "close";
  }
};
