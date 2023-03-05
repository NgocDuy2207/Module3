let elementNavs = document.getElementById('list').children;
let elementItems = document.getElementById('video').children;

window.onload = (event) => {
    for (let i=0; i < elementNavs.length; i++) {
        elementNavs[i].addEventListener("click", function () {
            hideAll();
            elementItems[i].style.display = "block";
        });
        // elementNavs[i].onclick = function () {
        //     console.log("abcs")
        //     hideAll();
        //     elementNavs[i].style.display = "block";
        // }
    }
};


    function hideAll(){
        // elementNavs = document.getElementById('list').children;
        for (let e of elementItems) {
            e.style.display= "none";
        }

    }

