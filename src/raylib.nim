{.deadCodeElim: on.}
when defined(windows):
  const LIB_RAYLIB = "libraylib_shared.dll"
elif defined(linux):
  const LIB_RAYLIB = "libraylib.so"
  {.passL: "-lglfw -lGL -lopenal -lm -lpthread -ldl -lX11 -lXrandr -lXinerama -lXxf86vm -lXcursor".}
elif defined(macosx):
  const LIB_RAYLIB = "libraylib.dylib"
  {.passL: "-L. -lraylib".}
else:
  {.error: "Your OS is not supported".}

const
  # raylib Config Flags
  FLAG_SHOW_LOGO* = 1
  FLAG_FULLSCREEN_MODE* = 2
  FLAG_WINDOW_RESIZABLE* = 4
  FLAG_WINDOW_DECORATED* = 8
  FLAG_WINDOW_TRANSPARENT* = 16
  FLAG_MSAA_4X_HINT* = 32
  FLAG_VSYNC_HINT* = 64

  # Keyboard Function Keys
  KEY_SPACE* = 32
  KEY_ESCAPE* = 256
  KEY_ENTER* = 257
  KEY_BACKSPACE* = 259
  KEY_RIGHT* = 262
  KEY_LEFT* = 263
  KEY_DOWN* = 264
  KEY_UP* = 265
  KEY_F1* = 290
  KEY_F2* = 291
  KEY_F3* = 292
  KEY_F4* = 293
  KEY_F5* = 294
  KEY_F6* = 295
  KEY_F7* = 296
  KEY_F8* = 297
  KEY_F9* = 298
  KEY_F10* = 299
  KEY_F11* = 300
  KEY_F12* = 301
  KEY_LEFT_SHIFT* = 340
  KEY_LEFT_CONTROL* = 341
  KEY_LEFT_ALT* = 342
  KEY_RIGHT_SHIFT* = 344
  KEY_RIGHT_CONTROL* = 345
  KEY_RIGHT_ALT* = 346

  # Keyboard Alpha Numeric Keys
  KEY_ZERO* = 48
  KEY_ONE* = 49
  KEY_TWO* = 50
  KEY_THREE* = 51
  KEY_FOUR* = 52
  KEY_FIVE* = 53
  KEY_SIX* = 54
  KEY_SEVEN* = 55
  KEY_EIGHT* = 56
  KEY_NINE* = 57
  KEY_A* = 65
  KEY_B* = 66
  KEY_C* = 67
  KEY_D* = 68
  KEY_E* = 69
  KEY_F* = 70
  KEY_G* = 71
  KEY_H* = 72
  KEY_I* = 73
  KEY_J* = 74
  KEY_K* = 75
  KEY_L* = 76
  KEY_M* = 77
  KEY_N* = 78
  KEY_O* = 79
  KEY_P* = 80
  KEY_Q* = 81
  KEY_R* = 82
  KEY_S* = 83
  KEY_T* = 84
  KEY_U* = 85
  KEY_V* = 86
  KEY_W* = 87
  KEY_X* = 88
  KEY_Y* = 89
  KEY_Z* = 90

  # Android Physical Buttons
  KEY_BACK* = 4
  KEY_MENU* = 82
  KEY_VOLUME_UP* = 24
  KEY_VOLUME_DOWN* = 25

  # Mouse Buttons
  MOUSE_LEFT_BUTTON* = 0
  MOUSE_RIGHT_BUTTON* = 1
  MOUSE_MIDDLE_BUTTON* = 2

  # Touch points registered
  MAX_TOUCH_POINTS* = 2

  # Gamepad Number
  GAMEPAD_PLAYER1* = 0
  GAMEPAD_PLAYER2* = 1
  GAMEPAD_PLAYER3* = 2
  GAMEPAD_PLAYER4* = 3

  # PS3 USB Controller Buttons
  GAMEPAD_PS3_BUTTON_TRIANGLE* = 0
  GAMEPAD_PS3_BUTTON_CIRCLE* = 1
  GAMEPAD_PS3_BUTTON_CROSS* = 2
  GAMEPAD_PS3_BUTTON_SQUARE* = 3
  GAMEPAD_PS3_BUTTON_L1* = 6
  GAMEPAD_PS3_BUTTON_R1* = 7
  GAMEPAD_PS3_BUTTON_L2* = 4
  GAMEPAD_PS3_BUTTON_R2* = 5
  GAMEPAD_PS3_BUTTON_START* = 8
  GAMEPAD_PS3_BUTTON_SELECT* = 9
  GAMEPAD_PS3_BUTTON_UP* = 24
  GAMEPAD_PS3_BUTTON_RIGHT* = 25
  GAMEPAD_PS3_BUTTON_DOWN* = 26
  GAMEPAD_PS3_BUTTON_LEFT* = 27
  GAMEPAD_PS3_BUTTON_PS* = 12

  # PS3 USB Controller Axis
  GAMEPAD_PS3_AXIS_LEFT_X* = 0
  GAMEPAD_PS3_AXIS_LEFT_Y* = 1
  GAMEPAD_PS3_AXIS_RIGHT_X* = 2
  GAMEPAD_PS3_AXIS_RIGHT_Y* = 5
  GAMEPAD_PS3_AXIS_L2* = 3 ## [1..-1] (pressure-level)
  GAMEPAD_PS3_AXIS_R2* = 4 ## [1..-1] (pressure-level)

  # Xbox360 USB Controller Buttons
  GAMEPAD_XBOX_BUTTON_A* = 0
  GAMEPAD_XBOX_BUTTON_B* = 1
  GAMEPAD_XBOX_BUTTON_X* = 2
  GAMEPAD_XBOX_BUTTON_Y* = 3
  GAMEPAD_XBOX_BUTTON_LB* = 4
  GAMEPAD_XBOX_BUTTON_RB* = 5
  GAMEPAD_XBOX_BUTTON_SELECT* = 6
  GAMEPAD_XBOX_BUTTON_START* = 7
  GAMEPAD_XBOX_BUTTON_UP* = 10
  GAMEPAD_XBOX_BUTTON_RIGHT* = 11
  GAMEPAD_XBOX_BUTTON_DOWN* = 12
  GAMEPAD_XBOX_BUTTON_LEFT* = 13
  GAMEPAD_XBOX_BUTTON_HOME* = 8

  # Xbox360 USB Controller Axis
  GAMEPAD_XBOX_AXIS_LEFT_X* = 0  ## [-1..1] (left->right)
  GAMEPAD_XBOX_AXIS_LEFT_Y* = 1  ## [1..-1] (up->down)
  GAMEPAD_XBOX_AXIS_RIGHT_X* = 2 ## [-1..1] (left->right)
  GAMEPAD_XBOX_AXIS_RIGHT_Y* = 3 ## [1..-1] (up->down)
  GAMEPAD_XBOX_AXIS_LT* = 4      ## [-1..1] (pressure-level)
  GAMEPAD_XBOX_AXIS_RT* = 5      ## [-1..1] (pressure-level)

