.class public Lcom/android/camera/hardware/Camera$Parameters;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Parameters"
.end annotation


# static fields
.field public static final ANTIBANDING_50HZ:Ljava/lang/String; = "50hz"

.field public static final ANTIBANDING_60HZ:Ljava/lang/String; = "60hz"

.field public static final ANTIBANDING_AUTO:Ljava/lang/String; = "auto"

.field public static final ANTIBANDING_OFF:Ljava/lang/String; = "off"

.field public static final AUTO_EXPOSURE_CENTER_WEIGHTED:Ljava/lang/String; = "meter-center"

.field public static final AUTO_EXPOSURE_FRAME_AVG:Ljava/lang/String; = "meter-average"

.field public static final AUTO_EXPOSURE_SPOT_METERING:Ljava/lang/String; = "meter-spot"

.field public static final CAF_OFF:Ljava/lang/String; = "caf-off"

.field public static final CAF_ON:Ljava/lang/String; = "caf-on"

.field public static final EFFECT_AQUA:Ljava/lang/String; = "aqua"

.field public static final EFFECT_BLACKBOARD:Ljava/lang/String; = "blackboard"

.field public static final EFFECT_MONO:Ljava/lang/String; = "mono"

.field public static final EFFECT_NEGATIVE:Ljava/lang/String; = "negative"

.field public static final EFFECT_NONE:Ljava/lang/String; = "none"

.field public static final EFFECT_POSTERIZE:Ljava/lang/String; = "posterize"

.field public static final EFFECT_SEPIA:Ljava/lang/String; = "sepia"

.field public static final EFFECT_SOLARIZE:Ljava/lang/String; = "solarize"

.field public static final EFFECT_WHITEBOARD:Ljava/lang/String; = "whiteboard"

.field public static final FLASH_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final FLASH_MODE_OFF:Ljava/lang/String; = "off"

.field public static final FLASH_MODE_ON:Ljava/lang/String; = "on"

.field public static final FLASH_MODE_RED_EYE:Ljava/lang/String; = "red-eye"

.field public static final FLASH_MODE_TORCH:Ljava/lang/String; = "torch"

.field public static final FOCUS_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final FOCUS_MODE_EDOF:Ljava/lang/String; = "edof"

.field public static final FOCUS_MODE_FIXED:Ljava/lang/String; = "fixed"

.field public static final FOCUS_MODE_INFINITY:Ljava/lang/String; = "infinity"

.field public static final FOCUS_MODE_MACRO:Ljava/lang/String; = "macro"

.field public static final FOCUS_MODE_NORMAL:Ljava/lang/String; = "normal"

.field public static final ISO_100:Ljava/lang/String; = "100"

.field public static final ISO_1250:Ljava/lang/String; = "1250"

.field public static final ISO_200:Ljava/lang/String; = "200"

.field public static final ISO_400:Ljava/lang/String; = "400"

.field public static final ISO_800:Ljava/lang/String; = "800"

.field public static final ISO_AUTO:Ljava/lang/String; = "auto"

.field public static final ISO_HJR:Ljava/lang/String; = "deblur"

.field private static final KEY_ANTIBANDING:Ljava/lang/String; = "antibanding"

.field private static final KEY_AUTO_EXPOSURE:Ljava/lang/String; = "meter-mode"

.field private static final KEY_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field private static final KEY_CAF:Ljava/lang/String; = "continuous-af"

.field private static final KEY_CONTRAST:Ljava/lang/String; = "contrast"

.field private static final KEY_DEFAULT_BRIGHTNESS:Ljava/lang/String; = "brightness-def"

.field private static final KEY_DEFAULT_CONTRAST:Ljava/lang/String; = "contrast-def"

.field private static final KEY_DEFAULT_SATURATION:Ljava/lang/String; = "saturation-def"

.field private static final KEY_DEFAULT_SHARPNESS:Ljava/lang/String; = "sharpness-def"

.field private static final KEY_EFFECT:Ljava/lang/String; = "effect"

