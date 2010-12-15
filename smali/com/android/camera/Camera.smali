.class public Lcom/android/camera/Camera;
.super Lcom/android/camera/BaseCamera;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$MyHeadUpDisplayListener;,
        Lcom/android/camera/Camera$AutoFocusCallback;,
        Lcom/android/camera/Camera$ImageCapture;,
        Lcom/android/camera/Camera$ErrorCallback;,
        Lcom/android/camera/Camera$JpegPictureCallback;,
        Lcom/android/camera/Camera$RawPictureCallback;,
        Lcom/android/camera/Camera$PostViewPictureCallback;,
        Lcom/android/camera/Camera$ShutterCallback;,
        Lcom/android/camera/Camera$LocationListener;,
        Lcom/android/camera/Camera$MainHandler;
    }
.end annotation


# static fields
.field private static final AUTOFOCUS_FAST:I = 0x6

.field private static final CLEAR_SCREEN_DELAY:I = 0x4

.field private static final CROP_MSG:I = 0x1

.field private static final DEFAULT_CAMERA_BRIGHTNESS:F = 0.7f

.field private static final FIRST_TIME_INIT:I = 0x2

.field private static final FOCUSING:I = 0x1

.field private static final FOCUSING_SNAP_ON_FINISH:I = 0x2

.field private static final FOCUS_BEEP_VOLUME:I = 0x64

.field private static final FOCUS_FAIL:I = 0x4

.field private static final FOCUS_NOT_STARTED:I = 0x0

.field private static final FOCUS_SUCCESS:I = 0x3

.field private static final IDLE:I = 0x1

.field private static final RESTART_PREVIEW:I = 0x3

.field private static final SCREEN_DELAY:I = 0x3e8

.field private static final SET_CAMERA_PARAMETERS_WHEN_IDLE:I = 0x5

.field private static final SNAPSHOT_IN_PROGRESS:I = 0x2

.field private static final SWITCH_CAMERA:Z = true

.field private static final SWITCH_VIDEO:Z = false

.field private static final TAG:Ljava/lang/String; = "camera"

.field private static final UPDATE_PARAM_ALL:I = -0x1

.field private static final UPDATE_PARAM_INITIALIZE:I = 0x1

.field private static final UPDATE_PARAM_PREFERENCE:I = 0x4

.field private static final UPDATE_PARAM_ZOOM:I = 0x2

.field public static mMediaServerDied:Z = false

.field private static final sTempCropFilename:Ljava/lang/String; = "crop-temp"


# instance fields
.field protected classicAutoMode:Z

.field private devlatch:Ljava/util/concurrent/CountDownLatch;

.field private final mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

.field public mAutoFocusTime:J

.field private mCaptureStartTime:J

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCropValue:Ljava/lang/String;

.field private mDidRegister:Z

.field private final mErrorCallback:Lcom/android/camera/Camera$ErrorCallback;

.field private mFirstTimeInitialized:Z

.field private mFocusCallbackTime:J

.field private mFocusStartTime:J

.field private mFocusState:I

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private mGLRootView:Lcom/android/camera/ui/GLRootView;

.field private final mGalleryItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mImageCapture:Lcom/android/camera/Camera$ImageCapture;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mInitialParams:Lcom/android/camera/hardware/Camera$Parameters;

.field private mIsImageCaptureIntent:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegPictureCallbackTime:J

.field private mLastOrientation:I

.field private mLastPictureButton:Landroid/widget/ImageView;

.field private mLastStabilityChange:J

.field mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field public mPictureDisplayedToJpegCallbackTime:J

.field private mPicturesRemaining:I

.field private final mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mQuickCapture:Z

.field private final mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordLocation:Z

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneMode:Ljava/lang/String;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private final mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mStabilityChangeListener:Lcom/android/camera/BaseCamera$StabilityChangeListener;

.field private mStartPreviewFail:Z

.field private mStatus:I

.field private mStorageHint:Lcom/android/camera/OnScreenHint;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSwitcher:Lcom/android/camera/Switcher;

.field private mThumbController:Lcom/android/camera/ThumbnailController;