type
  Color* = object ## Color type, RGBA (32bit)
    r*: uint8
    g*: uint8
    b*: uint8
    a*: uint8

  Rectangle* = object ## Rectangle type
    x*: cint
    y*: cint
    width*: cint
    height*: cint

  Vector2* = object ## Vector2 type
    x*: cfloat
    y*: cfloat

  Vector3* = object ## Vector3 type
    x*: cfloat
    y*: cfloat
    z*: cfloat

  Matrix* = object ## Matrix type (OpenGL style 4x4)
    m0*: cfloat
    m4*: cfloat
    m8*: cfloat
    m12*: cfloat
    m1*: cfloat
    m5*: cfloat
    m9*: cfloat
    m13*: cfloat
    m2*: cfloat
    m6*: cfloat
    m10*: cfloat
    m14*: cfloat
    m3*: cfloat
    m7*: cfloat
    m11*: cfloat
    m15*: cfloat

  Image* = object ## Image type (multiple data formats supported)
                  ##
                  ## NOTE: Data stored in CPU memory (RAM)
    data*: pointer             ## Image raw data
    width*: cint               ## Image base width
    height*: cint              ## Image base height
    mipmaps*: cint             ## Mipmap levels, 1 by default
    format*: cint              ## Data format (TextureFormat type)

  Texture2D* = object ## Texture2D type (multiple internal formats supported)
    id*: cuint                 ## OpenGL texture id
    width*: cint               ## Texture base width
    height*: cint              ## Texture base height
    mipmaps*: cint             ## Mipmap levels, 1 by default
    format*: cint              ## Data format (TextureFormat type)

  RenderTexture2D* = object ## RenderTexture2D type, for texture rendering
    id*: cuint                 ## OpenGL Framebuffer Object (FBO) id
    texture*: Texture2D        ## Color buffer attachment texture
    depth*: Texture2D          ## Depth buffer attachment texture

  CharInfo* = object ## Font character info
    value*: cint               ## Character value (Unicode)
    rec*: Rectangle            ## Character rectangle in sprite font
    offsetX*: cint             ## Character offset X when drawing
    offsetY*: cint             ## Character offset Y when drawing
    advanceX*: cint            ## Character advance position X

  Font* = object ## Font type, includes texture and charSet array data
    texture*: Texture2D        ## Font texture
    baseSize*: cint            ## Base size (default chars height)
    charsCount*: cint          ## Number of characters
    chars*: ptr CharInfo       ## Characters info data

  Camera* = object ## Camera type, defines a camera position/orientation in 3d space
    position*: Vector3         ## Camera position
    target*: Vector3           ## Camera target it looks-at
    up*: Vector3               ## Camera up vector (rotation over its axis)
    fovy*: cfloat              ## Camera field-of-view apperture in Y (degrees)

  Camera2D* = object ## Camera2D type, defines a 2d camera
    offset*: Vector2           ## Camera offset (displacement from target)
    target*: Vector2           ## Camera target (rotation and zoom origin)
    rotation*: cfloat          ## Camera rotation in degrees
    zoom*: cfloat              ## Camera zoom (scaling), should be 1.0f by default

  BoundingBox* = object ## Bounding box type
    min*: Vector3              ## minimum vertex box-corner
    max*: Vector3              ## maximum vertex box-corner
  
  Mesh* = object ## Vertex data definning a mesh
    vertexCount*: cint         ## number of vertices stored in arrays
    triangleCount*: cint       ## number of triangles stored (indexed or not)
    vertices*: ptr cfloat       ## vertex position (XYZ - 3 components per vertex) (shader-location = 0)
    texcoords*: ptr cfloat      ## vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)
    texcoords2*: ptr cfloat     ## vertex second texture coordinates (useful for lightmaps) (shader-location = 5)
    normals*: ptr cfloat        ## vertex normals (XYZ - 3 components per vertex) (shader-location = 2)
    tangents*: ptr cfloat       ## vertex tangents (XYZ - 3 components per vertex) (shader-location = 4)
    colors*: ptr cuchar         ## vertex colors (RGBA - 4 components per vertex) (shader-location = 3)
    indices*: ptr cushort       ## vertex indices (in case vertex data comes indexed)
    vaoId*: cuint              ## OpenGL Vertex Array Object id
    vboId*: array[7, cuint]     ## OpenGL Vertex Buffer Objects id (7 types of vertex data)

  Shader* = object ## Shader type (generic shader)
    id*: cuint                 ## Shader program id
                               ## Vertex attributes locations (default locations)
    vertexLoc*: cint           ## Vertex attribute location point    (default-location = 0)
    texcoordLoc*: cint         ## Texcoord attribute location point  (default-location = 1)
    texcoord2Loc*: cint        ## Texcoord2 attribute location point (default-location = 5)
    normalLoc*: cint           ## Normal attribute location point    (default-location = 2)
    tangentLoc*: cint          ## Tangent attribute location point   (default-location = 4)
    colorLoc*: cint            ## Color attibute location point      (default-location = 3)
                               ## Uniform locations
    mvpLoc*: cint              ## ModelView-Projection matrix uniform location point (vertex shader)
    colDiffuseLoc*: cint       ## Diffuse color uniform location point (fragment shader)
    colAmbientLoc*: cint       ## Ambient color uniform location point (fragment shader)
    colSpecularLoc*: cint      ## Specular color uniform location point (fragment shader)
                               ## Texture map locations (generic for any kind of map)
    mapTexture0Loc*: cint      ## Map texture uniform location point (default-texture-unit = 0)
    mapTexture1Loc*: cint      ## Map texture uniform location point (default-texture-unit = 1)
    mapTexture2Loc*: cint      ## Map texture uniform location point (default-texture-unit = 2)

  MaterialMap* = object
    texture*: Texture2D      ## Material map texture
    color*: Color            ## Material map color
    value*: cfloat           ## Material map value

  Material* = object
    shader*: Shader            ## Standard shader (supports 3 map textures)
    texDiffuse*: Texture2D     ## Diffuse texture  (binded to shader mapTexture0Loc)
    texNormal*: Texture2D      ## Normal texture   (binded to shader mapTexture1Loc)
    texSpecular*: Texture2D    ## Specular texture (binded to shader mapTexture2Loc)
    colDiffuse*: Color         ## Diffuse color
    colAmbient*: Color         ## Ambient color
    colSpecular*: Color        ## Specular color
    glossiness*: cfloat        ## Glossiness level (Ranges from 0 to 1000)

  Model* = object
    mesh*: Mesh                ## Vertex data buffers (RAM and VRAM)
    transform*: Matrix         ## Local transform matrix
    material*: Material        ## Shader and textures data

  Ray* = object ## Ray type (useful for raycast)
    position*: Vector3         ## Ray position (origin)
    direction*: Vector3        ## Ray direction

  RayHitInfo* = object ## Raycast hit information
    hit*: bool                 ## Did the ray hit something?
    distance*: cfloat          ## Distance to nearest hit
    position*: Vector3         ## Position of nearest hit
    normal*: Vector3           ## Surface normal of hit

  Wave* = object ## Wave type, defines audio wave data
    sampleCount*: cuint        ## Number of samples
    sampleRate*: cuint         ## Frequency (samples per second)
    sampleSize*: cuint         ## Bit depth (bits per sample): 8, 16, 32 (24 not supported)
    channels*: cuint           ## Number of channels (1-mono, 2-stereo)
    data*: pointer             ## Buffer data pointer

  Sound* = object ## Sound source type
    source*: cuint             ## OpenAL audio source id
    buffer*: cuint             ## OpenAL audio buffer id
    format*: cint              ## OpenAL audio format specifier

  Music* = ptr object ## Music type (file streaming from memory)
                      ## NOTE: Anything longer than ~10 seconds should be streamed

  AudioStream* = object ## Audio stream type
                        ## NOTE: Useful to create custom audio streams not bound to a specific file
    sampleRate*: cuint         ## Frequency (samples per second)
    sampleSize*: cuint         ## Bit depth (bits per sample): 8, 16, 32 (24 not supported)
    channels*: cuint           ## Number of channels (1-mono, 2-stereo)
    format*: cint              ## Audio format specifier
    source*: cuint             ## Audio source id
    buffers*: array[2, cuint]  ## Audio buffers (double buffering)

  LogType* = enum
    INFO = 0, WARNING, ERROR, DEBUG, OTHER

  ## Texture formats
  ## NOTE: Support depends on OpenGL version and platform
  TextureFormat* = enum
    UNCOMPRESSED_GRAYSCALE = 1, ## 8 bit per pixel (no alpha)
    UNCOMPRESSED_GRAY_ALPHA,    ## 16 bpp (2 channels)
    UNCOMPRESSED_R5G6B5,        ## 16 bpp
    UNCOMPRESSED_R8G8B8,        ## 24 bpp
    UNCOMPRESSED_R5G5B5A1,      ## 16 bpp (1 bit alpha)
    UNCOMPRESSED_R4G4B4A4,      ## 16 bpp (4 bit alpha)
    UNCOMPRESSED_R8G8B8A8,      ## 32 bpp
    UNCOMPRESSED_R32G32B32,     ## 32 bit per channel (float) - HDR
    COMPRESSED_DXT1_RGB,        ## 4 bpp (no alpha)
    COMPRESSED_DXT1_RGBA,       ## 4 bpp (1 bit alpha)
    COMPRESSED_DXT3_RGBA,       ## 8 bpp
    COMPRESSED_DXT5_RGBA,       ## 8 bpp
    COMPRESSED_ETC1_RGB,        ## 4 bpp
    COMPRESSED_ETC2_RGB,        ## 4 bpp
    COMPRESSED_ETC2_EAC_RGBA,   ## 8 bpp
    COMPRESSED_PVRT_RGB,        ## 4 bpp
    COMPRESSED_PVRT_RGBA,       ## 4 bpp
    COMPRESSED_ASTC_4x4_RGBA,   ## 8 bpp
    COMPRESSED_ASTC_8x8_RGBA    ## 2 bpp

  ## Texture parameters: filter mode
  ## NOTE 1: Filtering considers mipmaps if available in the texture
  ## NOTE 2: Filter is accordingly set for minification and magnification
  TextureFilterMode* = enum
    FILTER_POINT = 0,         ## No filter, just pixel aproximation
    FILTER_BILINEAR,          ## Linear filtering
    FILTER_TRILINEAR,         ## Trilinear filtering (linear with mipmaps)
    FILTER_ANISOTROPIC_4X,    ## Anisotropic filtering 4x
    FILTER_ANISOTROPIC_8X,    ## Anisotropic filtering 8x
    FILTER_ANISOTROPIC_16X    ## Anisotropic filtering 16x

  ## Texture parameters: wrap mode
  TextureWrapMode* = enum
    WRAP_REPEAT = 0, WRAP_CLAMP, WRAP_MIRROR


  ## Color blending modes (pre-defined)
  BlendMode* = enum
    BLEND_ALPHA = 0, BLEND_ADDITIVE, BLEND_MULTIPLIED


  ## Gestures type
  ## NOTE: It could be used as flags to enable only some gestures
  Gestures* = enum
    GESTURE_NONE = 0, GESTURE_TAP = 1, GESTURE_DOUBLETAP = 2, GESTURE_HOLD = 4,
    GESTURE_DRAG = 8, GESTURE_SWIPE_RIGHT = 16, GESTURE_SWIPE_LEFT = 32,
    GESTURE_SWIPE_UP = 64, GESTURE_SWIPE_DOWN = 128, GESTURE_PINCH_IN = 256,
    GESTURE_PINCH_OUT = 512


  ## Camera system modes
  CameraMode* = enum
    CAMERA_CUSTOM = 0, CAMERA_FREE, CAMERA_ORBITAL, CAMERA_FIRST_PERSON,
    CAMERA_THIRD_PERSON


  ## Head Mounted Display devices
  VrDevice* = enum
    HMD_DEFAULT_DEVICE = 0, HMD_OCULUS_RIFT_DK2, HMD_OCULUS_RIFT_CV1,
    HMD_VALVE_HTC_VIVE, HMD_SAMSUNG_GEAR_VR, HMD_GOOGLE_CARDBOARD,
    HMD_SONY_PLAYSTATION_VR, HMD_RAZER_OSVR, HMD_FOVE_VR


  ## RRESData type
  RRESDataType* = enum
    RRES_TYPE_RAW = 0, RRES_TYPE_IMAGE, RRES_TYPE_WAVE, RRES_TYPE_VERTEX,
    RRES_TYPE_TEXT, RRES_TYPE_FONT_IMAGE, RRES_TYPE_FONT_CHARDATA, ## CharInfo data array
    RRES_TYPE_DIRECTORY