.field private static final KEY_EXPOSURE_COMPENSATION:Ljava/lang/String; = "exposure-compensation"

.field private static final KEY_EXPOSURE_COMPENSATION_STEP:Ljava/lang/String; = "exposure-compensation-step"

.field private static final KEY_FLASH_MODE:Ljava/lang/String; = "flash-mode"

.field private static final KEY_FOCAL_LENGTH:Ljava/lang/String; = "focal-length"

.field private static final KEY_FOCUS_MODE:Ljava/lang/String; = "focus-mode"

.field private static final KEY_GPS_ALTITUDE:Ljava/lang/String; = "gps-altitude"

.field private static final KEY_GPS_LATITUDE:Ljava/lang/String; = "gps-latitude"

.field private static final KEY_GPS_LONGITUDE:Ljava/lang/String; = "gps-longitude"

.field private static final KEY_GPS_PROCESSING_METHOD:Ljava/lang/String; = "gps-processing-method"

.field private static final KEY_GPS_TIMESTAMP:Ljava/lang/String; = "gps-timestamp"

.field private static final KEY_HORIZONTAL_VIEW_ANGLE:Ljava/lang/String; = "horizontal-view-angle"

.field private static final KEY_ISO_MODE:Ljava/lang/String; = "iso"

.field private static final KEY_JPEG_QUALITY:Ljava/lang/String; = "jpeg-quality"

.field private static final KEY_JPEG_THUMBNAIL_HEIGHT:Ljava/lang/String; = "jpeg-thumbnail-height"

.field private static final KEY_JPEG_THUMBNAIL_QUALITY:Ljava/lang/String; = "jpeg-thumbnail-quality"

.field private static final KEY_JPEG_THUMBNAIL_SIZE:Ljava/lang/String; = "jpeg-thumbnail-size"

.field private static final KEY_JPEG_THUMBNAIL_WIDTH:Ljava/lang/String; = "jpeg-thumbnail-width"

.field private static final KEY_LENSSHADE:Ljava/lang/String; = "lensshade"

.field private static final KEY_MAX_BRIGHTNESS:Ljava/lang/String; = "brightness-max"

.field private static final KEY_MAX_CONTRAST:Ljava/lang/String; = "contrast-max"

.field private static final KEY_MAX_EXPOSURE_COMPENSATION:Ljava/lang/String; = "max-exposure-compensation"

.field private static final KEY_MAX_SATURATION:Ljava/lang/String; = "saturation-max"

.field private static final KEY_MAX_SHARPNESS:Ljava/lang/String; = "sharpness-max"

.field private static final KEY_MAX_ZOOM:Ljava/lang/String; = "max-zoom"

.field private static final KEY_MIN_EXPOSURE_COMPENSATION:Ljava/lang/String; = "min-exposure-compensation"

.field private static final KEY_PICTURE_FORMAT:Ljava/lang/String; = "picture-format"

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "picture-size"

.field private static final KEY_PREVIEW_FORMAT:Ljava/lang/String; = "preview-format"

.field private static final KEY_PREVIEW_FRAME_RATE:Ljava/lang/String; = "preview-frame-rate"

.field private static final KEY_PREVIEW_SIZE:Ljava/lang/String; = "preview-size"

.field private static final KEY_ROTATION:Ljava/lang/String; = "rotation"

.field private static final KEY_SATURATION:Ljava/lang/String; = "saturation"

.field private static final KEY_SCENE_MODE:Ljava/lang/String; = "scene-mode"

.field private static final KEY_SHARPNESS:Ljava/lang/String; = "sharpness"

.field private static final KEY_SMART_CONTRAST:Ljava/lang/String; = "smart-contrast"

.field private static final KEY_SMOOTH_ZOOM_SUPPORTED:Ljava/lang/String; = "smooth-zoom-supported"

.field private static final KEY_VERTICAL_VIEW_ANGLE:Ljava/lang/String; = "vertical-view-angle"

