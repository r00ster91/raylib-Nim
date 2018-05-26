from strutils import intToStr
import raylib

type Bunny = object
  position: Vector2
  speed: Vector2
  color: Color

const MAX_BUNNIES = 100_000

let
  screenWidth = 1200.cint
  screenHeight = 700.cint

InitWindow(screenWidth, screenHeight, "raylib example - Bunnymark")

let bunny = LoadTexture("wabbit_alpha.png")

var
  bunnies: array[MAX_BUNNIES, Bunny]
  bunniesCount = 0

SetTargetFPS(60)

while not WindowShouldClose():
  if IsMouseButtonDown(MOUSE_LEFT_BUTTON):
    for i in 0..<100:
      bunnies[bunniesCount].position = GetMousePosition()
      bunnies[bunniesCount].speed.x = GetRandomValue(250, 500).float / 60.0
      bunnies[bunniesCount].speed.y = (GetRandomValue(250, 500) - 500).float / 60.0 
      bunniesCount += 1
 
  for i in 0..<bunniesCount:
    bunnies[i].position.x += bunnies[i].speed.x
    bunnies[i].position.y += bunnies[i].speed.y

    if bunnies[i].position.x > GetScreenWidth().float or bunnies[i].position.x < 0.0:
      bunnies[i].speed.x *= -1
    if bunnies[i].position.y > GetScreenHeight().float or bunnies[i].position.y < 0.0:
      bunnies[i].speed.y *= -1
 
  BeginDrawing()

  ClearBackground(RAYWHITE)
  
  for i in 0..<bunniesCount:
    DrawTexture(bunny, bunnies[i].position.x.cint, bunnies[i].position.y.cint, RAYWHITE)

  var bunniesCountStr = "bunnies: " & intToStr(bunniesCount)
  
  DrawRectangle(0, 0, screenWidth, 40, LIGHTGRAY)
  DrawText("raylib bunnymark", 10, 10, 20, DARKGRAY)
  DrawText(bunniesCountStr, 400, 10, 20, RED)
  
  DrawFPS(260, 10)

  EndDrawing()

CloseWindow()

