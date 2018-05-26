import raylib

let
  screenWidth = 800.cint
  screenHeight = 450.cint

InitWindow(screenWidth, screenHeight, "raylib [core] example - basic window")

while not WindowShouldClose():
  BeginDrawing()

  ClearBackground(RAYWHITE)
  DrawText("Congrats! You created your first window!", 190, 200, 20, LIGHTGRAY)

  EndDrawing()

CloseWindow()
