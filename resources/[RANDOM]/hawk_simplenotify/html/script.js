var sounds = new Audio("sounds/notify.mp3");
sounds.volume = 0.6;

window.addEventListener("message", function(event) {
    if (event.data.action === "showNotification") {
        showNotification(event.data.message, event.data.type);
    }
});

function showNotification(message, type) {
    let container = document.getElementById("notification-container");

    if (!container) {
        return;
    }

    sounds.play();   

    let notification = document.createElement("div");
    notification.classList.add("notification", type);
    

    let textSpan = document.createElement("span");
    notification.appendChild(textSpan);
    container.appendChild(notification);

  
    let index = 0;
    function typeEffect() {
        if (index < message.length) {
            textSpan.innerHTML += message.charAt(index);
            index++;
            setTimeout(typeEffect, 10); 
        }
    }
    typeEffect();

  
    setTimeout(() => {
        notification.style.animation = "fade-out 0.5s ease-out forwards";
        setTimeout(() => {
            notification.remove();
        }, 500);
    }, 4000); 
}
