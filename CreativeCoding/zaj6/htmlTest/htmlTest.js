function setup() {
  createCanvas(500, 500);
  strokeWeight(15);
}

function draw() {
   background(255);
   point(frameCount*0.5, mouseY);
}
