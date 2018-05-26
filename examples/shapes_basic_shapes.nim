import raylib

var
  screenWidth = 800.cint
  screenHeight = 450.cint

InitWindow(screenWidth, screenHeight, "raylib [shapes] example - basic shapes drawing")

SetTargetFPS(60)

while not WindowShouldClose():
  BeginDrawing()

  ClearBackground(RAYWHITE)

  DrawText("some basic shapes available on raylib", 20, 20, 20, DARKGRAY);

  DrawLine(18, 42, screenWidth - 18, 42, BLACK);

  DrawCircle((screenWidth/4).cint, 120, 35, DARKBLUE);
  DrawCircleGradient((screenWidth/4).cint, 220, 60, GREEN, SKYBLUE);
  DrawCircleLines((screenWidth/4).cint, 340, 80, DARKBLUE);

  DrawRectangle((screenWidth/4*2 - 60).cint, 100, 120, 60, RED);
  DrawRectangleGradientH((screenWidth/4*2 - 90).cint, 170, 180, 130, MAROON, GOLD);
  DrawRectangleLines((screenWidth/4*2 - 40).cint, 320, 80, 60, ORANGE);

  DrawTriangle(Vector2(x: screenWidth/4*3, y: 80),
               Vector2(x: screenWidth/4*3 - 60, y: 150),
               Vector2(x: screenWidth/4*3 + 60, y: 150), VIOLET);

  DrawTriangleLines(Vector2(x: screenWidth/4*3, y: 160),
                    Vector2(x: screenWidth/4*3 - 20, y: 230),
                    Vector2(x: screenWidth/4*3 + 20, y: 230), DARKBLUE);

  DrawPoly(Vector2(x: screenWidth/4*3, y: 320), 6, 80, 0, BROWN);

  EndDrawing()

CloseWindow()