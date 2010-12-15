.class public Lcom/android/camera/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/Camera$1;,
        Lcom/android/camera/hardware/Camera$Parameters;,
        Lcom/android/camera/hardware/Camera$Size;,
        Lcom/android/camera/hardware/Camera$ErrorCallback;,
        Lcom/android/camera/hardware/Camera$OnZoomChangeListener;,
        Lcom/android/camera/hardware/Camera$PictureCallback;,
        Lcom/android/camera/hardware/Camera$ShutterCallback;,
        Lcom/android/camera/hardware/Camera$AutoFocusCallback;,
        Lcom/android/camera/hardware/Camera$EventHandler;,
        Lcom/android/camera/hardware/Camera$PreviewCallback;
    }
.end annotation


# static fields
.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_MSG_ALL_MSGS:I = 0x1ff

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Camera"


# instance fields
.field private mAutoFocusCallback:Lcom/android/camera/hardware/Camera$AutoFocusCallback;

.field private mErrorCallback:Lcom/android/camera/hardware/Camera$ErrorCallback;

.field private mEventHandler:Lcom/android/camera/hardware/Camera$EventHandler;

.field private mJpegCallback:Lcom/android/camera/hardware/Camera$PictureCallback;

.field private mNativeContext:I

.field private mOneShot:Z

.field private mPostviewCallback:Lcom/android/camera/hardware/Camera$PictureCallback;

.field private mPreviewCallback:Lcom/android/camera/hardware/Camera$PreviewCallback;

.field private mRawImageCallback:Lcom/android/camera/hardware/Camera$PictureCallback;

.field private mShutterCallback:Lcom/android/camera/hardware/Camera$ShutterCallback;

.field private mWithBuffer:Z

