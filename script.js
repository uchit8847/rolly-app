const canvas = document.getElementById('heartsCanvas');
const ctx = canvas.getContext('2d');
canvas.width = window.innerWidth;
canvas.height = window.innerHeight;

const hearts = [];

function createHeart() {
    const x = Math.random() * canvas.width;
    const y = canvas.height;
    hearts.push({ x, y });
}

function drawHearts() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    hearts.forEach((heart, index) => {
        ctx.fillStyle = 'red';
        ctx.beginPath();
        ctx.arc(heart.x, heart.y, 10, 0, Math.PI * 2);
        ctx.fill();
        heart.y -= 2; // Move heart upwards
        if (heart.y < 0) hearts.splice(index, 1); // Remove heart if it goes off screen
    });
}

function animate() {
    drawHearts();
    requestAnimationFrame(animate);
}

setInterval(createHeart, 500); // Create a new heart every 500ms
animate();