.field private static final KEY_WHITE_BALANCE:Ljava/lang/String; = "whitebalance"

.field private static final KEY_ZOOM:Ljava/lang/String; = "zoom"

.field private static final KEY_ZOOM_RATIOS:Ljava/lang/String; = "zoom-ratios"

.field private static final KEY_ZOOM_SUPPORTED:Ljava/lang/String; = "zoom-supported"

.field public static final LENSSHADE_DISABLE:Ljava/lang/String; = "disable"

.field public static final LENSSHADE_ENABLE:Ljava/lang/String; = "enable"

.field private static final PIXEL_FORMAT_JPEG:Ljava/lang/String; = "jpeg"

.field private static final PIXEL_FORMAT_RGB565:Ljava/lang/String; = "rgb565"

.field private static final PIXEL_FORMAT_YUV420SP:Ljava/lang/String; = "yuv420sp"

.field private static final PIXEL_FORMAT_YUV422I:Ljava/lang/String; = "yuv422i-yuyv"

.field private static final PIXEL_FORMAT_YUV422SP:Ljava/lang/String; = "yuv422sp"

.field public static final SCENE_MODE_ACTION:Ljava/lang/String; = "action"

.field public static final SCENE_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final SCENE_MODE_BARCODE:Ljava/lang/String; = "barcode"

.field public static final SCENE_MODE_BEACH:Ljava/lang/String; = "beach"

.field public static final SCENE_MODE_CANDLELIGHT:Ljava/lang/String; = "candlelight"

.field public static final SCENE_MODE_FIREWORKS:Ljava/lang/String; = "fireworks"

.field public static final SCENE_MODE_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final SCENE_MODE_NIGHT:Ljava/lang/String; = "night"

.field public static final SCENE_MODE_NIGHT_PORTRAIT:Ljava/lang/String; = "night-portrait"

.field public static final SCENE_MODE_PARTY:Ljava/lang/String; = "party"

.field public static final SCENE_MODE_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final SCENE_MODE_SNOW:Ljava/lang/String; = "snow"

.field public static final SCENE_MODE_SPORTS:Ljava/lang/String; = "sports"

.field public static final SCENE_MODE_STEADYPHOTO:Ljava/lang/String; = "steadyphoto"

.field public static final SCENE_MODE_SUNSET:Ljava/lang/String; = "sunset"

.field public static final SCENE_MODE_THEATRE:Ljava/lang/String; = "theatre"

.field private static final SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final TRUE:Ljava/lang/String; = "true"

.field public static final WHITE_BALANCE_AUTO:Ljava/lang/String; = "auto"

.field public static final WHITE_BALANCE_CLOUDY_DAYLIGHT:Ljava/lang/String; = "cloudy-daylight"

.field public static final WHITE_BALANCE_DAYLIGHT:Ljava/lang/String; = "daylight"

.field public static final WHITE_BALANCE_FLUORESCENT:Ljava/lang/String; = "fluorescent"

.field public static final WHITE_BALANCE_INCANDESCENT:Ljava/lang/String; = "incandescent"

.field public static final WHITE_BALANCE_SHADE:Ljava/lang/String; = "shade"

.field public static final WHITE_BALANCE_TWILIGHT:Ljava/lang/String; = "twilight"

.field public static final WHITE_BALANCE_WARM_FLUORESCENT:Ljava/lang/String; = "warm-fluorescent"


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/hardware/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/hardware/Camera;)V
    .locals 1
    .parameter

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/android/camera/hardware/Camera$Parameters;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1097
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    .line 1098
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/hardware/Camera;Lcom/android/camera/hardware/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 893
    invoke-direct {p0, p1}, Lcom/android/camera/hardware/Camera$Parameters;-><init>(Lcom/android/camera/hardware/Camera;)V

    return-void
.end method

