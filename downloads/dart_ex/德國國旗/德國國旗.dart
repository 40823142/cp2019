import 'dart:html';
import 'dart:math' as Math;

CanvasElement canvas;
CanvasRenderingContext2D ctx;
int flag_w = 300;
int flag_h = 200;
num circle_x = flag_w / 4;
num circle_y = flag_h / 4;

void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');
  ctx.beginPath();
  ctx.moveTo(0, 0);
  ctx.lineTo(0, flag_h * 1 / 3);
  ctx.lineTo(flag_w, flag_h * 1 / 3);
  ctx.lineTo(flag_w, 0);
  ctx.strokeStyle = "#000000";
  ctx.stroke();
  ctx.fillStyle = "#000000";
  ctx.fill();
  ctx.closePath();
  ctx.beginPath();
  ctx.moveTo(0, flag_h * 1 / 3);
  ctx.lineTo(0, flag_h * 2 / 3);
  ctx.lineTo(flag_w, flag_h * 2 / 3);
  ctx.lineTo(flag_w, flag_h * 1 / 3);
  ctx.strokeStyle = "#FF3333";
  ctx.stroke();
  ctx.fillStyle = "#FF3333";
  ctx.fill();
  ctx.closePath();
  ctx.beginPath();
  ctx.moveTo(0, flag_h * 2 / 3);
  ctx.lineTo(0, flag_h );
  ctx.lineTo(flag_w, flag_h * 3 / 3);
  ctx.lineTo(flag_w, flag_h * 2 / 3);
  ctx.strokeStyle = "#FFBB00";
  ctx.stroke();
  ctx.fillStyle = "#FFBB00";
  ctx.fill();
  ctx.closePath();
}

void clear() {
  ctx.clearRect(0, 0, flag_w, flag_h);
}