## ------------------------------------------------------------------------------------
## Window and Graphics Device Functions (Module: core)
## ------------------------------------------------------------------------------------
## Window-related functions

proc InitWindow*(width: cint; height: cint; title: cstring)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Initialize window and OpenGL context

proc CloseWindow*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Close window and unload OpenGL context

proc WindowShouldClose*: bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Check if KEY_ESCAPE pressed or Close icon pressed

proc IsWindowMinimized*: bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Check if window has been minimized (or lost focus)

proc ToggleFullscreen*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Toggle fullscreen mode (only PLATFORM_DESKTOP)

proc SetWindowIcon*(image: Image)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set icon for window (only PLATFORM_DESKTOP)

proc SetWindowPosition*(x: cint; y: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set window position on screen (only PLATFORM_DESKTOP)

proc SetWindowMonitor*(monitor: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set monitor for the current window (fullscreen mode)

proc SetWindowMinSize*(width: cint; height: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)

proc GetScreenWidth*: cint
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get current screen width

proc GetScreenHeight*: cint
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get current screen height
## Cursor-related functions

proc ShowCursor*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Shows cursor

proc HideCursor*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Hides cursor

proc IsCursorHidden*: bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Check if cursor is not visible

proc EnableCursor*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Enables cursor (unlock cursor)

proc DisableCursor*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Disables cursor (lock cursor)
## Drawing-related functions

proc ClearBackground*(color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set background color (framebuffer clear color)

proc BeginDrawing*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Setup canvas (framebuffer) to start drawing

proc EndDrawing*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## End canvas drawing and swap buffers (double buffering)

proc BeginMode2D*(camera: Camera2D)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Initialize 2D mode with custom camera (2D)

proc EndMode2D*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Ends 2D mode with custom camera

proc BeginMode3D*(camera: Camera)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Initializes 3D mode with custom camera (3D)

proc EndMode3D*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Ends 3D mode and returns to default 2D orthographic mode

proc BeginTextureMode*(target: RenderTexture2D)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Initializes render texture for drawing

proc EndTextureMode*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Ends drawing to render texture
## Screen-space-related functions

proc GetMouseRay*(mousePosition: Vector2; camera: Camera): Ray
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Returns a ray trace from mouse position

proc GetWorldToScreen*(position: Vector3; camera: Camera): Vector2
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Returns the screen space position for a 3d world space position

proc GetCameraMatrix*(camera: Camera): Matrix
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Returns camera transform matrix (view matrix)
## Timming-related functions

proc SetTargetFPS*(fps: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set target FPS (maximum)

proc GetFPS*: cint
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Returns current FPS

proc GetFrameTime*: cfloat
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Returns time in seconds for last frame drawn
## Color-related functions

proc GetHexValue*(color: Color): cint
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Returns hexadecimal value for a Color

proc GetColor*(hexValue: cint): Color
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Returns a Color struct from hexadecimal value

proc Fade*(color: Color; alpha: cfloat): Color
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Color fade-in or fade-out, alpha goes from 0.0f to 1.0f

proc VectorToFloat*(vec: Vector3): ptr cfloat
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Converts Vector3 to float array

proc MatrixToFloat*(mat: Matrix): ptr cfloat
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Converts Matrix to float array
## Misc. functions

proc ShowLogo*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Activate raylib logo at startup (can be done with flags)

proc SetConfigFlags*(flags: char)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Setup window configuration flags (view FLAGS)

proc TraceLog*(logType: cint; text: cstring)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Show trace log messages (INFO, WARNING, ERROR, DEBUG)

proc TakeScreenshot*(fileName: cstring)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Takes a screenshot of current screen (saved a .png)

proc GetRandomValue*(min: cint; max: cint): cint
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Returns a random value between min and max (both included)
## Files management functions

proc IsFileExtension*(fileName: cstring; ext: cstring): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Check file extension

proc GetDirectoryPath*(fileName: cstring): cstring
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get directory for a given fileName (with path)

proc GetWorkingDirectory*: cstring
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get current working directory

proc ChangeDirectory*(dir: cstring): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Change working directory, returns true if success

proc IsFileDropped*: bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Check if a file has been dropped into window

proc GetDroppedFiles*(count: ptr cint): cstringArray
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get dropped files names

proc ClearDroppedFiles*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Clear dropped files paths buffer
## Persistent storage management

proc StorageSaveValue*(position: cint; value: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Save integer value to storage file (to defined position)

proc StorageLoadValue*(position: cint): cint
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load integer value from storage file (from defined position)

## ------------------------------------------------------------------------------------
## Input Handling Functions (Module: core)
## ------------------------------------------------------------------------------------
## Input-related functions: keyboard

proc IsKeyPressed*(key: cint): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Detect if a key has been pressed once

proc IsKeyDown*(key: cint): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Detect if a key is being pressed

proc IsKeyReleased*(key: cint): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Detect if a key has been released once

proc IsKeyUp*(key: cint): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Detect if a key is NOT being pressed

proc GetKeyPressed*: cint
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get latest key pressed

proc SetExitKey*(key: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set a custom key to exit program (default is ESC)
## Input-related functions: gamepads

proc IsGamepadAvailable*(gamepad: cint): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Detect if a gamepad is available

proc IsGamepadName*(gamepad: cint; name: cstring): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Check gamepad name (if available)

proc GetGamepadName*(gamepad: cint): cstring
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Return gamepad internal name id

proc IsGamepadButtonPressed*(gamepad: cint; button: cint): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Detect if a gamepad button has been pressed once

proc IsGamepadButtonDown*(gamepad: cint; button: cint): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Detect if a gamepad button is being pressed

proc IsGamepadButtonReleased*(gamepad: cint; button: cint): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Detect if a gamepad button has been released once

proc IsGamepadButtonUp*(gamepad: cint; button: cint): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Detect if a gamepad button is NOT being pressed

proc GetGamepadButtonPressed*: cint
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get the last gamepad button pressed

proc GetGamepadAxisCount*(gamepad: cint): cint
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Return gamepad axis count for a gamepad

proc GetGamepadAxisMovement*(gamepad: cint; axis: cint): cfloat
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Return axis movement value for a gamepad axis
## Input-related functions: mouse

proc IsMouseButtonPressed*(button: cint): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Detect if a mouse button has been pressed once

proc IsMouseButtonDown*(button: cint): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Detect if a mouse button is being pressed

proc IsMouseButtonReleased*(button: cint): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Detect if a mouse button has been released once

proc IsMouseButtonUp*(button: cint): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Detect if a mouse button is NOT being pressed

proc GetMouseX*: cint
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Returns mouse position X

proc GetMouseY*: cint
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Returns mouse position Y

proc GetMousePosition*: Vector2
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Returns mouse position XY

proc SetMousePosition*(position: Vector2)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set mouse position XY

proc GetMouseWheelMove*: cint
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Returns mouse wheel movement Y
## Input-related functions: touch

proc GetTouchX*: cint
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Returns touch position X for touch point 0 (relative to screen size)

proc GetTouchY*: cint
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Returns touch position Y for touch point 0 (relative to screen size)

proc GetTouchPosition*(index: cint): Vector2
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Returns touch position XY for a touch point index (relative to screen size)

## ------------------------------------------------------------------------------------
## Gestures and Touch Handling Functions (Module: gestures)
## ------------------------------------------------------------------------------------

proc SetGesturesEnabled*(gestureFlags: cuint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Enable a set of gestures using flags

proc IsGestureDetected*(gesture: cint): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Check if a gesture have been detected

proc GetGestureDetected*: cint
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get latest detected gesture

proc GetTouchPointsCount*: cint
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get touch points count

proc GetGestureHoldDuration*: cfloat
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get gesture hold time in milliseconds

proc GetGestureDragVector*: Vector2
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get gesture drag vector

proc GetGestureDragAngle*: cfloat
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get gesture drag angle

proc GetGesturePinchVector*: Vector2
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get gesture pinch delta

proc GetGesturePinchAngle*: cfloat
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get gesture pinch angle

## ------------------------------------------------------------------------------------
## Camera System Functions (Module: camera)
## ------------------------------------------------------------------------------------

proc SetCameraMode*(camera: Camera; mode: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set camera mode (multiple camera modes available)

proc UpdateCamera*(camera: ptr Camera)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Update camera position for selected mode

proc SetCameraPanControl*(panKey: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set camera pan key to combine with mouse movement (free camera)

proc SetCameraAltControl*(altKey: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set camera alt key to combine with mouse movement (free camera)

proc SetCameraSmoothZoomControl*(szKey: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set camera smooth zoom key to combine with mouse (free camera)

proc SetCameraMoveControls*(frontKey: cint; backKey: cint; rightKey: cint;
                           leftKey: cint; upKey: cint; downKey: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set camera move controls (1st person and 3rd person cameras)

## ------------------------------------------------------------------------------------
## Basic Shapes Drawing Functions (Module: shapes)
## ------------------------------------------------------------------------------------
## Basic shapes drawing functions

proc DrawPixel*(posX: cint; posY: cint; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a pixel

proc DrawPixelV*(position: Vector2; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a pixel (Vector version)

proc DrawLine*(startPosX: cint; startPosY: cint; endPosX: cint; endPosY: cint;
              color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a line

proc DrawLineV*(startPos: Vector2; endPos: Vector2; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a line (Vector version)

proc DrawLineEx*(startPos: Vector2; endPos: Vector2; thick: cfloat; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a line defining thickness

proc DrawLineBezier*(startPos: Vector2; endPos: Vector2; thick: cfloat; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a line using cubic-bezier curves in-out

proc DrawCircle*(centerX: cint; centerY: cint; radius: cfloat; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a color-filled circle

proc DrawCircleGradient*(centerX: cint; centerY: cint; radius: cfloat; color1: Color;
                        color2: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a gradient-filled circle

proc DrawCircleV*(center: Vector2; radius: cfloat; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a color-filled circle (Vector version)

proc DrawCircleLines*(centerX: cint; centerY: cint; radius: cfloat; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw circle outline

proc DrawRectangle*(posX: cint; posY: cint; width: cint; height: cint; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a color-filled rectangle

proc DrawRectangleRec*(rec: Rectangle; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a color-filled rectangle

proc DrawRectanglePro*(rec: Rectangle; origin: Vector2; rotation: cfloat; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a color-filled rectangle with pro parameters

proc DrawRectangleGradientH*(posX: cint; posY: cint; width: cint; height: cint;
                           color1: Color; color2: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a gradient-filled rectangle

proc DrawRectangleV*(position: Vector2; size: Vector2; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a color-filled rectangle (Vector version)

proc DrawRectangleLines*(posX: cint; posY: cint; width: cint; height: cint; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw rectangle outline

proc DrawTriangle*(v1: Vector2; v2: Vector2; v3: Vector2; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a color-filled triangle

proc DrawTriangleLines*(v1: Vector2; v2: Vector2; v3: Vector2; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw triangle outline

proc DrawPoly*(center: Vector2; sides: cint; radius: cfloat; rotation: cfloat;
              color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a regular polygon (Vector version)

proc DrawPolyEx*(points: ptr Vector2; numPoints: cint; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a closed polygon defined by points

proc DrawPolyExLines*(points: ptr Vector2; numPoints: cint; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw polygon lines
## Basic shapes collision detection functions

proc CheckCollisionRecs*(rec1: Rectangle; rec2: Rectangle): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Check collision between two rectangles

proc CheckCollisionCircles*(center1: Vector2; radius1: cfloat; center2: Vector2;
                           radius2: cfloat): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Check collision between two circles

proc CheckCollisionCircleRec*(center: Vector2; radius: cfloat; rec: Rectangle): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Check collision between circle and rectangle

proc GetCollisionRec*(rec1: Rectangle; rec2: Rectangle): Rectangle
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get collision rectangle for two rectangles collision

proc CheckCollisionPointRec*(point: Vector2; rec: Rectangle): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Check if point is inside rectangle

proc CheckCollisionPointCircle*(point: Vector2; center: Vector2; radius: cfloat): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Check if point is inside circle

proc CheckCollisionPointTriangle*(point: Vector2; p1: Vector2; p2: Vector2; p3: Vector2): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Check if point is inside a triangle

## ------------------------------------------------------------------------------------
## Texture Loading and Drawing Functions (Module: textures)
## ------------------------------------------------------------------------------------
## Image/Texture2D data loading/unloading functions

proc LoadImage*(fileName: cstring): Image
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load image from file into CPU memory (RAM)

proc LoadImageEx*(pixels: ptr Color; width: cint; height: cint): Image
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load image from Color array data (RGBA - 32bit)

proc LoadImagePro*(data: pointer; width: cint; height: cint; format: cint): Image
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load image from raw data with parameters

proc LoadImageRaw*(fileName: cstring; width: cint; height: cint; format: cint;
                  headerSize: cint): Image
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load image from RAW file data

proc LoadTexture*(fileName: cstring): Texture2D
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load texture from file into GPU memory (VRAM)

proc LoadTextureFromImage*(image: Image): Texture2D
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load texture from image data

proc LoadRenderTexture*(width: cint; height: cint): RenderTexture2D
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load texture for rendering (framebuffer)

proc UnloadImage*(image: Image)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Unload image from CPU memory (RAM)

proc UnloadTexture*(texture: Texture2D)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Unload texture from GPU memory (VRAM)

proc UnloadRenderTexture*(target: RenderTexture2D)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Unload render texture from GPU memory (VRAM)

proc GetImageData*(image: Image): ptr Color
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get pixel data from image as a Color struct array

proc GetTextureData*(texture: Texture2D): Image
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get pixel data from GPU texture and return an Image

proc UpdateTexture*(texture: Texture2D; pixels: pointer)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Update GPU texture with new data
## Image manipulation functions

proc ImageToPOT*(image: ptr Image; fillColor: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Convert image to POT (power-of-two)

proc ImageFormat*(image: ptr Image; newFormat: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Convert image data to desired format

proc ImageAlphaMask*(image: ptr Image; alphaMask: Image)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Apply alpha mask to image

proc ImageDither*(image: ptr Image; rBpp: cint; gBpp: cint; bBpp: cint; aBpp: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Dither image data to 16bpp or lower (Floyd-Steinberg dithering)

proc ImageCopy*(image: Image): Image
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Create an image duplicate (useful for transformations)

proc ImageCrop*(image: ptr Image; crop: Rectangle)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Crop an image to a defined rectangle

proc ImageResize*(image: ptr Image; newWidth: cint; newHeight: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Resize and image (bilinear filtering)

proc ImageResizeNN*(image: ptr Image; newWidth: cint; newHeight: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Resize and image (Nearest-Neighbor scaling algorithm)

proc ImageText*(text: cstring; fontSize: cint; color: Color): Image
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Create an image from text (default font)

proc ImageTextEx*(font: Font; text: cstring; fontSize: cfloat; spacing: cint;
                 tint: Color): Image
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Create an image from text (custom sprite font)

proc ImageDraw*(dst: ptr Image; src: Image; srcRec: Rectangle; dstRec: Rectangle)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a source image within a destination image

proc ImageDrawText*(dst: ptr Image; position: Vector2; text: cstring; fontSize: cint;
                   color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw text (default font) within an image (destination)

proc ImageDrawTextEx*(dst: ptr Image; position: Vector2; font: Font;
                     text: cstring; fontSize: cfloat; spacing: cint; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw text (custom sprite font) within an image (destination)

proc ImageFlipVertical*(image: ptr Image)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Flip image vertically

proc ImageFlipHorizontal*(image: ptr Image)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Flip image horizontally

proc ImageColorTint*(image: ptr Image; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Modify image color: tint

proc ImageColorInvert*(image: ptr Image)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Modify image color: invert

proc ImageColorGrayscale*(image: ptr Image)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Modify image color: grayscale

proc ImageColorContrast*(image: ptr Image; contrast: cfloat)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Modify image color: contrast (-100 to 100)

proc ImageColorBrightness*(image: ptr Image; brightness: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Modify image color: brightness (-255 to 255)
## Texture2D configuration functions

proc GenTextureMipmaps*(texture: ptr Texture2D)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Generate GPU mipmaps for a texture

proc SetTextureFilter*(texture: Texture2D; filterMode: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set texture scaling filter mode

proc SetTextureWrap*(texture: Texture2D; wrapMode: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set texture wrapping mode
## Texture2D drawing functions

proc DrawTexture*(texture: Texture2D; posX: cint; posY: cint; tint: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a Texture2D

proc DrawTextureV*(texture: Texture2D; position: Vector2; tint: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a Texture2D with position defined as Vector2

proc DrawTextureEx*(texture: Texture2D; position: Vector2; rotation: cfloat;
                   scale: cfloat; tint: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a Texture2D with extended parameters

proc DrawTextureRec*(texture: Texture2D; sourceRec: Rectangle; position: Vector2;
                    tint: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a part of a texture defined by a rectangle

proc DrawTexturePro*(texture: Texture2D; sourceRec: Rectangle; destRec: Rectangle;
                    origin: Vector2; rotation: cfloat; tint: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a part of a texture defined by a rectangle with 'pro' parameters

## ------------------------------------------------------------------------------------
## Font Loading and Text Drawing Functions (Module: text)
## ------------------------------------------------------------------------------------
## Font loading/unloading functions

proc GetDefaultFont*: Font
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get the default Font

proc LoadFont*(fileName: cstring): Font
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load Font from file into GPU memory (VRAM)

proc LoadFontEx*(fileName: cstring; fontSize: cint; charsCount: cint;
                      fontChars: ptr cint): Font
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load Font from file with extended parameters

proc UnloadFont*(font: Font)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Unload Font from GPU memory (VRAM)
## Text drawing functions

proc DrawFPS*(posX: cint; posY: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Shows current FPS

proc DrawText*(text: cstring; posX: cint; posY: cint; fontSize: cint; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw text (using default font)

proc DrawTextEx*(font: Font; text: cstring; position: Vector2;
                fontSize: cfloat; spacing: cint; tint: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
  ## Draw text using Font and additional parameters
## Text misc. functions

proc MeasureText*(text: cstring; fontSize: cint): cint
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Measure string width for default font

proc MeasureTextEx*(font: Font; text: cstring; fontSize: cfloat;
                   spacing: cint): Vector2
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Measure string size for Font

proc FormatText*(text: cstring): cstring
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Formatting of text with variables to 'embed'

proc SubText*(text: cstring; position: cint; length: cint): cstring
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get a piece of a text string

## ------------------------------------------------------------------------------------
## Basic 3d Shapes Drawing Functions (Module: models)
## ------------------------------------------------------------------------------------
## Basic geometric 3D shapes drawing functions

proc DrawLine3D*(startPos: Vector3; endPos: Vector3; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a line in 3D world space

proc DrawCircle3D*(center: Vector3; radius: cfloat; rotationAxis: Vector3;
                  rotationAngle: cfloat; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a circle in 3D world space

proc DrawCube*(position: Vector3; width: cfloat; height: cfloat; length: cfloat;
              color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw cube

proc DrawCubeV*(position: Vector3; size: Vector3; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw cube (Vector version)

proc DrawCubeWires*(position: Vector3; width: cfloat; height: cfloat; length: cfloat;
                   color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw cube wires

proc DrawCubeTexture*(texture: Texture2D; position: Vector3; width: cfloat;
                     height: cfloat; length: cfloat; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw cube textured

proc DrawSphere*(centerPos: Vector3; radius: cfloat; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw sphere

proc DrawSphereEx*(centerPos: Vector3; radius: cfloat; rings: cint; slices: cint;
                  color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw sphere with extended parameters

proc DrawSphereWires*(centerPos: Vector3; radius: cfloat; rings: cint; slices: cint;
                     color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw sphere wires

proc DrawCylinder*(position: Vector3; radiusTop: cfloat; radiusBottom: cfloat;
                  height: cfloat; slices: cint; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a cylinder/cone

proc DrawCylinderWires*(position: Vector3; radiusTop: cfloat; radiusBottom: cfloat;
                       height: cfloat; slices: cint; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a cylinder/cone wires

proc DrawPlane*(centerPos: Vector3; size: Vector2; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a plane XZ

proc DrawRay*(ray: Ray; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a ray line

proc DrawGrid*(slices: cint; spacing: cfloat)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a grid (centered at (0, 0, 0))

proc DrawGizmo*(position: Vector3)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw simple gizmo
## DrawTorus(), DrawTeapot() could be useful?

## ------------------------------------------------------------------------------------
## Model 3d Loading and Drawing Functions (Module: models)
## ------------------------------------------------------------------------------------
## Model loading/unloading functions

proc LoadMesh*(fileName: cstring): Mesh
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load mesh from file

proc LoadMeshEx*(numVertex: cint; vData: ptr cfloat; vtData: ptr cfloat;
                vnData: ptr cfloat; cData: ptr Color): Mesh
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load mesh from vertex data

proc LoadModel*(fileName: cstring): Model
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load model from file

proc LoadModelFromMesh*(data: Mesh; dynamic: bool): Model
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load model from mesh data

proc LoadHeightmap*(heightmap: Image; size: Vector3): Model
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load heightmap model from image data

proc LoadCubicmap*(cubicmap: Image): Model
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load cubes-based map model from image data

proc UnloadMesh*(mesh: ptr Mesh)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Unload mesh from memory (RAM and/or VRAM)

proc UnloadModel*(model: Model)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Unload model from memory (RAM and/or VRAM)
## Material loading/unloading functions

proc LoadMaterial*(fileName: cstring): Material
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load material from file

proc LoadDefaultMaterial*: Material
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load default material (uses default models shader)

proc UnloadMaterial*(material: Material)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Unload material from GPU memory (VRAM)
## Model drawing functions

proc DrawModel*(model: Model; position: Vector3; scale: cfloat; tint: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a model (with texture if set)

proc DrawModelEx*(model: Model; position: Vector3; rotationAxis: Vector3;
                 rotationAngle: cfloat; scale: Vector3; tint: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a model with extended parameters

proc DrawModelWires*(model: Model; position: Vector3; scale: cfloat; tint: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a model wires (with texture if set)

proc DrawModelWiresEx*(model: Model; position: Vector3; rotationAxis: Vector3;
                      rotationAngle: cfloat; scale: Vector3; tint: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a model wires (with texture if set) with extended parameters

proc DrawBoundingBox*(box: BoundingBox; color: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw bounding box (wires)

proc DrawBillboard*(camera: Camera; texture: Texture2D; center: Vector3; size: cfloat;
                   tint: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a billboard texture

proc DrawBillboardRec*(camera: Camera; texture: Texture2D; sourceRec: Rectangle;
                      center: Vector3; size: cfloat; tint: Color)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Draw a billboard texture defined by sourceRec
## Collision detection functions

proc CalculateBoundingBox*(mesh: Mesh): BoundingBox
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Calculate mesh bounding box limits

proc CheckCollisionSpheres*(centerA: Vector3; radiusA: cfloat; centerB: Vector3;
                           radiusB: cfloat): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Detect collision between two spheres

proc CheckCollisionBoxes*(box1: BoundingBox; box2: BoundingBox): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Detect collision between two bounding boxes

proc CheckCollisionBoxSphere*(box: BoundingBox; centerSphere: Vector3;
                             radiusSphere: cfloat): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Detect collision between box and sphere

proc CheckCollisionRaySphere*(ray: Ray; spherePosition: Vector3; sphereRadius: cfloat): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Detect collision between ray and sphere

proc CheckCollisionRaySphereEx*(ray: Ray; spherePosition: Vector3;
                               sphereRadius: cfloat; collisionPoint: ptr Vector3): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Detect collision between ray and sphere, returns collision point

proc CheckCollisionRayBox*(ray: Ray; box: BoundingBox): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Detect collision between ray and box

proc GetCollisionRayTriangle*(ray: Ray; p1: Vector3; p2: Vector3; p3: Vector3): RayHitInfo
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get collision info between ray and triangle

proc GetCollisionRayGround*(ray: Ray; groundHeight: cfloat): RayHitInfo
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get collision info between ray and ground plane (Y-normal plane)

## ------------------------------------------------------------------------------------
## Shaders System Functions (Module: rlgl)
## NOTE: This functions are useless when using OpenGL 1.1
## ------------------------------------------------------------------------------------
## Shader loading/unloading functions

proc LoadText*(fileName: cstring): cstring
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load chars array from text file

proc LoadShader*(vsFileName: cstring; fsFileName: cstring): Shader
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load shader from files and bind default locations

proc UnloadShader*(shader: Shader)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Unload shader from GPU memory (VRAM)

proc GetDefaultShader*: Shader
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get default shader

proc GetDefaultTexture*: Texture2D
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get default texture
## Shader configuration functions

proc GetShaderLocation*(shader: Shader; uniformName: cstring): cint
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get shader uniform location

proc SetShaderValue*(shader: Shader; uniformLoc: cint; value: ptr cfloat; size: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set shader uniform value (float)

proc SetShaderValuei*(shader: Shader; uniformLoc: cint; value: ptr cint; size: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set shader uniform value (int)

proc SetShaderValueMatrix*(shader: Shader; uniformLoc: cint; mat: Matrix)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set shader uniform value (matrix 4x4)

proc SetMatrixProjection*(proj: Matrix)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set a custom projection matrix (replaces internal projection matrix)

proc SetMatrixModelview*(view: Matrix)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set a custom modelview matrix (replaces internal modelview matrix)
## Shading begin/end functions

proc BeginShaderMode*(shader: Shader)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Begin custom shader drawing

proc EndShaderMode*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## End custom shader drawing (use default shader)

proc BeginBlendMode*(mode: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Begin blending mode (alpha, additive, multiplied)

proc EndBlendMode*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## End blending mode (reset to default: alpha blending)
## VR control functions

proc InitVrSimulator*(vrDevice: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Init VR simulator for selected device

proc CloseVrSimulator*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Close VR simulator for current device

proc IsVrSimulatorReady*: bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Detect if VR simulator is ready

proc UpdateVrTracking*(camera: ptr Camera)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Update VR tracking (position and orientation) and camera

proc ToggleVrMode*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Enable/Disable VR experience

proc BeginVrDrawing*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Begin VR simulator stereo rendering

proc EndVrDrawing*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## End VR simulator stereo rendering

## ------------------------------------------------------------------------------------
## Audio Loading and Playing Functions (Module: audio)
## ------------------------------------------------------------------------------------
## Audio device management functions

proc InitAudioDevice*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Initialize audio device and context

proc CloseAudioDevice*
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Close the audio device and context

proc IsAudioDeviceReady*: bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Check if audio device has been initialized successfully

proc SetMasterVolume*(volume: cfloat)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set master volume (listener)
## Wave/Sound loading/unloading functions

proc LoadWave*(fileName: cstring): Wave
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load wave data from file

proc LoadWaveEx*(data: pointer; sampleCount: cint; sampleRate: cint; sampleSize: cint;
                channels: cint): Wave
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load wave data from raw array data

proc LoadSound*(fileName: cstring): Sound
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load sound from file

proc LoadSoundFromWave*(wave: Wave): Sound
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load sound from wave data

proc UpdateSound*(sound: Sound; data: pointer; samplesCount: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Update sound buffer with new data

proc UnloadWave*(wave: Wave)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Unload wave data

proc UnloadSound*(sound: Sound)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Unload sound
## Wave/Sound management functions

proc PlaySound*(sound: Sound)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Play a sound

proc PauseSound*(sound: Sound)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Pause a sound

proc ResumeSound*(sound: Sound)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Resume a paused sound

proc StopSound*(sound: Sound)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Stop playing a sound

proc IsSoundPlaying*(sound: Sound): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Check if a sound is currently playing

proc SetSoundVolume*(sound: Sound; volume: cfloat)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set volume for a sound (1.0 is max level)

proc SetSoundPitch*(sound: Sound; pitch: cfloat)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set pitch for a sound (1.0 is base level)

proc WaveFormat*(wave: ptr Wave; sampleRate: cint; sampleSize: cint; channels: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Convert wave data to desired format

proc WaveCopy*(wave: Wave): Wave
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Copy a wave to a new wave

proc WaveCrop*(wave: ptr Wave; initSample: cint; finalSample: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Crop a wave to defined samples range

proc GetWaveData*(wave: Wave): ptr cfloat
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get samples data from wave as a floats array
## Music management functions

proc LoadMusicStream*(fileName: cstring): Music
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Load music stream from file

proc UnloadMusicStream*(music: Music)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Unload music stream

proc PlayMusicStream*(music: Music)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Start music playing

proc UpdateMusicStream*(music: Music)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Updates buffers for music streaming

proc StopMusicStream*(music: Music)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Stop music playing

proc PauseMusicStream*(music: Music)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Pause music playing

proc ResumeMusicStream*(music: Music)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Resume playing paused music

proc IsMusicPlaying*(music: Music): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Check if music is playing

proc SetMusicVolume*(music: Music; volume: cfloat)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set volume for music (1.0 is max level)

proc SetMusicPitch*(music: Music; pitch: cfloat)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set pitch for a music (1.0 is base level)

proc SetMusicLoopCount*(music: Music; count: cfloat)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Set music loop count (loop repeats)

proc GetMusicTimeLength*(music: Music): cfloat
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get music time length (in seconds)

proc GetMusicTimePlayed*(music: Music): cfloat
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Get current music time played (in seconds)
## AudioStream management functions

proc InitAudioStream*(sampleRate: cuint; sampleSize: cuint; channels: cuint): AudioStream
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Init audio stream (to stream raw audio pcm data)

proc UpdateAudioStream*(stream: AudioStream; data: pointer; samplesCount: cint)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Update audio stream buffers with data

proc CloseAudioStream*(stream: AudioStream)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Close audio stream and free memory

proc IsAudioBufferProcessed*(stream: AudioStream): bool
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Check if any audio stream buffers requires refill

proc PlayAudioStream*(stream: AudioStream)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Play audio stream

proc PauseAudioStream*(stream: AudioStream)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Pause audio stream

proc ResumeAudioStream*(stream: AudioStream)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}
## Resume audio stream

## Stop audio stream
proc StopAudioStream*(stream: AudioStream)
  {.cdecl, importc, dynlib: LIB_RAYLIB.}

# Some Basic Colors
# NOTE: Custom raylib color palette for amazing visuals on WHITE background
let
  LIGHTGRAY* = Color(r: 200, g: 200, b: 200, a: 255) ## Light Gray
  GRAY* = Color(r: 130, g: 130, b: 130, a: 255)      ## Gray
  DARKGRAY* = Color(r: 80, g: 80, b: 80, a: 255)     ## Dark Gray
  YELLOW* = Color(r: 253, g: 249, b: 0, a: 255)      ## Yellow
  GOLD* = Color(r: 255, g: 203, b: 0, a: 255)        ## Gold
  ORANGE* = Color(r: 255, g: 161, b: 0, a: 255)      ## Orange
  PINK* = Color(r: 255, g: 109, b: 194, a: 255)      ## Pink
  RED* = Color(r: 230, g: 41, b: 55, a: 255)         ## Red
  MAROON* = Color(r: 190, g: 33, b: 55, a: 255)      ## Maroon
  GREEN* = Color(r: 0, g: 228, b: 48, a: 255)        ## Green
  LIME* = Color(r: 0, g: 158, b: 47, a: 255)         ## Lime
  DARKGREEN* = Color(r: 0, g: 117, b: 44, a: 255)    ## Dark Green
  SKYBLUE* = Color(r: 102, g: 191, b: 255, a: 255)   ## Sky Blue
  BLUE* = Color(r: 0, g: 121, b: 241, a: 255)        ## Blue
  DARKBLUE* = Color(r: 0, g: 82, b: 172, a: 255)     ## Dark Blue
  PURPLE* = Color(r: 200, g: 122, b: 255, a: 255)    ## Purple
  VIOLET* = Color(r: 135, g: 60, b: 190, a: 255)     ## Violet
  DARKPURPLE* = Color(r: 112, g: 31, b: 126, a: 255) ## Dark Purple
  BEIGE* = Color(r: 211, g: 176, b: 131, a: 255)     ## Beige
  BROWN* = Color(r: 127, g: 106, b: 79, a: 255)      ## Brown
  DARKBROWN* = Color(r: 76, g: 63, b: 47, a: 255)    ## Dark Brown
  WHITE* = Color(r: 255, g: 255, b: 255, a: 255)     ## White
  BLACK* = Color(r: 0, g: 0, b: 0, a: 255)           ## Black
  BLANK* = Color(r: 0, g: 0, b: 0, a: 0)             ## Blank (Transparent)
  MAGENTA* = Color(r: 255, g: 0, b: 255, a: 255)     ## Magenta
  RAYWHITE* = Color(r: 245, g: 245, b: 245, a: 255)  ## My own White