.method private cameraFormatForPixelFormat(I)Ljava/lang/String;
    .locals 1
    .parameter "pixel_format"

    .prologue
    .line 1486
    sparse-switch p1, :sswitch_data_0

    .line 1492
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1487
    :sswitch_0
    const-string v0, "yuv422sp"

    goto :goto_0

    .line 1488
    :sswitch_1
    const-string v0, "yuv420sp"

    goto :goto_0

    .line 1489
    :sswitch_2
    const-string v0, "yuv422i-yuyv"

    goto :goto_0

    .line 1490
    :sswitch_3
    const-string v0, "rgb565"

    goto :goto_0

    .line 1491
    :sswitch_4
    const-string v0, "jpeg"

    goto :goto_0

    .line 1486
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x14 -> :sswitch_2
        0x100 -> :sswitch_4
    .end sparse-switch
.end method

.method private getFloat(Ljava/lang/String;F)F
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 2358
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, p2

    .line 2364
    .end local p0
    :goto_0
    return v1

    .line 2362
    .restart local p0
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2363
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NumberFormatException;
    move v1, p2

    .line 2364
    goto :goto_0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 2370
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, p2

    .line 2376
    .end local p0
    :goto_0
    return v1

    .line 2374
    .restart local p0
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2375
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NumberFormatException;
    move v1, p2

    .line 2376
    goto :goto_0
.end method

.method private pixelFormatForCameraFormat(Ljava/lang/String;)I
    .locals 2
    .parameter "format"

    .prologue
    const/4 v1, 0x0

    .line 1497
    if-nez p1, :cond_0

    move v0, v1

    .line 1515
    :goto_0
    return v0

    .line 1500
    :cond_0
    const-string v0, "yuv422sp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1501
    const/16 v0, 0x10

    goto :goto_0

    .line 1503
    :cond_1
    const-string v0, "yuv420sp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1504
    const/16 v0, 0x11

    goto :goto_0

    .line 1506
    :cond_2
    const-string v0, "yuv422i-yuyv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1507
    const/16 v0, 0x14

    goto :goto_0

    .line 1509
    :cond_3
    const-string v0, "rgb565"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1510
    const/4 v0, 0x4

    goto :goto_0

    .line 1512
    :cond_4
    const-string v0, "jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1513
    const/16 v0, 0x100

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1515
    goto :goto_0
.end method

.method private split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2330
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 2338
    :goto_0
    return-object v2

    .line 2333
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2335
    .local v0, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2336
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 2338
    goto :goto_0
.end method

