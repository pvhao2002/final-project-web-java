const homePageImage = document.querySelector(".homepage-left-img");
const homePageImageNext = document.querySelector(".homepage-left-icon-next")
const homePageImageBack = document.querySelector(".homepage-left-icon-back")
const arraySrc = ["images/banner7.png", "images/banner5.png", "images/banner6.png", "images/banner4.png"]
homePageImageNext.addEventListener("click",handleNextSrc);
let countSrc = 0;
function handleNextSrc(event) {
    countSrc = countSrc + 1;
    if(countSrc > 2){
        countSrc = 0;
    }
    homePageImage.setAttribute("src",arraySrc[countSrc]);

}
homePageImageBack.addEventListener("click",handleBackSrc);
function handleBackSrc(event) {
    countSrc = countSrc - 1;
    if(countSrc < 0){
        countSrc = 2;
    }
    homePageImage.setAttribute("src",arraySrc[countSrc]);
}
const timer = setInterval(function(){
    handleNextSrc();
},5500);