.field private mUpdateSet:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/Camera;->mMediaServerDied:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Lcom/android/camera/BaseCamera;-><init>()V

    .line 125
    iput v3, p0, Lcom/android/camera/Camera;->mLastOrientation:I

    .line 133
    iput v4, p0, Lcom/android/camera/Camera;->mStatus:I

    .line 138
    iput-object v2, p0, Lcom/android/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 142
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mStartPreviewFail:Z

    .line 156
    iput-object v2, p0, Lcom/android/camera/Camera;->mImageCapture:Lcom/android/camera/Camera$ImageCapture;

    .line 167
    iput v3, p0, Lcom/android/camera/Camera;->mFocusState:I

    .line 172
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mGalleryItems:Ljava/util/ArrayList;

    .line 176
    iput-object v2, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    .line 178
    new-instance v0, Lcom/android/camera/Camera$ShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$ShutterCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    .line 179
    new-instance v0, Lcom/android/camera/Camera$PostViewPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$PostViewPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    .line 181
    new-instance v0, Lcom/android/camera/Camera$RawPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$RawPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    .line 186
    new-instance v0, Lcom/android/camera/Camera$ErrorCallback;

    invoke-direct {v0, v2}, Lcom/android/camera/Camera$ErrorCallback;-><init>(Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mErrorCallback:Lcom/android/camera/Camera$ErrorCallback;

    .line 207
    new-instance v0, Lcom/android/camera/Camera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$MainHandler;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    .line 210
    iput v3, p0, Lcom/android/camera/Camera;->mImageWidth:I

    .line 211
    iput v3, p0, Lcom/android/camera/Camera;->mImageHeight:I

    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastStabilityChange:J

    .line 214
    new-instance v0, Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$AutoFocusCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    .line 216
    new-instance v0, Lcom/android/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mStabilityChangeListener:Lcom/android/camera/BaseCamera$StabilityChangeListener;

    .line 456
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/Camera$LocationListener;

    new-instance v1, Lcom/android/camera/Camera$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/android/camera/Camera$LocationListener;-><init>(Lcom/android/camera/Camera;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/camera/Camera$LocationListener;

    const-string v2, "network"

    invoke-direct {v1, p0, v2}, Lcom/android/camera/Camera$LocationListener;-><init>(Lcom/android/camera/Camera;Ljava/lang/String;)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    .line 461
    new-instance v0, Lcom/android/camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$4;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2147
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->restartPreview()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->autoFocusFast()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/Camera;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/camera/Camera;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/ui/GLRootView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkStorage()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateThumbnailButton()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRecordLocation:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/camera/Camera;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/camera/Camera;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/camera/Camera;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/camera/Camera;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageCapture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageCapture:Lcom/android/camera/Camera$ImageCapture;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->calculatePicturesRemaining()I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/Camera;->mPicturesRemaining:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->updateStorageHint(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/camera/Camera;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/camera/Camera;->createName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/Camera;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/Camera;[BILandroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/Camera;->setLastPictureThumb([BILandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/ThumbnailController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/Camera;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/camera/Camera;->mImageWidth:I

    return p1
.end method

.method static synthetic access$3902(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/camera/Camera;->mImageHeight:I

    return p1
.end method

.method static synthetic access$4000(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$RawPictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$PostViewPictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/Camera;->mStatus:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/camera/Camera;->mStatus:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/camera/Camera;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->devlatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mStartPreviewFail:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->ensureCameraDevice()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/camera/Camera;->mFocusState:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFocusIndicator()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/camera/Camera;->mFocusCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$5302(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/camera/Camera;->mFocusCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$5400(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$5500(Lcom/android/camera/Camera;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->switchToVideoMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/camera/Camera;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->switchCameraDevice(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->gotoGallery()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->canTakePicture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/camera/Camera;->mLastStabilityChange:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/camera/Camera;->mLastStabilityChange:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/camera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearFocusState()V

    return-void
.end method

.method private addBaseMenuItems(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 2038
    const/4 v1, 0x1

    new-instance v2, Lcom/android/camera/Camera$9;

    invoke-direct {v2, p0}, Lcom/android/camera/Camera$9;-><init>(Lcom/android/camera/Camera;)V

    invoke-static {p1, v1, v2}, Lcom/android/camera/MenuHelper;->addSwitchModeMenuItem(Landroid/view/Menu;ZLjava/lang/Runnable;)V

    .line 2044
    invoke-static {}, Lcom/android/camera/hardware/CameraSwitch;->hasCameraSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2045
    new-instance v1, Lcom/android/camera/Camera$10;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$10;-><init>(Lcom/android/camera/Camera;)V

    invoke-static {p1, v1}, Lcom/android/camera/MenuHelper;->addSwitchDeviceMenuItem(Landroid/view/Menu;Ljava/lang/Runnable;)V

    .line 2052
    :cond_0
    const/4 v1, 0x2

    const v2, 0x7f0a0010

    invoke-interface {p1, v3, v3, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/android/camera/Camera$11;

    invoke-direct {v2, p0}, Lcom/android/camera/Camera$11;-><init>(Lcom/android/camera/Camera;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 2061
    .local v0, gallery:Landroid/view/MenuItem;
    const v1, 0x108003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2062
    iget-object v1, p0, Lcom/android/camera/Camera;->mGalleryItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2063
    iput-object p1, p0, Lcom/android/camera/Camera;->mOptionsMenu:Landroid/view/Menu;

    .line 2064
    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 385
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/Camera$3;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$3;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 391
    return-void
.end method

.method private autoFocusClassic()V
    .locals 2

    .prologue
    .line 2221
    invoke-direct {p0}, Lcom/android/camera/Camera;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2222
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HeadUpDisplay;->setEnabled(Z)V

    .line 2223
    const-string v0, "camera"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    .line 2225
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    .line 2226
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFocusIndicator()V

    .line 2227
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/Camera;->autoFocus(Lcom/android/camera/hardware/Camera$AutoFocusCallback;)V

    .line 2229
    :cond_0
    return-void
.end method

.method private autoFocusFast()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1347
    invoke-direct {p0}, Lcom/android/camera/Camera;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1348
    iput v2, p0, Lcom/android/camera/Camera;->mFocusState:I

    .line 1349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    .line 1350
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFocusIndicator()V

    .line 1351
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mSmoothZoomSupported:Z

    if-eqz v0, :cond_2

    .line 1352
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/Camera;->autoFocus(Lcom/android/camera/hardware/Camera$AutoFocusCallback;)V

    .line 1353
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/HeadUpDisplay;->setEnabled(Z)V

    .line 1367
    :cond_1
    :goto_0
    return-void

    .line 1358
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    new-instance v1, Lcom/android/camera/Camera$8;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$8;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/Camera;->autoFocus(Lcom/android/camera/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0
.end method

.method private calculatePicturesRemaining()I
    .locals 1

    .prologue
    .line 2009
    invoke-static {}, Lcom/android/camera/MenuHelper;->calculatePicturesRemaining()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mPicturesRemaining:I

    .line 2010
    iget v0, p0, Lcom/android/camera/Camera;->mPicturesRemaining:I

    return v0
.end method

.method private canTakePicture()Z
    .locals 1

    .prologue
    .line 1343
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mPicturesRemaining:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelAutoFocusClassic()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2233
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2235
    :cond_0
    const-string v0, "camera"

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/HeadUpDisplay;->setEnabled(Z)V

    .line 2237
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v0}, Lcom/android/camera/hardware/Camera;->cancelAutoFocus()V

    .line 2239
    :cond_1
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 2240
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearFocusState()V

    .line 2242
    :cond_2
    return-void
.end method

.method private changeHeadUpDisplayState()V
    .locals 3

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 921
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_1

    .line 923
    iget-object v1, p0, Lcom/android/camera/Camera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeHeadUpDisplay()V

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    if-eqz v1, :cond_0

    .line 925
    invoke-direct {p0}, Lcom/android/camera/Camera;->finalizeHeadUpDisplay()V

    goto :goto_0
.end method

.method private checkStorage()V
    .locals 1

    .prologue
    .line 1019
    invoke-direct {p0}, Lcom/android/camera/Camera;->calculatePicturesRemaining()I

    .line 1020
    iget v0, p0, Lcom/android/camera/Camera;->mPicturesRemaining:I

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updateStorageHint(I)V

    .line 1021
    return-void
.end method

.method private clearFocusState()V
    .locals 1

    .prologue
    .line 1409
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    .line 1410
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFocusIndicator()V

    .line 1411
    return-void
.end method

.method private closeCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1541
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1542
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 1543
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/Camera;->setZoomChangeListener(Lcom/android/camera/hardware/Camera$OnZoomChangeListener;)V

    .line 1544
    iput-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    .line 1545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    .line 1547
    :cond_0
    return-void
.end method

.method private createCaptureBitmap([B)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "data"

    .prologue
    .line 1045
    invoke-static {}, Lcom/android/camera/ImageManager;->getTempJpegPath()Ljava/lang/String;

    move-result-object v2

    .line 1046
    .local v2, filepath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1047
    .local v1, degree:I
    invoke-direct {p0, v2, p1}, Lcom/android/camera/Camera;->saveDataToFile(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1048
    invoke-static {v2}, Lcom/android/camera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 1049
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1053
    :cond_0
    const v3, 0xc800

    invoke-static {p1, v3}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1054
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1055
    return-object v0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .parameter "dateTaken"

    .prologue
    .line 812
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 813
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0a0095

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 816
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static dataLocation()Lcom/android/camera/ImageManager$DataLocation;
    .locals 1

    .prologue
    .line 1270
    sget-object v0, Lcom/android/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/android/camera/ImageManager$DataLocation;

    return-object v0
.end method

.method private doAttach()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    const-string v9, "crop-temp"

    .line 1059
    iget-boolean v9, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-eqz v9, :cond_0

    .line 1130
    :goto_0
    return-void

    .line 1063
    :cond_0
    iget-object v9, p0, Lcom/android/camera/Camera;->mImageCapture:Lcom/android/camera/Camera$ImageCapture;

    invoke-virtual {v9}, Lcom/android/camera/Camera$ImageCapture;->getLastCaptureData()[B

    move-result-object v2

    .line 1065
    .local v2, data:[B
    iget-object v9, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 1070
    iget-object v9, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v9, :cond_1

    .line 1071
    const/4 v5, 0x0

    .line 1073
    .local v5, outputStream:Ljava/io/OutputStream;
    :try_start_0
    iget-object v9, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v10, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5

    .line 1074
    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1075
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 1077
    const/4 v9, -0x1

    invoke-virtual {p0, v9}, Lcom/android/camera/Camera;->setResult(I)V

    .line 1078
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1079
    :catch_0
    move-exception v9

    .line 1082
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v9

    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .line 1085
    .end local v5           #outputStream:Ljava/io/OutputStream;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->createCaptureBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1086
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "inline-data"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "data"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {p0, v11, v9}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 1088
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0

    .line 1092
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v8, 0x0

    .line 1093
    .local v8, tempUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 1095
    .local v7, tempStream:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v9, "crop-temp"

    invoke-virtual {p0, v9}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 1096
    .local v6, path:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1097
    const-string v9, "crop-temp"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/camera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 1098
    invoke-virtual {v7, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1099
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 1100
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    .line 1110
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1113
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1114
    .local v4, newExtras:Landroid/os/Bundle;
    iget-object v9, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    const-string v10, "circle"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1115
    const-string v9, "circleCrop"

    const-string v10, "true"

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    :cond_3
    iget-object v9, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v9, :cond_4

    .line 1118
    const-string v9, "output"

    iget-object v10, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1123
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.android.camera.action.CROP"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1125
    .local v1, cropIntent:Landroid/content/Intent;
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1126
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1128
    invoke-virtual {p0, v1, v12}, Lcom/android/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1101
    .end local v1           #cropIntent:Landroid/content/Intent;
    .end local v4           #newExtras:Landroid/os/Bundle;
    .end local v6           #path:Ljava/io/File;
    :catch_1
    move-exception v9

    move-object v3, v9

    .line 1102
    .local v3, ex:Ljava/io/FileNotFoundException;
    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {p0, v9}, Lcom/android/camera/Camera;->setResult(I)V

    .line 1103
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1110
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1105
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v9

    move-object v3, v9

    .line 1106
    .local v3, ex:Ljava/io/IOException;
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {p0, v9}, Lcom/android/camera/Camera;->setResult(I)V

    .line 1107
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1110
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v3           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v9

    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .line 1120
    .restart local v4       #newExtras:Landroid/os/Bundle;
    .restart local v6       #path:Ljava/io/File;
    :cond_4
    const-string v9, "return-data"

    invoke-virtual {v4, v9, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private doCancel()V
    .locals 2

    .prologue
    .line 1133
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 1134
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 1135
    return-void
.end method

.method private doFocusClassic(Z)V
    .locals 2
    .parameter "pressed"

    .prologue
    .line 2207
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v0}, Lcom/android/camera/ui/HeadUpDisplay;->collapse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2216
    :cond_0
    :goto_0
    return-void

    .line 2208
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    const-string v1, "touch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2209
    if-eqz p1, :cond_2

    .line 2210
    invoke-direct {p0}, Lcom/android/camera/Camera;->autoFocusClassic()V

    .line 2211
    invoke-virtual {p0}, Lcom/android/camera/Camera;->resetFocusIndicator()V

    goto :goto_0

    .line 2213
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->cancelAutoFocusClassic()V

    goto :goto_0
.end method

.method private doSnap()V
    .locals 3

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v0}, Lcom/android/camera/ui/HeadUpDisplay;->collapse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1486
    :goto_0
    return-void

    .line 1484
    :cond_0
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSnap: mFocusState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFocusMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageCapture:Lcom/android/camera/Camera$ImageCapture;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageCapture;->onSnap()V

    goto :goto_0
.end method

.method private doSnapClassic()V
    .locals 3

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v0}, Lcom/android/camera/ui/HeadUpDisplay;->collapse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2203
    :cond_0
    :goto_0
    return-void

    .line 2186
    :cond_1
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSnap: mFocusState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFocusMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    const-string v1, "touch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 2194
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageCapture:Lcom/android/camera/Camera$ImageCapture;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageCapture;->onSnap()V

    goto :goto_0

    .line 2195
    :cond_3
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2199
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    goto :goto_0

    .line 2200
    :cond_4
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private ensureCameraDevice()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    if-nez v0, :cond_0

    .line 1551
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->open()Lcom/android/camera/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    .line 1552
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v0}, Lcom/android/camera/hardware/Camera;->getParameters()Lcom/android/camera/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Lcom/android/camera/hardware/Camera$Parameters;

    .line 1554
    :cond_0
    return-void
.end method

.method private finalizeHeadUpDisplay()V
    .locals 2

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    check-cast v0, Lcom/android/camera/ui/CameraHeadUpDisplay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraHeadUpDisplay;->setGpsHasSignal(Z)V

    .line 987
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v0}, Lcom/android/camera/ui/HeadUpDisplay;->collapse()Z

    .line 988
    iget-object v0, p0, Lcom/android/camera/Camera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLRootView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/Camera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 989
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    .line 990
    return-void
.end method

.method private getCurrentLocation()Landroid/location/Location;
    .locals 3

    .prologue
    .line 1962
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1963
    iget-object v2, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/camera/Camera$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 1964
    .local v1, l:Landroid/location/Location;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 1966
    .end local v1           #l:Landroid/location/Location;
    :goto_1
    return-object v2

    .line 1962
    .restart local v1       #l:Landroid/location/Location;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1966
    .end local v1           #l:Landroid/location/Location;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getOptimalPreviewSize(Ljava/util/List;D)Lcom/android/camera/hardware/Camera$Size;
    .locals 18
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/hardware/Camera$Size;",
            ">;D)",
            "Lcom/android/camera/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 1646
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/hardware/Camera$Size;>;"
    const-wide v2, 0x3fa999999999999aL

    .line 1647
    .local v2, ASPECT_TOLERANCE:D
    if-nez p1, :cond_0

    const/4 v14, 0x0

    .line 1689
    :goto_0
    return-object v14

    .line 1649
    :cond_0
    const/4 v8, 0x0

    .line 1650
    .local v8, optimalSize:Lcom/android/camera/hardware/Camera$Size;
    const-wide v6, 0x7fefffffffffffffL

    .line 1658
    .local v6, minDiff:D
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 1659
    .local v4, display:Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v14

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1661
    .local v12, targetHeight:I
    if-gtz v12, :cond_1

    .line 1663
    const-string v14, "window"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 1665
    .local v13, windowManager:Landroid/view/WindowManager;
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Display;->getHeight()I

    move-result v12

    .line 1669
    .end local v13           #windowManager:Landroid/view/WindowManager;
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/hardware/Camera$Size;

    .line 1670
    .local v11, size:Lcom/android/camera/hardware/Camera$Size;
    iget v14, v11, Lcom/android/camera/hardware/Camera$Size;->width:I

    int-to-double v14, v14

    move-object v0, v11

    iget v0, v0, Lcom/android/camera/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v9, v14, v16

    .line 1671
    .local v9, ratio:D
    sub-double v14, v9, p2

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x3fa999999999999aL

    cmpl-double v14, v14, v16

    if-gtz v14, :cond_2

    .line 1672
    iget v14, v11, Lcom/android/camera/hardware/Camera$Size;->height:I

    sub-int/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-double v14, v14

    cmpg-double v14, v14, v6

    if-gez v14, :cond_2

    .line 1673
    move-object v8, v11

    .line 1674
    iget v14, v11, Lcom/android/camera/hardware/Camera$Size;->height:I

    sub-int/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-double v6, v14

    goto :goto_1

    .line 1679
    .end local v9           #ratio:D
    .end local v11           #size:Lcom/android/camera/hardware/Camera$Size;
    :cond_3
    if-nez v8, :cond_5

    .line 1680
    const-string v14, "camera"

    const-string v15, "No preview size match the aspect ratio"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    const-wide v6, 0x7fefffffffffffffL

    .line 1682
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/hardware/Camera$Size;

    .line 1683
    .restart local v11       #size:Lcom/android/camera/hardware/Camera$Size;
    iget v14, v11, Lcom/android/camera/hardware/Camera$Size;->height:I

    sub-int/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-double v14, v14

    cmpg-double v14, v14, v6

    if-gez v14, :cond_4

    .line 1684
    move-object v8, v11

    .line 1685
    iget v14, v11, Lcom/android/camera/hardware/Camera$Size;->height:I

    sub-int/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-double v6, v14

    goto :goto_2

    .end local v11           #size:Lcom/android/camera/hardware/Camera$Size;
    :cond_5
    move-object v14, v8

    .line 1689
    goto/16 :goto_0
.end method

.method private getQuickCaptureSettings()Z
    .locals 4

    .prologue
    .line 2124
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_camera_quickcapture_key"

    const v3, 0x7f0a008d

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2127
    .local v0, value:Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private gotoGallery()V
    .locals 0

    .prologue
    .line 1905
    invoke-static {p0}, Lcom/android/camera/MenuHelper;->gotoCameraImageGallery(Landroid/app/Activity;)V

    .line 1906
    return-void
.end method

.method private hidePostCaptureAlert()V
    .locals 8

    .prologue
    .line 1998
    iget-boolean v6, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v6, :cond_0

    .line 1999
    const v6, 0x7f0c0004

    invoke-virtual {p0, v6}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2000
    const/4 v6, 0x2

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 2001
    .local v5, pickIds:[I
    move-object v0, v5

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, v0, v2

    .line 2002
    .local v3, id:I
    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2003
    .local v1, button:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2001
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2006
    .end local v0           #arr$:[I
    .end local v1           #button:Landroid/view/View;
    .end local v2           #i$:I
    .end local v3           #id:I
    .end local v4           #len$:I
    .end local v5           #pickIds:[I
    :cond_0
    return-void

    .line 2000
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0xct 0x7ft
        0x5t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method private initializeFirstTime()V
    .locals 4

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 309
    :cond_0
    new-instance v0, Lcom/android/camera/Camera$2;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/Camera$2;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 333
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 336
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    .line 338
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mRecordLocation:Z

    .line 340
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRecordLocation:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/Camera;->startReceivingLocationUpdates()V

    .line 342
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepMediaProviderInstance()V

    .line 343
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkStorage()V

    .line 346
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    .line 347
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_2

    .line 348
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mLastPictureButton:Landroid/widget/ImageView;

    .line 351
    iget-object v0, p0, Lcom/android/camera/Camera;->mLastPictureButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    new-instance v0, Lcom/android/camera/ThumbnailController;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mLastPictureButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ThumbnailController;-><init>(Landroid/content/res/Resources;Landroid/widget/ImageView;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    .line 354
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-static {}, Lcom/android/camera/ImageManager;->getLastImageThumbPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ThumbnailController;->loadData(Ljava/lang/String;)Z

    .line 356
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateThumbnailButton()V

    .line 360
    :cond_2
    const v0, 0x7f0c0004

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 361
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 362
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 364
    const v0, 0x7f0c000a

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FocusRectangle;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusRectangle:Lcom/android/camera/FocusRectangle;

    .line 365
    invoke-virtual {p0}, Lcom/android/camera/Camera;->resetFocusIndicator()V

    .line 366
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFocusIndicator()V

    .line 368
    iget-object v0, p0, Lcom/android/camera/Camera;->mStabilityChangeListener:Lcom/android/camera/BaseCamera$StabilityChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setStabilityChangeListener(Lcom/android/camera/BaseCamera$StabilityChangeListener;)V

    .line 370
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeScreenBrightness()V

    .line 371
    invoke-direct {p0}, Lcom/android/camera/Camera;->installIntentFilter()V

    .line 372
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFocusTone()V

    .line 373
    invoke-virtual {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 374
    invoke-virtual {p0}, Lcom/android/camera/Camera;->initializeTouchFocus()V

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    .line 378
    invoke-direct {p0}, Lcom/android/camera/Camera;->changeHeadUpDisplayState()V

    .line 379
    invoke-direct {p0}, Lcom/android/camera/Camera;->addIdleHandler()V

    goto/16 :goto_0
.end method

.method private initializeFocusTone()V
    .locals 4

    .prologue
    .line 1209
    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    :goto_0
    return-void

    .line 1211
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1212
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "camera"

    const-string v2, "Exception caught while creating tone generator: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1213
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0
.end method

.method private initializeHeadUpDisplay()V
    .locals 5

    .prologue
    .line 954
    const v2, 0x7f0c0008

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 955
    .local v0, frame:Landroid/widget/FrameLayout;
    new-instance v2, Lcom/android/camera/ui/GLRootView;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/GLRootView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/Camera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    .line 956
    iget-object v2, p0, Lcom/android/camera/Camera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 958
    new-instance v2, Lcom/android/camera/ui/CameraHeadUpDisplay;

    iget-object v3, p0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-direct {v2, p0, v3}, Lcom/android/camera/ui/CameraHeadUpDisplay;-><init>(Landroid/content/Context;Lcom/android/camera/hardware/Camera$Parameters;)V

    iput-object v2, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    .line 959
    new-instance v1, Lcom/android/camera/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/Camera;->mInitialParams:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Lcom/android/camera/hardware/Camera$Parameters;)V

    .line 960
    .local v1, settings:Lcom/android/camera/CameraSettings;
    iget-object v2, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    const/high16 v3, 0x7f05

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/ui/HeadUpDisplay;->initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V

    .line 962
    iget-object v2, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    new-instance v3, Lcom/android/camera/Camera$MyHeadUpDisplayListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/camera/Camera$MyHeadUpDisplayListener;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/HeadUpDisplay;->setListener(Lcom/android/camera/ui/HeadUpDisplay$Listener;)V

    .line 963
    iget-object v2, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    iget v3, p0, Lcom/android/camera/Camera;->mLastOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/HeadUpDisplay;->setOrientation(I)V

    .line 965
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v2}, Lcom/android/camera/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 966
    iget-object v2, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getZoomRatios()[F

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/HeadUpDisplay;->setZoomRatios([F)V

    .line 967
    iget-object v2, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    iget v3, p0, Lcom/android/camera/Camera;->mZoomValue:I

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/HeadUpDisplay;->setZoomIndex(I)V

    .line 968
    iget-object v2, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    new-instance v3, Lcom/android/camera/Camera$7;

    invoke-direct {v3, p0}, Lcom/android/camera/Camera$7;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/HeadUpDisplay;->setZoomListener(Lcom/android/camera/ui/ZoomController$ZoomListener;)V

    .line 980
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateSceneModeInHud()V

    .line 982
    iget-object v2, p0, Lcom/android/camera/Camera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    iget-object v3, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/GLRootView;->setContentPane(Lcom/android/camera/ui/GLView;)V

    .line 983
    return-void
.end method

.method private initializeScreenBrightness()V
    .locals 6

    .prologue
    .line 1218
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1220
    .local v1, win:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1224
    .local v0, mode:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1225
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1226
    .local v2, winParams:Landroid/view/WindowManager$LayoutParams;
    const v3, 0x3f333333

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1227
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1229
    .end local v2           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private initializeSecondTime()V
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 409
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 410
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mRecordLocation:Z

    .line 412
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRecordLocation:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->startReceivingLocationUpdates()V

    .line 415
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->installIntentFilter()V

    .line 417
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFocusTone()V

    .line 419
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepMediaProviderInstance()V

    .line 420
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkStorage()V

    .line 422
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera;->mZoomListener:Lcom/android/camera/BaseCamera$ZoomListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/Camera;->setZoomChangeListener(Lcom/android/camera/hardware/Camera$OnZoomChangeListener;)V

    .line 424
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_1

    .line 425
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateThumbnailButton()V

    .line 428
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->changeHeadUpDisplayState()V

    .line 429
    return-void

    .line 412
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private installIntentFilter()V
    .locals 2

    .prologue
    .line 1196
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1198
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1199
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1200
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1201
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1202
    iget-object v1, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1203
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 1204
    return-void
.end method

.method private isCameraIdle()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1970
    iget v0, p0, Lcom/android/camera/Camera;->mStatus:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 1974
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1975
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 299
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 2142
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2143
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2144
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2145
    return-void
.end method

.method private onSharedPreferenceChanged()V
    .locals 5

    .prologue
    .line 2092
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-eqz v2, :cond_0

    .line 2121
    :goto_0
    return-void

    .line 2096
    :cond_0
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    monitor-enter v2

    .line 2097
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v1

    .line 2099
    .local v1, recordLocation:Z
    invoke-direct {p0}, Lcom/android/camera/Camera;->getQuickCaptureSettings()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    .line 2100
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2102
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mRecordLocation:Z

    if-eq v2, v1, :cond_1

    .line 2103
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mRecordLocation:Z

    .line 2104
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mRecordLocation:Z

    if-eqz v2, :cond_3

    .line 2105
    invoke-direct {p0}, Lcom/android/camera/Camera;->startReceivingLocationUpdates()V

    .line 2111
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_camera_focusmode_key"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2112
    .local v0, focusMode:Ljava/lang/String;
    const-string v2, "touch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2114
    const v2, 0x7f0a005d

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2118
    :cond_2
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    .line 2120
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 2100
    .end local v0           #focusMode:Ljava/lang/String;
    .end local v1           #recordLocation:Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2107
    .restart local v1       #recordLocation:Z
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopReceivingLocationUpdates()V

    goto :goto_1
.end method

.method private overrideHudSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "flashMode"
    .parameter "whiteBalance"
    .parameter "focusMode"

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/camera/Camera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    new-instance v1, Lcom/android/camera/Camera$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/Camera$6;-><init>(Lcom/android/camera/Camera;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    .line 940
    return-void
.end method

.method private resetExposureCompensation()V
    .locals 6

    .prologue
    const-string v5, "pref_camera_exposure_key"

    const-string v4, "0.0"

    .line 279
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_camera_exposure_key"

    const-string v3, "0.0"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, value:Ljava/lang/String;
    const-string v2, "0.0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 283
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_exposure_key"

    const-string v2, "0"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 284
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 285
    iget-object v2, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v2}, Lcom/android/camera/ui/HeadUpDisplay;->reloadPreferences()V

    .line 289
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2138
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2139
    return-void
.end method

.method private restartPreview()V
    .locals 1

    .prologue
    .line 1583
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1588
    :goto_0
    return-void

    .line 1584
    :catch_0
    move-exception v0

    .line 1585
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    invoke-direct {p0}, Lcom/android/camera/Camera;->showCameraErrorAndFinish()V

    goto :goto_0
.end method

.method private saveDataToFile(Ljava/lang/String;[B)Z
    .locals 4
    .parameter "filePath"
    .parameter "data"

    .prologue
    .line 784
    const/4 v1, 0x0

    .line 786
    .local v1, f:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    .end local v1           #f:Ljava/io/FileOutputStream;
    .local v2, f:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 791
    invoke-static {v2}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 793
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 788
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 789
    .local v0, e:Ljava/io/IOException;
    :goto_1
    const/4 v3, 0x0

    .line 791
    invoke-static {v1}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 788
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private setCameraParameters(I)V
    .locals 2
    .parameter "updateSet"

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v0}, Lcom/android/camera/hardware/Camera;->getParameters()Lcom/android/camera/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    .line 1865
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 1866
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersInitialize()V

    .line 1869
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 1870
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersZoom()V

    .line 1873
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 1874
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 1875
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersPreference()V

    .line 1876
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1879
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setCamMode(Lcom/android/camera/hardware/Camera$Parameters;I)V

    .line 1880
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->dumpParameters(Lcom/android/camera/hardware/Camera$Parameters;)V

    .line 1881
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/Camera;->setParameters(Lcom/android/camera/hardware/Camera$Parameters;)V

    .line 1882
    return-void

    .line 1876
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 4
    .parameter "additionalUpdateSet"

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x0

    .line 1887
    iget v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    .line 1888
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    if-nez v0, :cond_1

    .line 1891
    iput v1, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    .line 1902
    :cond_0
    :goto_0
    return-void

    .line 1893
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1894
    iget v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 1895
    iput v1, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    goto :goto_0

    .line 1897
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1898
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setLastPictureThumb([BILandroid/net/Uri;)V
    .locals 5
    .parameter "data"
    .parameter "degree"
    .parameter "uri"

    .prologue
    .line 797
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 798
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v3, 0x10

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 799
    iget-object v3, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/Camera;->mImageWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/camera/Camera;->mImageHeight:I

    if-lez v3, :cond_0

    .line 800
    iget-object v3, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v3}, Lcom/android/camera/ThumbnailController;->getThumbnailHeight()I

    move-result v1

    .line 801
    .local v1, miniThumbHeight:I
    if-lez v1, :cond_0

    .line 802
    iget v3, p0, Lcom/android/camera/Camera;->mImageHeight:I

    div-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 805
    .end local v1           #miniThumbHeight:I
    :cond_0
    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 807
    .local v0, lastPictureThumb:Landroid/graphics/Bitmap;
    invoke-static {v0, p2}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 808
    iget-object v3, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v3, p3, v0}, Lcom/android/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 809
    return-void
.end method

.method private setOrientationIndicator(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 993
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/RotateImageView;->setDegree(I)V

    .line 995
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/RotateImageView;->setDegree(I)V

    .line 997
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/camera/RotateImageView;

    invoke-virtual {p0, p1}, Lcom/android/camera/RotateImageView;->setDegree(I)V

    .line 999
    return-void
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 1592
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v1, p1}, Lcom/android/camera/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1597
    return-void

    .line 1593
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1594
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 1595
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewDisplay failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 1979
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1980
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1981
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 1982
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 1984
    :cond_0
    return-void
.end method

.method private showCameraErrorAndFinish()V
    .locals 3

    .prologue
    .line 1575
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1576
    .local v0, ress:Landroid/content/res/Resources;
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/camera/Util;->showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    return-void
.end method

.method private showPostCaptureAlert()V
    .locals 8

    .prologue
    .line 1987
    iget-boolean v6, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v6, :cond_0

    .line 1988
    const v6, 0x7f0c0004

    invoke-virtual {p0, v6}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1989
    const/4 v6, 0x2

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 1990
    .local v5, pickIds:[I
    move-object v0, v5

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, v0, v2

    .line 1991
    .local v3, id:I
    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1992
    .local v1, button:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1990
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1995
    .end local v0           #arr$:[I
    .end local v1           #button:Landroid/view/View;
    .end local v2           #i$:I
    .end local v3           #id:I
    .end local v4           #len$:I
    .end local v5           #pickIds:[I
    :cond_0
    return-void

    .line 1989
    :array_0
    .array-data 0x4
        0x2t 0x0t 0xct 0x7ft
        0x5t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method private startPreview()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1601
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1603
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->ensureCameraDevice()V

    .line 1607
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 1608
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearFocusState()V

    .line 1609
    invoke-virtual {p0}, Lcom/android/camera/Camera;->resetFocusIndicator()V

    .line 1611
    iget-object v1, p0, Lcom/android/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1612
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 1614
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/Camera;->mErrorCallback:Lcom/android/camera/Camera$ErrorCallback;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/Camera;->setErrorCallback(Lcom/android/camera/hardware/Camera$ErrorCallback;)V

    .line 1617
    :try_start_0
    const-string v1, "camera"

    const-string v2, "startPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v1}, Lcom/android/camera/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1623
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    .line 1624
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/Camera;->mZoomState:I

    .line 1625
    iput v3, p0, Lcom/android/camera/Camera;->mStatus:I

    .line 1630
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v1}, Lcom/android/camera/hardware/Camera;->getParameters()Lcom/android/camera/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    .line 1632
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/android/camera/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    iput v1, p0, Lcom/android/camera/Camera;->mZoomMax:I

    goto :goto_0

    .line 1619
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1620
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 1621
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startReceivingLocationUpdates()V
    .locals 11

    .prologue
    const-string v10, "provider does not exist "

    const-string v9, "fail to request location update, ignore"

    const-string v8, "camera"

    .line 1922
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 1924
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1935
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1946
    :cond_0
    :goto_1
    return-void

    .line 1929
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 1930
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "camera"

    const-string v0, "fail to request location update, ignore"

    invoke-static {v8, v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1931
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 1932
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provider does not exist "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1940
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    move-object v6, v0

    .line 1941
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "camera"

    const-string v0, "fail to request location update, ignore"

    invoke-static {v8, v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1942
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    move-object v6, v0

    .line 1943
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provider does not exist "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private stopPreview()V
    .locals 2

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 1637
    const-string v0, "camera"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v0}, Lcom/android/camera/hardware/Camera;->stopPreview()V

    .line 1640
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    .line 1642
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearFocusState()V

    .line 1643
    return-void
.end method

.method private stopReceivingLocationUpdates()V
    .locals 4

    .prologue
    .line 1949
    iget-object v2, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_0

    .line 1950
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1952
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1950
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1953
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1954
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "camera"

    const-string v3, "fail to remove location listners, ignore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1958
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private switchCameraDevice(Z)Z
    .locals 2
    .parameter "switchToSecondary"

    .prologue
    .line 2067
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2071
    :goto_0
    return v0

    .line 2068
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    if-eqz p1, :cond_2

    const-string v1, "secondary"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera/CameraHolder;->setCameraNode(Ljava/lang/String;)V

    .line 2070
    invoke-static {p0}, Lcom/android/camera/MenuHelper;->gotoCameraMode(Landroid/app/Activity;)V

    .line 2071
    const/4 v0, 0x1

    goto :goto_0

    .line 2068
    :cond_2
    const-string v1, "main"

    goto :goto_1
.end method

.method private switchToVideoMode()Z
    .locals 2

    .prologue
    .line 2075
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2079
    :goto_0
    return v0

    .line 2076
    :cond_1
    invoke-static {p0}, Lcom/android/camera/MenuHelper;->gotoVideoMode(Landroid/app/Activity;)V

    .line 2077
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2078
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 2079
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 4

    .prologue
    .line 1695
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v2}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 1696
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 1697
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1698
    .local v1, max:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1701
    .end local v1           #max:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 21

    .prologue
    .line 1712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_picturesize_key"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1714
    .local v12, pictureSize:Ljava/lang/String;
    if-nez v12, :cond_a

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Lcom/android/camera/hardware/Camera$Parameters;)V

    .line 1723
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/hardware/Camera$Parameters;->getPictureSize()Lcom/android/camera/hardware/Camera$Size;

    move-result-object v13

    .line 1724
    .local v13, size:Lcom/android/camera/hardware/Camera$Size;
    const v17, 0x7f0c0007

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/PreviewFrameLayout;

    .line 1726
    .local v7, frameLayout:Lcom/android/camera/PreviewFrameLayout;
    move-object v0, v13

    iget v0, v0, Lcom/android/camera/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    move-object v0, v13

    iget v0, v0, Lcom/android/camera/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    move-object v0, v7

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 1730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v14

    .line 1731
    .local v14, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/hardware/Camera$Size;>;"
    move-object v0, v13

    iget v0, v0, Lcom/android/camera/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    move-object v0, v13

    iget v0, v0, Lcom/android/camera/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    move-object/from16 v0, p0

    move-object v1, v14

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/Camera;->getOptimalPreviewSize(Ljava/util/List;D)Lcom/android/camera/hardware/Camera$Size;

    move-result-object v11

    .line 1733
    .local v11, optimalSize:Lcom/android/camera/hardware/Camera$Size;
    if-eqz v11, :cond_0

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object v0, v11

    iget v0, v0, Lcom/android/camera/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    move-object v0, v11

    iget v0, v0, Lcom/android/camera/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1739
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_scenemode_key"

    const v19, 0x7f0a007e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/hardware/Camera;->setParameters(Lcom/android/camera/hardware/Camera$Parameters;)V

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/hardware/Camera;->getParameters()Lcom/android/camera/hardware/Camera$Parameters;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    .line 1760
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_jpegquality_key"

    const v19, 0x7f0a004f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1763
    .local v9, jpegQuality:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-static {v9}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_iso_key"

    const v19, 0x7f0a009d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1774
    .local v8, iso:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->setISOValue(Ljava/lang/String;)V

    .line 1780
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_lensshading_key"

    const v19, 0x7f0a00ad

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1783
    .local v10, lensshade:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedLensShadeModes()Ljava/util/List;

    move-result-object v17

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->setLensShade(Ljava/lang/String;)V

    .line 1789
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_autoexposure_key"

    const v19, 0x7f0a00b9

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1792
    .local v5, autoExposure:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedAutoexposure()Ljava/util/List;

    move-result-object v17

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->setAutoExposure(Ljava/lang/String;)V

    .line 1797
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_antibanding_key"

    const v19, 0x7f0a00b4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1800
    .local v4, antiBanding:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v17

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 1804
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->setCommonParameters()V

    .line 1806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/Camera;->updateSceneModeInHud()V

    .line 1808
    :cond_6
    const-string v17, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_flashmode_key"

    const v19, 0x7f0a005e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1813
    .local v6, flashMode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v16

    .line 1814
    .local v16, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1824
    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->setWhiteBalance()V

    .line 1827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_focusmode_key"

    const v19, 0x7f0a0054

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    .line 1830
    const-string v17, "classic"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 1831
    const-string v17, "auto"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    .line 1832
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/Camera;->classicAutoMode:Z

    .line 1836
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1850
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    const-string v18, "touch-aec"

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_9

    .line 1851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    const-string v18, "touch-aec"

    const-string v19, "off"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    const-string v18, "touch-focus"

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    .end local v6           #flashMode:Ljava/lang/String;
    .end local v16           #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    :goto_5
    return-void

    .line 1717
    .end local v4           #antiBanding:Ljava/lang/String;
    .end local v5           #autoExposure:Ljava/lang/String;
    .end local v7           #frameLayout:Lcom/android/camera/PreviewFrameLayout;
    .end local v8           #iso:Ljava/lang/String;
    .end local v9           #jpegQuality:Ljava/lang/String;
    .end local v10           #lensshade:Ljava/lang/String;
    .end local v11           #optimalSize:Lcom/android/camera/hardware/Camera$Size;
    .end local v13           #size:Lcom/android/camera/hardware/Camera$Size;
    .end local v14           #sizes:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/hardware/Camera$Size;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v15

    .line 1718
    .local v15, supported:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object v0, v12

    move-object v1, v15

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Lcom/android/camera/hardware/Camera$Parameters;)Z

    goto/16 :goto_0

    .line 1753
    .end local v15           #supported:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/hardware/Camera$Size;>;"
    .restart local v7       #frameLayout:Lcom/android/camera/PreviewFrameLayout;
    .restart local v11       #optimalSize:Lcom/android/camera/hardware/Camera$Size;
    .restart local v13       #size:Lcom/android/camera/hardware/Camera$Size;
    .restart local v14       #sizes:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/hardware/Camera$Size;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 1755
    const-string v17, "auto"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_1

    .line 1817
    .restart local v4       #antiBanding:Ljava/lang/String;
    .restart local v5       #autoExposure:Ljava/lang/String;
    .restart local v6       #flashMode:Ljava/lang/String;
    .restart local v8       #iso:Ljava/lang/String;
    .restart local v9       #jpegQuality:Ljava/lang/String;
    .restart local v10       #lensshade:Ljava/lang/String;
    .restart local v16       #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v6

    .line 1818
    if-nez v6, :cond_7

    .line 1819
    const v17, 0x7f0a005f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 1834
    :cond_d
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/Camera;->classicAutoMode:Z

    goto/16 :goto_3

    .line 1838
    :cond_e
    const-string v17, "touch"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    const-string v18, "auto"

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1840
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/Camera;->classicAutoMode:Z

    goto/16 :goto_4

    .line 1842
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    .line 1843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    .line 1844
    const-string v17, "auto"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    .line 1845
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/Camera;->classicAutoMode:Z

    goto/16 :goto_4

    .line 1855
    .end local v6           #flashMode:Ljava/lang/String;
    .end local v16           #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    goto/16 :goto_5
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1706
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/Camera$Parameters;->setZoom(I)V

    .line 1708
    :cond_0
    return-void
.end method

.method private updateFocusIndicator()V
    .locals 3

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusRectangle:Lcom/android/camera/FocusRectangle;

    if-nez v0, :cond_0

    .line 1426
    :goto_0
    return-void

    .line 1415
    :cond_0
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Focus state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1418
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusRectangle:Lcom/android/camera/FocusRectangle;

    invoke-virtual {v0}, Lcom/android/camera/FocusRectangle;->showStart()V

    goto :goto_0

    .line 1419
    :cond_2
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1420
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusRectangle:Lcom/android/camera/FocusRectangle;

    invoke-virtual {v0}, Lcom/android/camera/FocusRectangle;->showSuccess()V

    goto :goto_0

    .line 1421
    :cond_3
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 1422
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusRectangle:Lcom/android/camera/FocusRectangle;

    invoke-virtual {v0}, Lcom/android/camera/FocusRectangle;->showFail()V

    goto :goto_0

    .line 1424
    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusRectangle:Lcom/android/camera/FocusRectangle;

    invoke-virtual {v0}, Lcom/android/camera/FocusRectangle;->clear()V

    goto :goto_0
.end method

.method private updateLastImage()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1557
    iget-object v4, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/camera/Camera;->dataLocation()Lcom/android/camera/ImageManager$DataLocation;

    move-result-object v5

    sget-object v6, Lcom/android/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    invoke-static {v4, v5, v7, v7, v6}, Lcom/android/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/android/camera/gallery/IImageList;

    move-result-object v2

    .line 1563
    .local v2, list:Lcom/android/camera/gallery/IImageList;
    invoke-interface {v2}, Lcom/android/camera/gallery/IImageList;->getCount()I

    move-result v0

    .line 1564
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1565
    sub-int v4, v0, v7

    invoke-interface {v2, v4}, Lcom/android/camera/gallery/IImageList;->getImageAt(I)Lcom/android/camera/gallery/IImage;

    move-result-object v1

    .line 1566
    .local v1, image:Lcom/android/camera/gallery/IImage;
    invoke-interface {v1}, Lcom/android/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 1567
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-interface {v1}, Lcom/android/camera/gallery/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 1571
    .end local v1           #image:Lcom/android/camera/gallery/IImage;
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    invoke-interface {v2}, Lcom/android/camera/gallery/IImageList;->close()V

    .line 1572
    return-void

    .line 1569
    :cond_0
    iget-object v4, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v4, v8, v8}, Lcom/android/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private updateSceneModeInHud()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 945
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/android/camera/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v2}, Lcom/android/camera/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/Camera;->overrideHudSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :goto_0
    return-void

    .line 949
    :cond_0
    invoke-direct {p0, v2, v2, v2}, Lcom/android/camera/Camera;->overrideHudSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateStorageHint(I)V
    .locals 3
    .parameter "remaining"

    .prologue
    .line 1168
    const/4 v0, 0x0

    .line 1170
    .local v0, noStorageText:Ljava/lang/String;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    .line 1171
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 1172
    .local v1, state:Ljava/lang/String;
    const-string v2, "checking"

    if-ne v1, v2, :cond_2

    .line 1173
    const v2, 0x7f0a0009

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1181
    .end local v1           #state:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 1182
    iget-object v2, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v2, :cond_4

    .line 1183
    invoke-static {p0, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 1187
    :goto_1
    iget-object v2, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v2}, Lcom/android/camera/OnScreenHint;->show()V

    .line 1192
    :cond_1
    :goto_2
    return-void

    .line 1175
    .restart local v1       #state:Ljava/lang/String;
    :cond_2
    const v2, 0x7f0a0007

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1177
    .end local v1           #state:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 1178
    const v2, 0x7f0a0008

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1185
    :cond_4
    iget-object v2, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v2, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1188
    :cond_5
    iget-object v2, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v2, :cond_1

    .line 1189
    iget-object v2, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v2}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 1190
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_2
.end method

.method private updateThumbnailButton()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailController;->isUriValid()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mPicturesRemaining:I

    if-ltz v0, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateLastImage()V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailController;->updateDisplayIfNeeded()V

    .line 399
    return-void
.end method

.method private viewLastImage()V
    .locals 5

    .prologue
    const-string v4, "camera"

    .line 1909
    iget-object v2, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v2}, Lcom/android/camera/ThumbnailController;->isUriValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1910
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cooliris.media.action.REVIEW"

    iget-object v3, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v3}, Lcom/android/camera/ThumbnailController;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1912
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1919
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1913
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1914
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "camera"

    const-string v2, "review image fail"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1917
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const-string v2, "camera"

    const-string v2, "Can\'t view last image."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getCameraMode()I
    .locals 1

    .prologue
    .line 2259
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1322
    packed-switch p1, :pswitch_data_0

    .line 1340
    :goto_0
    return-void

    .line 1324
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1325
    .local v1, intent:Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 1326
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1327
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1328
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1331
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 1332
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 1334
    const-string v3, "crop-temp"

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1335
    .local v2, path:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1430
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1436
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v0}, Lcom/android/camera/ui/HeadUpDisplay;->collapse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1434
    :cond_2
    invoke-super {p0}, Lcom/android/camera/BaseCamera;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1024
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1026
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostCaptureAlert()V

    .line 1027
    invoke-direct {p0}, Lcom/android/camera/Camera;->restartPreview()V

    goto :goto_0

    .line 1030
    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    invoke-direct {p0}, Lcom/android/camera/Camera;->viewLastImage()V

    goto :goto_0

    .line 1035
    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->doAttach()V

    goto :goto_0

    .line 1038
    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->doCancel()V

    goto :goto_0

    .line 1024
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0001 -> :sswitch_3
        0x7f0c0002 -> :sswitch_0
        0x7f0c0005 -> :sswitch_2
        0x7f0c000b -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 1265
    invoke-super {p0, p1}, Lcom/android/camera/BaseCamera;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1266
    invoke-direct {p0}, Lcom/android/camera/Camera;->changeHeadUpDisplayState()V

    .line 1267
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    .line 821
    invoke-super {p0, p1}, Lcom/android/camera/BaseCamera;->onCreate(Landroid/os/Bundle;)V

    .line 823
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, p0, Lcom/android/camera/Camera;->devlatch:Ljava/util/concurrent/CountDownLatch;

    .line 829
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/camera/Camera$5;

    invoke-direct {v5, p0}, Lcom/android/camera/Camera$5;-><init>(Lcom/android/camera/Camera;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 854
    .local v4, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 856
    const v5, 0x7f030001

    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->setContentView(I)V

    .line 857
    const v5, 0x7f0c0009

    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceView;

    iput-object v5, p0, Lcom/android/camera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    .line 859
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getCameraNode()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/camera/Camera;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    .line 860
    iget-object v5, p0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->upgradePreferences(Landroid/content/SharedPreferences;)V

    .line 862
    invoke-direct {p0}, Lcom/android/camera/Camera;->getQuickCaptureSettings()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    .line 868
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetExposureCompensation()V

    .line 871
    iget-object v5, p0, Lcom/android/camera/Camera;->devlatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 876
    iget-object v5, p0, Lcom/android/camera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 877
    .local v1, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 878
    const/4 v5, 0x3

    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 880
    invoke-direct {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    .line 881
    iget-boolean v5, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v5, :cond_0

    .line 882
    invoke-direct {p0}, Lcom/android/camera/Camera;->setupCaptureParams()V

    .line 885
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 887
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f0c0006

    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 888
    .local v3, rootView:Landroid/view/ViewGroup;
    iget-boolean v5, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v5, :cond_1

    .line 889
    const/high16 v5, 0x7f03

    invoke-virtual {v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 891
    .local v0, controlBar:Landroid/view/View;
    const v5, 0x7f0c0001

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 892
    const v5, 0x7f0c0002

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 893
    const v5, 0x7f0c0005

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 903
    .end local v0           #controlBar:Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Thread;->join()V

    .line 904
    iget-boolean v5, p0, Lcom/android/camera/Camera;->mStartPreviewFail:Z

    if-eqz v5, :cond_2

    .line 905
    invoke-direct {p0}, Lcom/android/camera/Camera;->showCameraErrorAndFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :goto_1
    return-void

    .line 895
    :cond_1
    const v5, 0x7f030002

    invoke-virtual {v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 896
    const v5, 0x7f0c000e

    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/Switcher;

    iput-object v5, p0, Lcom/android/camera/Camera;->mSwitcher:Lcom/android/camera/Switcher;

    .line 897
    iget-object v5, p0, Lcom/android/camera/Camera;->mSwitcher:Lcom/android/camera/Switcher;

    invoke-virtual {v5, p0}, Lcom/android/camera/Switcher;->setOnSwitchListener(Lcom/android/camera/Switcher$OnSwitchListener;)V

    .line 898
    iget-object v5, p0, Lcom/android/camera/Camera;->mSwitcher:Lcom/android/camera/Switcher;

    const v6, 0x7f0c000c

    invoke-virtual {p0, v6}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/camera/Switcher;->addTouchView(Landroid/view/View;)V

    goto :goto_0

    .line 908
    :catch_0
    move-exception v5

    .line 911
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/camera/Camera;->devlatch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 2026
    invoke-super {p0, p1}, Lcom/android/camera/BaseCamera;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2028
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2030
    const/4 v0, 0x0

    .line 2034
    :goto_0
    return v0

    .line 2032
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->addBaseMenuItems(Landroid/view/Menu;)V

    .line 2034
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const-string v2, "macro"

    .line 1440
    sparse-switch p1, :sswitch_data_0

    .line 1477
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/BaseCamera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1442
    :sswitch_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1443
    iget-boolean v0, p0, Lcom/android/camera/Camera;->classicAutoMode:Z

    if-nez v0, :cond_1

    const-string v0, "macro"

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1444
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->doSnapClassic()V

    :cond_2
    :goto_1
    move v0, v1

    .line 1449
    goto :goto_0

    .line 1446
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->doSnap()V

    goto :goto_1

    .line 1451
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->classicAutoMode:Z

    if-nez v0, :cond_4

    const-string v0, "macro"

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1452
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 1453
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->doFocusClassic(Z)V

    :cond_5
    move v0, v1

    .line 1455
    goto :goto_0

    .line 1458
    :cond_6
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->classicAutoMode:Z

    if-nez v0, :cond_7

    const-string v0, "macro"

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1461
    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 1465
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v0}, Lcom/android/camera/ui/HeadUpDisplay;->collapse()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_0

    .line 1466
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->doFocusClassic(Z)V

    .line 1467
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1468
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocusFromTouch()Z

    .line 1472
    :goto_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    :cond_9
    move v0, v1

    .line 1474
    goto :goto_0

    .line 1470
    :cond_a
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    goto :goto_2

    .line 1440
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2
        0x1b -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2247
    packed-switch p1, :pswitch_data_0

    .line 2254
    invoke-super {p0, p1, p2}, Lcom/android/camera/BaseCamera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2249
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 2250
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->doFocusClassic(Z)V

    .line 2252
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2247
    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPausing:Z

    .line 1276
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 1278
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 1279
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetScreenOn()V

    .line 1280
    invoke-direct {p0}, Lcom/android/camera/Camera;->changeHeadUpDisplayState()V

    .line 1282
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_1

    .line 1283
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1284
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-static {}, Lcom/android/camera/ImageManager;->getLastImageThumbPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ThumbnailController;->storeData(Ljava/lang/String;)Z

    .line 1288
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostCaptureAlert()V

    .line 1291
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    if-eqz v0, :cond_2

    .line 1292
    iget-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 1295
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopReceivingLocationUpdates()V

    .line 1297
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_3

    .line 1298
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1299
    iput-object v2, p0, Lcom/android/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 1302
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_4

    .line 1303
    iget-object v0, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 1304
    iput-object v2, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 1309
    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageCapture:Lcom/android/camera/Camera$ImageCapture;

    invoke-static {v0}, Lcom/android/camera/Camera$ImageCapture;->access$5000(Lcom/android/camera/Camera$ImageCapture;)V

    .line 1310
    iput-object v2, p0, Lcom/android/camera/Camera;->mImageCapture:Lcom/android/camera/Camera$ImageCapture;

    .line 1313
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1314
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1316
    invoke-super {p0}, Lcom/android/camera/BaseCamera;->onPause()V

    .line 1317
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 2015
    invoke-super {p0, p1}, Lcom/android/camera/BaseCamera;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2017
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2018
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2017
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2021
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onRestorePreferencesClicked()V
    .locals 3

    .prologue
    .line 2172
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-eqz v1, :cond_0

    .line 2182
    :goto_0
    return-void

    .line 2173
    :cond_0
    new-instance v0, Lcom/android/camera/Camera$12;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$12;-><init>(Lcom/android/camera/Camera;)V

    .line 2178
    .local v0, runnable:Ljava/lang/Runnable;
    const v1, 0x7f0a000a

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a000b

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/android/camera/MenuHelper;->confirmAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1233
    invoke-super {p0}, Lcom/android/camera/BaseCamera;->onResume()V

    .line 1235
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mPausing:Z

    .line 1236
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    .line 1237
    iput v3, p0, Lcom/android/camera/Camera;->mZoomValue:I

    .line 1238
    new-instance v1, Lcom/android/camera/Camera$ImageCapture;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/Camera$ImageCapture;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mImageCapture:Lcom/android/camera/Camera$ImageCapture;

    .line 1241
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mStartPreviewFail:Z

    if-nez v1, :cond_0

    .line 1242
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetExposureCompensation()V

    .line 1244
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    .line 1254
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-nez v1, :cond_2

    .line 1255
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1260
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 1261
    :goto_1
    return-void

    .line 1245
    :catch_0
    move-exception v0

    .line 1246
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    invoke-direct {p0}, Lcom/android/camera/Camera;->showCameraErrorAndFinish()V

    goto :goto_1

    .line 1257
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeSecondTime()V

    goto :goto_0
.end method

.method public onShutterButtonClick(Lcom/android/camera/ShutterButton;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 1151
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusing:Z

    if-eqz v0, :cond_1

    .line 1163
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1156
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->classicAutoMode:Z

    if-nez v0, :cond_2

    const-string v0, "macro"

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1157
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->doSnapClassic()V

    goto :goto_0

    .line 1159
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->doSnap()V

    goto :goto_0

    .line 1154
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0004
        :pswitch_0
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/android/camera/ShutterButton;Z)V
    .locals 2
    .parameter "button"
    .parameter "pressed"

    .prologue
    .line 1138
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1141
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1143
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->classicAutoMode:Z

    if-nez v0, :cond_2

    const-string v0, "macro"

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/Camera;->doFocusClassic(Z)V

    goto :goto_0

    .line 1141
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0004
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1003
    invoke-super {p0}, Lcom/android/camera/BaseCamera;->onStart()V

    .line 1004
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitcher:Lcom/android/camera/Switcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Switcher;->setSwitch(Z)V

    .line 1007
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1011
    invoke-super {p0}, Lcom/android/camera/BaseCamera;->onStop()V

    .line 1012
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1014
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 1016
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Lcom/android/camera/Switcher;Z)Z
    .locals 1
    .parameter "source"
    .parameter "onOff"

    .prologue
    .line 2083
    if-nez p2, :cond_0

    .line 2084
    invoke-direct {p0}, Lcom/android/camera/Camera;->switchToVideoMode()Z

    move-result v0

    .line 2086
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 2132
    invoke-super {p0}, Lcom/android/camera/BaseCamera;->onUserInteraction()V

    .line 2133
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 2134
    return-void
.end method

.method protected onZoomValueChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mSmoothZoomSupported:Z

    if-eqz v0, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearFocusState()V

    .line 449
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v0}, Lcom/android/camera/hardware/Camera;->cancelAutoFocus()V

    .line 451
    :cond_0
    iput p1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    .line 452
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    .line 454
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1490
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1491
    const-string v0, "camera"

    const-string v1, "holder.getSurface() == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_0
    :goto_0
    return-void

    .line 1498
    :cond_1
    iput-object p1, p0, Lcom/android/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1503
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1507
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1509
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1513
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1525
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-nez v0, :cond_3

    .line 1526
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1519
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->restartPreview()V

    goto :goto_1

    .line 1528
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeSecondTime()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 1533
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 1536
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 1537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1538
    return-void
.end method