.method private splitInt(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2344
    if-nez p1, :cond_0

    move-object v3, v4

    .line 2353
    :goto_0
    return-object v3

    .line 2346
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2347
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2348
    .local v0, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2349
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 2350
    .local v1, token:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2352
    .end local v1           #token:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v4

    goto :goto_0

    :cond_2
    move-object v3, v0

    .line 2353
    goto :goto_0
.end method

.method private splitSize(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2383
    if-nez p1, :cond_0

    move-object v3, v4

    .line 2392
    :goto_0
    return-object v3

    .line 2385
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2386
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2387
    .local v1, sizeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/hardware/Camera$Size;>;"
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2388
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/camera/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Lcom/android/camera/hardware/Camera$Size;

    move-result-object v0

    .line 2389
    .local v0, size:Lcom/android/camera/hardware/Camera$Size;
    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2391
    .end local v0           #size:Lcom/android/camera/hardware/Camera$Size;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_0

    :cond_3
    move-object v3, v1

    .line 2392
    goto :goto_0
.end method

.method private strToSize(Ljava/lang/String;)Lcom/android/camera/hardware/Camera$Size;
    .locals 7
    .parameter "str"

    .prologue
    const/4 v6, 0x0

    .line 2398
    if-nez p1, :cond_0

    move-object v3, v6

    .line 2408
    :goto_0
    return-object v3

    .line 2400
    :cond_0
    const/16 v3, 0x78

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2401
    .local v1, pos:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 2402
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2403
    .local v2, width:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2404
    .local v0, height:Ljava/lang/String;
    new-instance v3, Lcom/android/camera/hardware/Camera$Size;

    iget-object v4, p0, Lcom/android/camera/hardware/Camera$Parameters;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/camera/hardware/Camera$Size;-><init>(Lcom/android/camera/hardware/Camera;II)V

    goto :goto_0

    .line 2407
    .end local v0           #height:Ljava/lang/String;
    .end local v2           #width:Ljava/lang/String;
    :cond_1
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid size parameter string="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 2408
    goto :goto_0
.end method


# virtual methods
.method public dump()V
    .locals 5

    .prologue
    const-string v4, "Camera"

    .line 1106
    const-string v2, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-object v2, p0, Lcom/android/camera/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1108
    .local v1, k:Ljava/lang/String;
    const-string v2, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/camera/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1110
    .end local v1           #k:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public flatten()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1122
    .local v0, flattened:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/camera/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1123
    .local v2, k:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    iget-object v3, p0, Lcom/android/camera/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1129
    .end local v2           #k:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/camera/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAntibanding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1862
    const-string v0, "antibanding"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoExposure()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2255
    const-string v0, "meter-mode"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBrightness()I
    .locals 2

    .prologue
    .line 1817
    const-string v0, "brightness"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1665
    const-string v0, "effect"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContinuousAf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2286
    const-string v0, "continuous-af"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContrast()I
    .locals 2

    .prologue
    .line 1737
    const-string v0, "contrast"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDefaultBrightness()I
    .locals 2

    .prologue
    .line 1848
    const-string v0, "brightness-def"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDefaultContrast()I
    .locals 2

    .prologue
    .line 1768
    const-string v0, "contrast-def"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDefaultSaturation()I
    .locals 2

    .prologue
    .line 1808
    const-string v0, "saturation-def"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDefaultSharpness()I
    .locals 2

    .prologue
    .line 1728
    const-string v0, "sharpness-def"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getExposureCompensation()I
    .locals 2

    .prologue
    .line 2055
    const-string v0, "exposure-compensation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getExposureCompensationStep()F
    .locals 2

    .prologue
    .line 2103
    const-string v0, "exposure-compensation-step"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1952
    const-string v0, "flash-mode"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocalLength()F
    .locals 1

    .prologue
    .line 2023
    const-string v0, "focal-length"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1991
    const-string v0, "focus-mode"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalViewAngle()F
    .locals 1

    .prologue
    .line 2033
    const-string v0, "horizontal-view-angle"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getISOValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2196
    const-string v0, "iso"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 1207
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1208
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getJpegQuality()I
    .locals 1

    .prologue
    .line 1315
    const-string v0, "jpeg-quality"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getJpegThumbnailQuality()I
    .locals 1

    .prologue
    .line 1296
    const-string v0, "jpeg-thumbnail-quality"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getJpegThumbnailSize()Lcom/android/camera/hardware/Camera$Size;
    .locals 4

    .prologue
    .line 1264
    new-instance v0, Lcom/android/camera/hardware/Camera$Size;

    iget-object v1, p0, Lcom/android/camera/hardware/Camera$Parameters;->this$0:Lcom/android/camera/hardware/Camera;

    const-string v2, "jpeg-thumbnail-width"

    invoke-virtual {p0, v2}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "jpeg-thumbnail-height"

    invoke-virtual {p0, v3}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/hardware/Camera$Size;-><init>(Lcom/android/camera/hardware/Camera;II)V

    return-object v0
.end method

.method public getLensShade()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2225
    const-string v0, "lensshade"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxBrightness()I
    .locals 2

    .prologue
    .line 1839
    const-string v0, "brightness-max"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxContrast()I
    .locals 2

    .prologue
    .line 1759
    const-string v0, "contrast-max"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxExposureCompensation()I
    .locals 2

    .prologue
    .line 2080
    const-string v0, "max-exposure-compensation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxSaturation()I
    .locals 2

    .prologue
    .line 1799
    const-string v0, "saturation-max"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxSharpness()I
    .locals 2

    .prologue
    .line 1719
    const-string v0, "sharpness-max"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxZoom()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "taking-picture-zoom-max"

    .line 2157
    iget-object v0, p0, Lcom/android/camera/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    const-string v1, "taking-picture-zoom-max"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2158
    const-string v0, "taking-picture-zoom-max"

    invoke-direct {p0, v3, v2}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2160
    :goto_0
    return v0

    :cond_0
    const-string v0, "max-zoom"

    invoke-direct {p0, v0, v2}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getMinExposureCompensation()I
    .locals 2

    .prologue
    .line 2091
    const-string v0, "min-exposure-compensation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPictureFormat()I
    .locals 1

    .prologue
    .line 1464
    const-string v0, "picture-format"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPictureSize()Lcom/android/camera/hardware/Camera$Size;
    .locals 2

    .prologue
    .line 1423
    const-string v1, "picture-size"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1424
    .local v0, pair:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Lcom/android/camera/hardware/Camera$Size;

    move-result-object v1

    return-object v1
.end method

.method public getPreviewFormat()I
    .locals 1

    .prologue
    .line 1381
    const-string v0, "preview-format"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPreviewFrameRate()I
    .locals 1

    .prologue
    .line 1336
    const-string v0, "preview-frame-rate"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPreviewSize()Lcom/android/camera/hardware/Camera$Size;
    .locals 2

    .prologue
    .line 1229
    const-string v1, "preview-size"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1230
    .local v0, pair:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Lcom/android/camera/hardware/Camera$Size;

    move-result-object v1

    return-object v1
.end method

.method public getSaturation()I
    .locals 2

    .prologue
    .line 1777
    const-string v0, "saturation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1909
    const-string v0, "scene-mode"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharpness()I
    .locals 2

    .prologue
    .line 1697
    const-string v0, "sharpness"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSupportedAntibanding()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1883
    const-string v1, "antibanding-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1884
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedAutoexposure()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2274
    const-string v1, "meter-mode-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2275
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedColorEffects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1686
    const-string v1, "effect-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1687
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedContinuousAfModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2306
    const-string v1, "continuous-af-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2307
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedFlashModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1973
    const-string v1, "flash-mode-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1974
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedFocusModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2012
    const-string v1, "focus-mode-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2013
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedIsoValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2215
    const-string v1, "iso-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2216
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedJpegThumbnailSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1276
    const-string v1, "jpeg-thumbnail-size-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1277
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedLensShadeModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2244
    const-string v1, "lensshade-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2245
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedPictureFormats()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1475
    const-string v5, "picture-format-values"

    invoke-virtual {p0, v5}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1476
    .local v4, str:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1477
    .local v1, formats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, v4}, Lcom/android/camera/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1478
    .local v3, s:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/camera/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v0

    .line 1479
    .local v0, f:I
    if-eqz v0, :cond_0

    .line 1480
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1482
    .end local v0           #f:I
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getSupportedPictureSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1434
    const-string v1, "picture-size-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1435
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedPreviewFormats()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1392
    const-string v5, "preview-format-values"

    invoke-virtual {p0, v5}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1393
    .local v4, str:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 1394
    const-string v5, "preview-format"

    invoke-virtual {p0, v5}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1396
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1397
    .local v1, formats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, v4}, Lcom/android/camera/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1398
    .local v3, s:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/camera/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v0

    .line 1399
    .local v0, f:I
    if-eqz v0, :cond_1

    .line 1400
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1402
    .end local v0           #f:I
    .end local v3           #s:Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public getSupportedPreviewFrameRates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1346
    const-string v1, "preview-frame-rate-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1347
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1240
    const-string v1, "preview-size-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1241
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedSceneModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1936
    const-string v1, "scene-mode-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1937
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedWhiteBalance()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1645
    const-string v1, "whitebalance-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1646
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getVerticalViewAngle()F
    .locals 1

    .prologue
    .line 2043
    const-string v0, "vertical-view-angle"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getWhiteBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1624
    const-string v0, "whitebalance"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoom()I
    .locals 2

    .prologue
    .line 2115
    const-string v0, "zoom"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getZoomRatios()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2175
    const-string v0, "zoom-ratios"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isSmartContrastEnabled()Z
    .locals 2

    .prologue
    .line 2324
    const-string v0, "on"

    const-string v1, "smart-contrast"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSmoothZoomSupported()Z
    .locals 2

    .prologue
    .line 2185
    const-string v1, "smooth-zoom-supported"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2186
    .local v0, str:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isZoomSupported()Z
    .locals 2

    .prologue
    .line 2143
    const-string v1, "zoom-supported"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2144
    .local v0, str:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/camera/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    return-void
