
$(".main-title").html(name)
$(".sub-title").html(underName)
$(".description").html(desc)
// Western-themed loading messages
const loadingMessages = [
	"Loading the frontier...",
	"Preparing your horse...",
	"Loading the saloon...",
	"Setting up the sheriff's office...",
	"Loading the general store...",
	"Preparing the wilderness...",
	"Loading the railroad...",
	"Setting up the camp...",
	"Preparing the showdown...",
	"Loading the gold rush...",
	"Setting up the outlaws...",
	"Preparing the lawmen...",
	"Loading the frontier towns...",
	"Setting up the stagecoach...",
	"Preparing the showdown at high noon..."
];

// Western-themed loading tips
const loadingTips = [
	"The frontier is a dangerous place, partner. Trust your instincts.",
	"Keep your gun close and your horse closer.",
	"Honor among thieves is rare, but it exists.",
	"The law is coming, but justice takes time.",
	"Gold fever can make a man do terrible things.",
	"A good horse is worth more than gold in these parts.",
	"The desert sun shows no mercy to the unprepared.",
	"Every man has a price, but not every man is for sale.",
	"The railroad brought civilization, but also corruption.",
	"Out here, a man's word is his bond.",
	"The mountains hold many secrets and much gold.",
	"Trust is earned, not given freely on the frontier.",
	"The saloon is where deals are made and broken.",
	"Justice comes swift and sure in the West.",
	"Every town needs a sheriff, but not every sheriff needs a town."
];

// Rotate loading tips
let currentTipIndex = 0;
setInterval(function() {
	currentTipIndex = (currentTipIndex + 1) % loadingTips.length;
	$(".loading-tip").text('"' + loadingTips[currentTipIndex] + '"');
}, 5000);

function loading(num) {
	let current = parseInt($(".loading-percentage").text(), 10) || 0;
	const step = 1;
	const delay = 700 / Math.abs(num - current);

	const interval = setInterval(function () {
		if (current < num) {
			current += step;
			if (current > num) current = num;
		} else if (current > num) {
			current -= step;
			if (current < num) current = num;
		} else {
			clearInterval(interval);
		}
		$(".loading-percentage").text(current + "%");
		
		// Update loading message based on progress
		const messageIndex = Math.floor((current / 100) * loadingMessages.length);
		$(".loading-status").text(loadingMessages[messageIndex] || loadingMessages[loadingMessages.length - 1]);
	}, delay);

	// Ensure progress bar doesn't exceed 100%
	const clampedNum = Math.min(Math.max(num, 0), 100);
	$(".loading-bar .line").width(clampedNum + "%");
}

if (showStaffTeam) {
	$(".panel.staffteam").show()
	staff_team.forEach(function (user) {
		$(".staff_team").append(`
			<div class="staff">
				<div class="info">
					<img src="${user.image}" class="pfp">
					<p>${user.name}</p>
				</div>
				<p class="status">${user.rank}</p>
			</div>
		`)
	})
}


window.addEventListener('message', function (e) {
	if (e.data.eventName === 'loadProgress') {
		var num = (e.data.loadFraction * 100).toFixed(0)
		loading(num);
	}
});


if (theme == "orange") {
	$("body").append(`<style>:root{--main:255, 150, 0;}</style>`)
	$("body").css("background-image", "url('assets/img/orange.jpg')")
	$(".winter").css("background", "linear-gradient(0deg, rgb(255 150 0 / 10%) 0%, rgba(255, 150, 0, 0.0) 100%)")
}
if (theme == "red") {
	$("body").append(`<style>:root{--main:255,0,0;}</style>`)
	$("body").css("background-image", "url('assets/img/red.jpg')")
	$(".winter").css("background", "linear-gradient(0deg, rgb(255 0 0 / 10%) 0%, rgba(255, 0, 0, 0.0) 100%)")
}
if (theme == "blue") {
	$("body").append(`<style>:root{--main:0, 163, 255;}</style>`)
	$("body").css("background-image", "url('assets/img/blue.jpg')")
	$(".winter").css("background", "linear-gradient(0deg, rgb(0 163 255 / 10%) 0%, rgba(0, 163, 255, 0.0) 100%)")
}
if (theme == "green") {
	$("body").append(`<style>:root{--main:65, 255, 0;}</style>`)
	$("body").css("background-image", "url('assets/img/green.jpg')")
	$(".winter").css("background", "linear-gradient(0deg, rgb(65 255 0 / 10%) 0%, rgba(65, 255, 0, 0.0) 100%)")
}
if (theme == "pink") {
	$("body").append(`<style>:root{--main:255, 122, 237;}</style>`)
	$("body").css("background-image", "url('assets/img/pink.jpg')")
	$(".winter").css("background", "linear-gradient(0deg, rgb(255 122 237 / 10%) 0%, rgba(255, 122, 237, 0.0) 100%)")
}
if (theme == "purple") {
	$("body").append(`<style>:root{--main:193, 67, 255;}</style>`)
	$("body").css("background-image", "url('assets/img/purple.jpg')")
	$(".winter").css("background", "linear-gradient(0deg, rgb(193 67 255 / 10%) 0%, rgba(193, 67, 255, 0.0) 100%)")
}
// Western Dust Particles
particlesJS("particles-js", {
	"particles": {
		"number": { "value": 200, "density": { "enable": true, "value_area": 1000 } },
		"color": { "value": ["#8B4513", "#D2691E", "#CD853F", "#F4A460", "#DEB887"] },
		"shape": { "type": "circle" },
		"opacity": { "value": 0.3, "random": true, "anim": { "enable": true, "speed": 1, "opacity_min": 0.1, "sync": false } },
		"size": { "value": 2, "random": true, "anim": { "enable": true, "speed": 2, "size_min": 0.5, "sync": false } },
		"line_linked": { "enable": false },
		"move": { 
			"enable": true, 
			"speed": 1, 
			"direction": "bottom-right", 
			"random": true, 
			"straight": false, 
			"out_mode": "out", 
			"bounce": false 
		}
	},
	"interactivity": { 
		"detect_on": "canvas", 
		"events": { 
			"onhover": { "enable": false }, 
			"onclick": { "enable": false }, 
			"resize": true 
		}
	},
	"retina_detect": true
});

$("#particles-js").css("opacity", 1);

// Winter update
if (enableWinterUpdate) {
	$("body").css("background-image", "url('assets/img/winter.jpg')")
	$(".winter").css("display", "flex")
}