.field private mZoomListener:Lcom/android/camera/hardware/Camera$OnZoomChangeListener;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object v1, p0, Lcom/android/camera/hardware/Camera;->mShutterCallback:Lcom/android/camera/hardware/Camera$ShutterCallback;

    .line 179
    iput-object v1, p0, Lcom/android/camera/hardware/Camera;->mRawImageCallback:Lcom/android/camera/hardware/Camera$PictureCallback;

    .line 180
    iput-object v1, p0, Lcom/android/camera/hardware/Camera;->mJpegCallback:Lcom/android/camera/hardware/Camera$PictureCallback;

    .line 181
    iput-object v1, p0, Lcom/android/camera/hardware/Camera;->mPreviewCallback:Lcom/android/camera/hardware/Camera$PreviewCallback;

    .line 182
    iput-object v1, p0, Lcom/android/camera/hardware/Camera;->mPostviewCallback:Lcom/android/camera/hardware/Camera$PictureCallback;

    .line 183
    iput-object v1, p0, Lcom/android/camera/hardware/Camera;->mZoomListener:Lcom/android/camera/hardware/Camera$OnZoomChangeListener;

    .line 186
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 187
    new-instance v1, Lcom/android/camera/hardware/Camera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/camera/hardware/Camera$EventHandler;-><init>(Lcom/android/camera/hardware/Camera;Lcom/android/camera/hardware/Camera;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/hardware/Camera;->mEventHandler:Lcom/android/camera/hardware/Camera$EventHandler;

    .line 194
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/android/camera/hardware/Camera;->native_setup(Ljava/lang/Object;)V

    .line 195
    return-void

    .line 188
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 189
    new-instance v1, Lcom/android/camera/hardware/Camera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/camera/hardware/Camera$EventHandler;-><init>(Lcom/android/camera/hardware/Camera;Lcom/android/camera/hardware/Camera;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/hardware/Camera;->mEventHandler:Lcom/android/camera/hardware/Camera$EventHandler;

    goto :goto_0

    .line 191
    :cond_1
    iput-object v1, p0, Lcom/android/camera/hardware/Camera;->mEventHandler:Lcom/android/camera/hardware/Camera$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$ShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/hardware/Camera;->mShutterCallback:Lcom/android/camera/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/hardware/Camera;->mRawImageCallback:Lcom/android/camera/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$ErrorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/hardware/Camera;->mErrorCallback:Lcom/android/camera/hardware/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/hardware/Camera;->mJpegCallback:Lcom/android/camera/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$PreviewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/hardware/Camera;->mPreviewCallback:Lcom/android/camera/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/hardware/Camera;Lcom/android/camera/hardware/Camera$PreviewCallback;)Lcom/android/camera/hardware/Camera$PreviewCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/camera/hardware/Camera;->mPreviewCallback:Lcom/android/camera/hardware/Camera$PreviewCallback;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/hardware/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/camera/hardware/Camera;->mOneShot:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/hardware/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/camera/hardware/Camera;->mWithBuffer:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/hardware/Camera;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/camera/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/hardware/Camera;->mPostviewCallback:Lcom/android/camera/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$AutoFocusCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/hardware/Camera;->mAutoFocusCallback:Lcom/android/camera/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$OnZoomChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/hardware/Camera;->mZoomListener:Lcom/android/camera/hardware/Camera$OnZoomChangeListener;

    return-object v0
.end method

.method private final native native_autoFocus()V
.end method

.method private final native native_cancelAutoFocus()V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private final native native_takePicture()V
.end method

.method public static open()Lcom/android/camera/hardware/Camera;
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/android/camera/hardware/CameraSwitch;->openMainCamera()V

    .line 166
    new-instance v0, Lcom/android/camera/hardware/Camera;

    invoke-direct {v0}, Lcom/android/camera/hardware/Camera;-><init>()V

    return-object v0
.end method

.method public static open(Ljava/lang/String;)Lcom/android/camera/hardware/Camera;
    .locals 1
    .parameter "cameraNode"

    .prologue
    .line 173
    invoke-static {p0}, Lcom/android/camera/hardware/CameraSwitch;->openCamera(Ljava/lang/String;)V

    .line 174
    new-instance v0, Lcom/android/camera/hardware/Camera;

    invoke-direct {v0}, Lcom/android/camera/hardware/Camera;-><init>()V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "camera_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 522
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/Camera;

    .line 523
    .local v0, c:Lcom/android/camera/hardware/Camera;
    if-nez v0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-object v2, v0, Lcom/android/camera/hardware/Camera;->mEventHandler:Lcom/android/camera/hardware/Camera$EventHandler;

    if-eqz v2, :cond_0

    .line 527
    iget-object v2, v0, Lcom/android/camera/hardware/Camera;->mEventHandler:Lcom/android/camera/hardware/Camera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/camera/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 528
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Lcom/android/camera/hardware/Camera;->mEventHandler:Lcom/android/camera/hardware/Camera$EventHandler;

    invoke-virtual {v2, v1}, Lcom/android/camera/hardware/Camera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private final native setHasPreviewCallback(ZZ)V
.end method

.method private final native setPreviewDisplay(Landroid/view/Surface;)V
.end method


# virtual methods
.method public final native addCallbackBuffer([B)V
.end method

.method public final autoFocus(Lcom/android/camera/hardware/Camera$AutoFocusCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/camera/hardware/Camera;->mAutoFocusCallback:Lcom/android/camera/hardware/Camera$AutoFocusCallback;

    .line 585
    invoke-direct {p0}, Lcom/android/camera/hardware/Camera;->native_autoFocus()V

    .line 586
    return-void
.end method

.method public final cancelAutoFocus()V
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/hardware/Camera;->mAutoFocusCallback:Lcom/android/camera/hardware/Camera$AutoFocusCallback;

    .line 600
    invoke-direct {p0}, Lcom/android/camera/hardware/Camera;->native_cancelAutoFocus()V

    .line 601
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/android/camera/hardware/Camera;->native_release()V

    .line 199
    return-void
.end method

.method public getParameters()Lcom/android/camera/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 831
    new-instance v0, Lcom/android/camera/hardware/Camera$Parameters;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/camera/hardware/Camera$Parameters;-><init>(Lcom/android/camera/hardware/Camera;Lcom/android/camera/hardware/Camera$1;)V

    .line 832
    .local v0, p:Lcom/android/camera/hardware/Camera$Parameters;
    invoke-direct {p0}, Lcom/android/camera/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 833
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 834
    return-object v0
.end method

.method public final native lock()V
.end method

.method public final native previewEnabled()Z
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final release()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/android/camera/hardware/Camera;->native_release()V

    .line 212
    return-void
.end method

.method public final native setDisplayOrientation(I)V
.end method

.method public final setErrorCallback(Lcom/android/camera/hardware/Camera$ErrorCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 803
    iput-object p1, p0, Lcom/android/camera/hardware/Camera;->mErrorCallback:Lcom/android/camera/hardware/Camera$ErrorCallback;

    .line 804
    return-void
.end method

.method public final setOneShotPreviewCallback(Lcom/android/camera/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 376
    iput-object p1, p0, Lcom/android/camera/hardware/Camera;->mPreviewCallback:Lcom/android/camera/hardware/Camera$PreviewCallback;

    .line 377
    iput-boolean v0, p0, Lcom/android/camera/hardware/Camera;->mOneShot:Z

    .line 378
    iput-boolean v1, p0, Lcom/android/camera/hardware/Camera;->mWithBuffer:Z

    .line 379
    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/camera/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 380
    return-void

    :cond_0
    move v0, v1

    .line 379
    goto :goto_0
.end method

.method public setParameters(Lcom/android/camera/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 817
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/hardware/Camera;->native_setParameters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :goto_0
    return-void

    .line 818
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 819
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "Camera"

    const-string v2, "Failed to set all parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final setPreviewCallback(Lcom/android/camera/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 358
    iput-object p1, p0, Lcom/android/camera/hardware/Camera;->mPreviewCallback:Lcom/android/camera/hardware/Camera$PreviewCallback;

    .line 359
    iput-boolean v1, p0, Lcom/android/camera/hardware/Camera;->mOneShot:Z

    .line 360
    iput-boolean v1, p0, Lcom/android/camera/hardware/Camera;->mWithBuffer:Z

    .line 363
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/camera/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 364
    return-void

    :cond_0
    move v0, v1

    .line 363
    goto :goto_0
.end method

.method public final setPreviewCallbackWithBuffer(Lcom/android/camera/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 405
    iput-object p1, p0, Lcom/android/camera/hardware/Camera;->mPreviewCallback:Lcom/android/camera/hardware/Camera$PreviewCallback;

    .line 406
    iput-boolean v0, p0, Lcom/android/camera/hardware/Camera;->mOneShot:Z

    .line 407
    iput-boolean v1, p0, Lcom/android/camera/hardware/Camera;->mWithBuffer:Z

    .line 408
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/camera/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 409
    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    if-eqz p1, :cond_0

    .line 287
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcom/android/camera/hardware/Camera;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public final setZoomChangeListener(Lcom/android/camera/hardware/Camera$OnZoomChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 760
    iput-object p1, p0, Lcom/android/camera/hardware/Camera;->mZoomListener:Lcom/android/camera/hardware/Camera$OnZoomChangeListener;

    .line 761
    return-void
.end method

.method public final native startPreview()V
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public final native stopPreview()V
.end method

.method public final native stopSmoothZoom()V
.end method

.method public final takePicture(Lcom/android/camera/hardware/Camera$ShutterCallback;Lcom/android/camera/hardware/Camera$PictureCallback;Lcom/android/camera/hardware/Camera$PictureCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "raw"
    .parameter "jpeg"

    .prologue
    .line 645
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/camera/hardware/Camera;->takePicture(Lcom/android/camera/hardware/Camera$ShutterCallback;Lcom/android/camera/hardware/Camera$PictureCallback;Lcom/android/camera/hardware/Camera$PictureCallback;Lcom/android/camera/hardware/Camera$PictureCallback;)V

    .line 646
    return-void
.end method

.method public final takePicture(Lcom/android/camera/hardware/Camera$ShutterCallback;Lcom/android/camera/hardware/Camera$PictureCallback;Lcom/android/camera/hardware/Camera$PictureCallback;Lcom/android/camera/hardware/Camera$PictureCallback;)V
    .locals 0
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 677
    iput-object p1, p0, Lcom/android/camera/hardware/Camera;->mShutterCallback:Lcom/android/camera/hardware/Camera$ShutterCallback;

    .line 678
    iput-object p2, p0, Lcom/android/camera/hardware/Camera;->mRawImageCallback:Lcom/android/camera/hardware/Camera$PictureCallback;

    .line 679
    iput-object p3, p0, Lcom/android/camera/hardware/Camera;->mPostviewCallback:Lcom/android/camera/hardware/Camera$PictureCallback;

    .line 680
    iput-object p4, p0, Lcom/android/camera/hardware/Camera;->mJpegCallback:Lcom/android/camera/hardware/Camera$PictureCallback;

    .line 681
    invoke-direct {p0}, Lcom/android/camera/hardware/Camera;->native_takePicture()V

    .line 682
    return-void
.end method

.method public final native unlock()V
.end method