.end method

.method public removeGpsData()V
    .locals 1

    .prologue
    .line 1601
    const-string v0, "gps-latitude"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 1602
    const-string v0, "gps-longitude"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 1603
    const-string v0, "gps-altitude"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 1604
    const-string v0, "gps-timestamp"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 1605
    const-string v0, "gps-processing-method"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 1606
    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/android/camera/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "key"
    .parameter "value"

    .prologue
    const/16 v3, 0x3d

    const/16 v2, 0x3b

    const/4 v1, -0x1

    const-string v5, "Camera"

    const-string v4, "\" contains invalid character (= or ;)"

    .line 1168
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1169
    :cond_0
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" contains invalid character (= or ;)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :goto_0
    return-void

    .line 1172
    :cond_1
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 1173
    :cond_2
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" contains invalid character (= or ;)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1177
    :cond_3
    iget-object v0, p0, Lcom/android/camera/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAntibanding(Ljava/lang/String;)V
    .locals 1
    .parameter "antibanding"

    .prologue
    .line 1872
    const-string v0, "antibanding"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    return-void
.end method

.method public setAutoExposure(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 2264
    const-string v0, "meter-mode"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    return-void
.end method

.method public setBrightness(I)V
    .locals 3
    .parameter "brightness"

    .prologue
    .line 1826
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/hardware/Camera$Parameters;->getMaxBrightness()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 1827
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Brightness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1830
    :cond_1
    const-string v0, "brightness"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    return-void
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1675
    const-string v0, "effect"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    return-void
.end method

.method public setContinuousAf(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 2295
    const-string v0, "continuous-af"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    return-void
.end method

.method public setContrast(I)V
    .locals 3
    .parameter "contrast"

    .prologue
    .line 1746
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/hardware/Camera$Parameters;->getMaxContrast()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 1747
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Contrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1750
    :cond_1
    const-string v0, "contrast"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 2069
    const-string v0, "exposure-compensation"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2070
    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1962
    const-string v0, "flash-mode"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 2001
    const-string v0, "focus-mode"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    return-void
.end method

.method public setGpsAltitude(D)V
    .locals 2
    .parameter "altitude"

    .prologue
    .line 1573
    const-string v0, "gps-altitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    return-void
.end method

.method public setGpsLatitude(D)V
    .locals 2
    .parameter "latitude"

    .prologue
    .line 1554
    const-string v0, "gps-latitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    return-void
.end method

.method public setGpsLongitude(D)V
    .locals 2
    .parameter "longitude"

    .prologue
    .line 1564
    const-string v0, "gps-longitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    return-void
.end method

.method public setGpsProcessingMethod(Ljava/lang/String;)V
    .locals 1
    .parameter "processing_method"

    .prologue
    .line 1593
    const-string v0, "gps-processing-method"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    return-void
.end method

.method public setGpsTimestamp(J)V
    .locals 2
    .parameter "timestamp"

    .prologue
    .line 1583
    const-string v0, "gps-timestamp"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    return-void
.end method

.method public setISOValue(Ljava/lang/String;)V
    .locals 1
    .parameter "iso"

    .prologue
    .line 2205
    const-string v0, "iso"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    return-void
.end method

.method public setJpegQuality(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 1306
    const-string v0, "jpeg-quality"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 1307
    return-void
.end method

.method public setJpegThumbnailQuality(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 1287
    const-string v0, "jpeg-thumbnail-quality"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 1288
    return-void
.end method

.method public setJpegThumbnailSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1253
    const-string v0, "jpeg-thumbnail-width"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 1254
    const-string v0, "jpeg-thumbnail-height"

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 1255
    return-void
.end method

.method public setLensShade(Ljava/lang/String;)V
    .locals 1
    .parameter "lensshade"

    .prologue
    .line 2234
    const-string v0, "lensshade"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    return-void
.end method

.method public setPictureFormat(I)V
    .locals 4
    .parameter "pixel_format"

    .prologue
    .line 1448
    invoke-direct {p0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->cameraFormatForPixelFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 1449
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1450
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pixel_format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1454
    :cond_0
    const-string v1, "picture-format"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    return-void
.end method

.method public setPictureSize(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1413
    .local v0, v:Ljava/lang/String;
    const-string v1, "picture-size"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    return-void
.end method

.method public setPreviewFormat(I)V
    .locals 4
    .parameter "pixel_format"

    .prologue
    .line 1364
    invoke-direct {p0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->cameraFormatForPixelFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 1365
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1366
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pixel_format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1370
    :cond_0
    const-string v1, "preview-format"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    return-void
.end method

.method public setPreviewFrameRate(I)V
    .locals 1
    .parameter "fps"

    .prologue
    .line 1325
    const-string v0, "preview-frame-rate"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 1326
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1219
    .local v0, v:Ljava/lang/String;
    const-string v1, "preview-size"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    return-void
.end method

.method public setRotation(I)V
    .locals 3
    .parameter "rotation"

    .prologue
    .line 1538
    if-eqz p1, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    .line 1540
    :cond_0
    const-string v0, "rotation"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    return-void

    .line 1542
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSaturation(I)V
    .locals 3
    .parameter "saturation"

    .prologue
    .line 1786
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/hardware/Camera$Parameters;->getMaxSaturation()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 1787
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Saturation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1790
    :cond_1
    const-string v0, "saturation"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1925
    const-string v0, "scene-mode"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    return-void
.end method

.method public setSharpness(I)V
    .locals 3
    .parameter "sharpness"

    .prologue
    .line 1706
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/hardware/Camera$Parameters;->getMaxSharpness()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 1707
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Sharpness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1710
    :cond_1
    const-string v0, "sharpness"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    return-void
.end method

.method public setSmartContrastEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 2315
    const-string v0, "smart-contrast"

    if-eqz p1, :cond_0

    const-string v1, "on"

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2316
    return-void

    .line 2315
    :cond_0
    const-string v1, "off"

    goto :goto_0
.end method

.method public setWhiteBalance(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1634
    const-string v0, "whitebalance"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    return-void
.end method

.method public setZoom(I)V
    .locals 3
    .parameter "value"

    .prologue
    const-string v2, "taking-picture-zoom"

    .line 2129
    iget-object v0, p0, Lcom/android/camera/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    const-string v1, "taking-picture-zoom"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2130
    const-string v0, "taking-picture-zoom"

    invoke-virtual {p0, v2, p1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2134
    :goto_0
    return-void

    .line 2132
    :cond_0
    const-string v0, "zoom"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public unflatten(Ljava/lang/String;)V
    .locals 6
    .parameter "flattened"

    .prologue
    .line 1142
    iget-object v5, p0, Lcom/android/camera/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 1144
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ";"

    invoke-direct {v3, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1146
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 1147
    .local v1, kv:Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1148
    .local v2, pos:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 1151
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1152
    .local v0, k:Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1153
    .local v4, v:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/hardware/Camera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1155
    .end local v0           #k:Ljava/lang/String;
    .end local v1           #kv:Ljava/lang/String;
    .end local v2           #pos:I
    .end local v4           #v:Ljava/lang/String;
    :cond_1
    return-void
.end method
