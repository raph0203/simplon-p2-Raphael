const burger = document.querySelector(".burger");
burger.addEventListener("click",()=>{
   burger.classList.toggle("active");

});

function toggleSidebar() {

    document.getElementById("sidebar").classList.toggle("active")
}