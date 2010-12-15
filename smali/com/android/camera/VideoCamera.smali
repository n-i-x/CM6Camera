.class public Lcom/android/camera/VideoCamera;
.super Lcom/android/camera/BaseCamera;
.source "VideoCamera.java"

# interfaces
.implements Lcom/android/camera/media/MediaRecorder$OnErrorListener;
.implements Lcom/android/camera/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;,
        Lcom/android/camera/VideoCamera$MyBroadcastReceiver;,
        Lcom/android/camera/VideoCamera$MainHandler;,
        Lcom/android/camera/VideoCamera$DefaultHashMap;
    }
.end annotation


# static fields
.field static final AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoCamera$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CANNOT_STAT_ERROR:J = -0x2L

.field private static final CLEAR_SCREEN_DELAY:I = 0x4

.field private static final DEFAULT_CAMERA_BRIGHTNESS:F = 0.7f

.field private static final ENABLE_SHUTTER_BUTTON:I = 0x6

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final INIT_RECORDER:I = 0x3

.field private static final LOW_STORAGE_THRESHOLD:J = 0x80000L

.field private static final NO_STORAGE_ERROR:J = -0x1L

.field static final OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoCamera$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RELOAD_HUD:I = 0x7

.field private static final SCREEN_DELAY:I = 0x3e8

.field private static final SHUTTER_BUTTON_TIMEOUT:J = 0x1f4L

.field private static final STORAGE_STATUS_LOW:I = 0x1

.field private static final STORAGE_STATUS_NONE:I = 0x2

.field private static final STORAGE_STATUS_OK:I = 0x0

.field private static final SWITCH_CAMERA:Z = true

.field private static final SWITCH_VIDEO:Z = false

.field private static final TAG:Ljava/lang/String; = "videocamera"

.field private static final UPDATE_RECORD_TIME:I = 0x5

.field static final VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoCamera$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoCamera$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private focusModeChanged:Z

.field private mAudioEncoder:I

.field private mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

.field private mCameraVideoFilename:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

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

.field private mIsVideoCaptureIntent:Z

.field private mLastOrientation:I

.field private mLastPictureButton:Landroid/widget/ImageView;

.field private mLastStabilityChange:J

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorderRecording:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOutputFormat:Ljava/lang/String;

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mStabilityChangeListener:Lcom/android/camera/BaseCamera$StabilityChangeListener;

.field private mStartPreviewFail:Z

.field private mStorageHint:Lcom/android/camera/OnScreenHint;

.field private mStorageStatus:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSwitcher:Lcom/android/camera/Switcher;

.field private mThumbController:Lcom/android/camera/ThumbnailController;

.field private mVideoBitrate:I

.field private mVideoEncoder:I

.field private mVideoFps:I

.field private mVideoFrame:Landroid/widget/ImageView;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const v9, 0x4e200

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 210
    new-instance v2, Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-direct {v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;-><init>()V

    sput-object v2, Lcom/android/camera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    .line 212
    new-instance v2, Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-direct {v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;-><init>()V

    sput-object v2, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    .line 214
    new-instance v2, Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-direct {v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;-><init>()V

    sput-object v2, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    .line 216
    new-instance v2, Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-direct {v2}, Lcom/android/camera/VideoCamera$DefaultHashMap;-><init>()V

    sput-object v2, Lcom/android/camera/VideoCamera;->VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    .line 219
    sget-object v2, Lcom/android/camera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v3, "3gp"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v2, Lcom/android/camera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v3, "mp4"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v2, Lcom/android/camera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/VideoCamera$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 223
    invoke-static {}, Landroid/media/EncoderCapabilities;->getVideoEncoders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;

    .line 224
    .local v0, encoder:Landroid/media/EncoderCapabilities$VideoEncoderCap;
    iget v2, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 226
    :pswitch_0
    sget-object v2, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v3, "h263"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 229
    :pswitch_1
    sget-object v2, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v3, "h264"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 232
    :pswitch_2
    sget-object v2, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v3, "m4v"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 236
    .end local v0           #encoder:Landroid/media/EncoderCapabilities$VideoEncoderCap;
    :cond_0
    sget-object v2, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/VideoCamera$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 238
    invoke-static {}, Landroid/media/EncoderCapabilities;->getAudioEncoders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/EncoderCapabilities$AudioEncoderCap;

    .line 239
    .local v0, encoder:Landroid/media/EncoderCapabilities$AudioEncoderCap;
    iget v2, v0, Landroid/media/EncoderCapabilities$AudioEncoderCap;->mCodec:I

    packed-switch v2, :pswitch_data_1

    :pswitch_3
    goto :goto_1

    .line 241
    :pswitch_4
    sget-object v2, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v3, "amrnb"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 244
    :pswitch_5
    sget-object v2, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v3, "aac"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 248
    .end local v0           #encoder:Landroid/media/EncoderCapabilities$AudioEncoderCap;
    :cond_1
    sget-object v2, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/VideoCamera$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 258
    sget-object v2, Lcom/android/camera/VideoCamera;->VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v3, "1280x720"

    const v4, 0x5b8d80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v2, Lcom/android/camera/VideoCamera;->VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v3, "720x480"

    const v4, 0x2dc6c0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v2, Lcom/android/camera/VideoCamera;->VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v3, "800x480"

    const v4, 0x2dc6c0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v2, Lcom/android/camera/VideoCamera;->VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v3, "640x480"

    const v4, 0x186a00

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v2, Lcom/android/camera/VideoCamera;->VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v3, "352x288"

    const v4, 0x57e40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v2, Lcom/android/camera/VideoCamera;->VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v3, "320x240"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v2, Lcom/android/camera/VideoCamera;->VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    const-string v3, "176x144"

    const v4, 0x2ee00

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/VideoCamera$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v2, Lcom/android/camera/VideoCamera;->VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/VideoCamera$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 266
    return-void

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 239
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lcom/android/camera/BaseCamera;-><init>()V

    .line 133
    iput v1, p0, Lcom/android/camera/VideoCamera;->mLastOrientation:I

    .line 136
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 146
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mStartPreviewFail:Z

    .line 148
    iput v1, p0, Lcom/android/camera/VideoCamera;->mStorageStatus:I

    .line 150
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 169
    const-string v0, "3gp"

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mOutputFormat:Ljava/lang/String;

    .line 170
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/VideoCamera;->mVideoFps:I

    .line 276
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 278
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mLastStabilityChange:J

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mGalleryItems:Ljava/util/ArrayList;

    .line 282
    new-instance v0, Lcom/android/camera/VideoCamera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/VideoCamera$MainHandler;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    .line 325
    new-instance v0, Lcom/android/camera/VideoCamera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$1;-><init>(Lcom/android/camera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mStabilityChangeListener:Lcom/android/camera/BaseCamera$StabilityChangeListener;

    .line 345
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1853
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/VideoCamera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->cleanupEmptyFile()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/camera/VideoCamera;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/camera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/camera/VideoCamera;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/GLRootView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mStartPreviewFail:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showStorageHint()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->switchToCameraMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/VideoCamera;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->switchCameraDevice(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->gotoGallery()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferencesChanged()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onRestorePreferencesClicked()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->onPopupWindowVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeRecorder()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->finalizeHeadUpDisplay()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeHeadUpDisplay()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/VideoCamera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mLastStabilityChange:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/camera/VideoCamera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/android/camera/VideoCamera;->mLastStabilityChange:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/camera/VideoCamera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    return-void
.end method

.method private acquireVideoThumb()V
    .locals 3

    .prologue
    .line 1626
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1628
    .local v0, videoFrame:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 1629
    return-void
.end method

.method private addBaseMenuItems(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 1364
    new-instance v1, Lcom/android/camera/VideoCamera$7;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$7;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-static {p1, v3, v1}, Lcom/android/camera/MenuHelper;->addSwitchModeMenuItem(Landroid/view/Menu;ZLjava/lang/Runnable;)V

    .line 1370
    invoke-static {}, Lcom/android/camera/hardware/CameraSwitch;->hasCameraSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1371
    new-instance v1, Lcom/android/camera/VideoCamera$8;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$8;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-static {p1, v1}, Lcom/android/camera/MenuHelper;->addSwitchDeviceMenuItem(Landroid/view/Menu;Ljava/lang/Runnable;)V

    .line 1378
    :cond_0
    const/4 v1, 0x2

    const v2, 0x7f0a0010

    invoke-interface {p1, v3, v3, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/android/camera/VideoCamera$9;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoCamera$9;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 1388
    .local v0, gallery:Landroid/view/MenuItem;
    const v1, 0x108003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1389
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mGalleryItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1390
    iput-object p1, p0, Lcom/android/camera/VideoCamera;->mOptionsMenu:Landroid/view/Menu;

    .line 1391
    return-void
.end method

.method private changeHeadUpDisplayState()V
    .locals 3

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 575
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    if-nez v1, :cond_1

    .line 577
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeHeadUpDisplay()V

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    if-eqz v1, :cond_0

    .line 579
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->finalizeHeadUpDisplay()V

    goto :goto_0
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1154
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1155
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1156
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1157
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    .line 1161
    .end local v0           #f:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 2

    .prologue
    const-string v1, "videocamera"

    .line 938
    const-string v0, "videocamera"

    const-string v0, "closeCamera"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    if-nez v0, :cond_0

    .line 940
    const-string v0, "videocamera"

    const-string v0, "already stopped."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :goto_0
    return-void

    .line 943
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 944
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v0}, Lcom/android/camera/hardware/Camera;->lock()V

    .line 945
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 946
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    .line 947
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .parameter "dateTaken"

    .prologue
    .line 374
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 375
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0a0096

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 378
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createVideoPath()V
    .locals 15

    .prologue
    const/4 v10, 0x2

    const-string v14, "video/"

    const-string v13, "mp4"

    const-string v12, "mime_type"

    const-string v11, "3gpp"

    .line 1294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1295
    .local v2, dateTaken:J
    invoke-direct {p0, v2, v3}, Lcom/android/camera/VideoCamera;->createName(J)Ljava/lang/String;

    move-result-object v6

    .line 1297
    .local v6, title:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v8, :cond_0

    .line 1298
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mOutputFormat:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1303
    .local v5, filename:Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/android/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 1304
    .local v1, cameraDirPath:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1305
    .local v4, filePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1306
    .local v0, cameraDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1307
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x7

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 1308
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "title"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    const-string v8, "_display_name"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    const-string v8, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1311
    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v8, :cond_3

    .line 1312
    const-string v8, "mime_type"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "video/"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "3gp"

    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mOutputFormat:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "3gpp"

    move-object v9, v11

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    :goto_2
    const-string v8, "_data"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    .line 1319
    const-string v8, "videocamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current camera video filename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1321
    return-void

    .line 1300
    .end local v0           #cameraDir:Ljava/io/File;
    .end local v1           #cameraDirPath:Ljava/lang/String;
    .end local v4           #filePath:Ljava/lang/String;
    .end local v5           #filename:Ljava/lang/String;
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->fileFormat:I

    if-ne v10, v9, :cond_1

    const-string v9, ".mp4"

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #filename:Ljava/lang/String;
    goto/16 :goto_0

    .end local v5           #filename:Ljava/lang/String;
    :cond_1
    const-string v9, ".3gp"

    goto :goto_3

    .line 1312
    .restart local v0       #cameraDir:Ljava/io/File;
    .restart local v1       #cameraDirPath:Ljava/lang/String;
    .restart local v4       #filePath:Ljava/lang/String;
    .restart local v5       #filename:Ljava/lang/String;
    .restart local v7       #values:Landroid/content/ContentValues;
    :cond_2
    const-string v9, "mp4"

    move-object v9, v13

    goto :goto_1

    .line 1314
    :cond_3
    const-string v8, "mime_type"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "video/"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->fileFormat:I

    if-ne v10, v9, :cond_4

    const-string v9, "mp4"

    move-object v9, v13

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v9, "3gpp"

    move-object v9, v11

    goto :goto_4
.end method

.method private static dataLocation()Lcom/android/camera/ImageManager$DataLocation;
    .locals 1

    .prologue
    .line 1632
    sget-object v0, Lcom/android/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/android/camera/ImageManager$DataLocation;

    return-object v0
.end method

.method private deleteCurrentVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1344
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 1346
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 1349
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1350
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1352
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint(Z)V

    .line 1353
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    const-string v3, "videocamera"

    .line 1356
    const-string v1, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1358
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1359
    const-string v1, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_0
    return-void
.end method

.method private discardCurrentVideoAndInitRecorder()V
    .locals 0

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->deleteCurrentVideo()V

    .line 711
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideAlertAndInitializeRecorder()V

    .line 712
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .parameter "valid"

    .prologue
    .line 1117
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1119
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1120
    const/4 v0, -0x1

    .line 1121
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1125
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoCamera;->setResult(ILandroid/content/Intent;)V

    .line 1126
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 1127
    return-void

    .line 1123
    .end local v0           #resultCode:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method private static fadeIn(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1530
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1531
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1532
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1533
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1534
    return-void
.end method

.method private static fadeOut(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1537
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1538
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1539
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1540
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1541
    return-void
.end method

.method private filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;
    .locals 3
    .parameter "screen"

    .prologue
    const-string v2, "pref_video_quality_key"

    .line 1395
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1396
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1397
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v2}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1401
    :cond_0
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1402
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v2}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1405
    :cond_1
    return-object p1
.end method

.method private finalizeHeadUpDisplay()V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v0}, Lcom/android/camera/ui/HeadUpDisplay;->collapse()Z

    .line 620
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLRootView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    .line 622
    return-void
.end method

.method private static getAvailableStorage()J
    .locals 7

    .prologue
    .line 1136
    :try_start_0
    invoke-static {}, Lcom/android/camera/ImageManager;->hasStorage()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1137
    const-wide/16 v3, -0x1

    .line 1149
    :goto_0
    return-wide v3

    .line 1139
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1141
    .local v2, storageDirectory:Ljava/lang/String;
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1142
    .local v1, stat:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    goto :goto_0

    .line 1145
    .end local v1           #stat:Landroid/os/StatFs;
    .end local v2           #storageDirectory:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1149
    .local v0, ex:Ljava/lang/RuntimeException;
    const-wide/16 v3, -0x2

    goto :goto_0
.end method

.method private getStorageStatus(Z)I
    .locals 6
    .parameter "mayHaveSd"

    .prologue
    const-wide/16 v4, -0x1

    .line 744
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/VideoCamera;->getAvailableStorage()J

    move-result-wide v2

    move-wide v0, v2

    .line 745
    .local v0, remaining:J
    :goto_0
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 746
    const/4 v2, 0x2

    .line 748
    :goto_1
    return v2

    .end local v0           #remaining:J
    :cond_0
    move-wide v0, v4

    .line 744
    goto :goto_0

    .line 748
    .restart local v0       #remaining:J
    :cond_1
    const-wide/32 v2, 0x80000

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private gotoGallery()V
    .locals 0

    .prologue
    .line 1095
    invoke-static {p0}, Lcom/android/camera/MenuHelper;->gotoCameraVideoGallery(Landroid/app/Activity;)V

    .line 1096
    return-void
.end method

.method private hideAlert()V
    .locals 8

    .prologue
    .line 1520
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1521
    const v6, 0x7f0c0004

    invoke-virtual {p0, v6}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/VideoCamera;->fadeIn(Landroid/view/View;)V

    .line 1522
    const/4 v6, 0x3

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 1523
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

    .line 1524
    .local v3, id:I
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1525
    .local v1, button:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v6}, Lcom/android/camera/VideoCamera;->fadeOut(Landroid/view/View;)V

    .line 1523
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1527
    .end local v1           #button:Landroid/view/View;
    .end local v3           #id:I
    :cond_0
    return-void

    .line 1522
    :array_0
    .array-data 0x4
        0x2t 0x0t 0xct 0x7ft
        0x5t 0x0t 0xct 0x7ft
        0x3t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method private hideAlertAndInitializeRecorder()V
    .locals 2

    .prologue
    .line 1621
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideAlert()V

    .line 1622
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1623
    return-void
.end method

.method private declared-synchronized initializeHeadUpDisplay()V
    .locals 6

    .prologue
    .line 584
    monitor-enter p0

    const v3, 0x7f0c0008

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 585
    .local v0, frame:Landroid/widget/FrameLayout;
    new-instance v3, Lcom/android/camera/ui/GLRootView;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/GLRootView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    .line 586
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 588
    new-instance v3, Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-direct {v3, p0, v4}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;-><init>(Landroid/content/Context;Lcom/android/camera/hardware/Camera$Parameters;)V

    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    .line 589
    new-instance v2, Lcom/android/camera/CameraSettings;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-direct {v2, p0, v3}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Lcom/android/camera/hardware/Camera$Parameters;)V

    .line 591
    .local v2, settings:Lcom/android/camera/CameraSettings;
    const v3, 0x7f050001

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    .line 593
    .local v1, group:Lcom/android/camera/PreferenceGroup;
    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v3, :cond_0

    .line 594
    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    .line 596
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v3, p0, v1}, Lcom/android/camera/ui/HeadUpDisplay;->initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V

    .line 597
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/GLRootView;->setContentPane(Lcom/android/camera/ui/GLView;)V

    .line 598
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    new-instance v4, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/HeadUpDisplay;->setListener(Lcom/android/camera/ui/HeadUpDisplay$Listener;)V

    .line 599
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    iget v4, p0, Lcom/android/camera/VideoCamera;->mLastOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/HeadUpDisplay;->setOrientation(I)V

    .line 601
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v3}, Lcom/android/camera/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 602
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getZoomRatios()[F

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/HeadUpDisplay;->setZoomRatios([F)V

    .line 603
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    iget v4, p0, Lcom/android/camera/VideoCamera;->mZoomValue:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/HeadUpDisplay;->setZoomIndex(I)V

    .line 604
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    new-instance v4, Lcom/android/camera/VideoCamera$5;

    invoke-direct {v4, p0}, Lcom/android/camera/VideoCamera$5;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/HeadUpDisplay;->setZoomListener(Lcom/android/camera/ui/ZoomController$ZoomListener;)V

    .line 615
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateProfileInHud()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    monitor-exit p0

    return-void

    .line 584
    .end local v0           #frame:Landroid/widget/FrameLayout;
    .end local v1           #group:Lcom/android/camera/PreferenceGroup;
    .end local v2           #settings:Lcom/android/camera/CameraSettings;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private initializeRecorder()V
    .locals 14

    .prologue
    const/4 v12, 0x1

    const-string v13, "videocamera"

    .line 1165
    const-string v9, "videocamera"

    const-string v9, "initializeRecorder"

    invoke-static {v13, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    if-eqz v9, :cond_1

    .line 1281
    :cond_0
    :goto_0
    return-void

    .line 1170
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isAlertVisible()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    if-eqz v9, :cond_0

    .line 1172
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1173
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 1175
    .local v5, myExtras:Landroid/os/Bundle;
    const-wide/16 v6, 0x0

    .line 1176
    .local v6, requestedSizeLimit:J
    iget-boolean v9, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v9, :cond_3

    if-eqz v5, :cond_3

    .line 1177
    const-string v9, "output"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 1178
    .local v8, saveUri:Landroid/net/Uri;
    if-eqz v8, :cond_2

    .line 1180
    :try_start_0
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "rw"

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    .line 1183
    iput-object v8, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    :cond_2
    :goto_1
    const-string v9, "android.intent.extra.sizeLimit"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1191
    .end local v8           #saveUri:Landroid/net/Uri;
    :cond_3
    new-instance v9, Lcom/android/camera/media/MediaRecorder;

    invoke-direct {v9}, Lcom/android/camera/media/MediaRecorder;-><init>()V

    iput-object v9, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    .line 1197
    :try_start_1
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v9}, Lcom/android/camera/hardware/Camera;->unlock()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1200
    :goto_2
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v9, v10}, Lcom/android/camera/media/MediaRecorder;->setCamera(Lcom/android/camera/hardware/Camera;)V

    .line 1201
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    invoke-virtual {v9, v12}, Lcom/android/camera/media/MediaRecorder;->setAudioSource(I)V

    .line 1202
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    invoke-virtual {v9, v12}, Lcom/android/camera/media/MediaRecorder;->setVideoSource(I)V

    .line 1203
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v9, :cond_7

    .line 1204
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v9, v10}, Lcom/android/camera/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1205
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    iget v10, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    invoke-virtual {v9, v10}, Lcom/android/camera/media/MediaRecorder;->setMaxDuration(I)V

    .line 1225
    :goto_3
    invoke-direct {p0, v12}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint(Z)V

    .line 1227
    iget v9, p0, Lcom/android/camera/VideoCamera;->mStorageStatus:I

    if-eqz v9, :cond_8

    .line 1228
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    const-string v10, "/dev/null"

    invoke-virtual {v9, v10}, Lcom/android/camera/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 1240
    :goto_4
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v10}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/camera/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 1246
    invoke-static {}, Lcom/android/camera/VideoCamera;->getAvailableStorage()J

    move-result-wide v9

    const-wide/32 v11, 0x20000

    sub-long v3, v9, v11

    .line 1247
    .local v3, maxFileSize:J
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-lez v9, :cond_4

    cmp-long v9, v6, v3

    if-gez v9, :cond_4

    .line 1248
    move-wide v3, v6

    .line 1252
    :cond_4
    :try_start_2
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    invoke-virtual {v9, v3, v4}, Lcom/android/camera/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1261
    :goto_5
    :try_start_3
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    invoke-virtual {v9}, Lcom/android/camera/media/MediaRecorder;->prepare()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1267
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 1269
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->resetFocusIndicator()V

    .line 1270
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mFocusRectangle:Lcom/android/camera/FocusRectangle;

    if-eqz v9, :cond_5

    .line 1271
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mFocusRectangle:Lcom/android/camera/FocusRectangle;

    invoke-virtual {v9}, Lcom/android/camera/FocusRectangle;->clear()V

    .line 1275
    :cond_5
    iget-boolean v9, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v9, :cond_0

    .line 1276
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v9}, Lcom/android/camera/ThumbnailController;->isUriValid()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1277
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateLastVideo()V

    .line 1279
    :cond_6
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v9}, Lcom/android/camera/ThumbnailController;->updateDisplayIfNeeded()V

    goto/16 :goto_0

    .line 1184
    .end local v3           #maxFileSize:J
    .restart local v8       #saveUri:Landroid/net/Uri;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 1186
    .local v1, ex:Ljava/io/FileNotFoundException;
    const-string v9, "videocamera"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1209
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    .end local v8           #saveUri:Landroid/net/Uri;
    :cond_7
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    sget-object v9, Lcom/android/camera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    iget-object v11, p0, Lcom/android/camera/VideoCamera;->mOutputFormat:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/android/camera/VideoCamera$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, v9}, Lcom/android/camera/media/MediaRecorder;->setOutputFormat(I)V

    .line 1210
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    iget v10, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    invoke-virtual {v9, v10}, Lcom/android/camera/media/MediaRecorder;->setMaxDuration(I)V

    .line 1211
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    iget v10, p0, Lcom/android/camera/VideoCamera;->mVideoFps:I

    invoke-virtual {v9, v10}, Lcom/android/camera/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 1212
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    iget v10, p0, Lcom/android/camera/VideoCamera;->mVideoWidth:I

    iget v11, p0, Lcom/android/camera/VideoCamera;->mVideoHeight:I

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/media/MediaRecorder;->setVideoSize(II)V

    .line 1213
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    iget v10, p0, Lcom/android/camera/VideoCamera;->mVideoBitrate:I

    invoke-virtual {v9, v10}, Lcom/android/camera/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1214
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    iget v10, p0, Lcom/android/camera/VideoCamera;->mVideoEncoder:I

    invoke-virtual {v9, v10}, Lcom/android/camera/media/MediaRecorder;->setVideoEncoder(I)V

    .line 1215
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    iget v10, p0, Lcom/android/camera/VideoCamera;->mAudioEncoder:I

    invoke-virtual {v9, v10}, Lcom/android/camera/media/MediaRecorder;->setAudioEncoder(I)V

    .line 1216
    const-string v9, "videocamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Custom format  output format "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/camera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    iget-object v11, p0, Lcom/android/camera/VideoCamera;->mOutputFormat:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/camera/VideoCamera$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Video Fps "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/VideoCamera;->mVideoFps:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Video Bitrate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/VideoCamera;->mVideoBitrate:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Max Video Duration "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Video Encoder "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/VideoCamera;->mVideoEncoder:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Audio Encoder "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/VideoCamera;->mAudioEncoder:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1232
    :cond_8
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v9, :cond_9

    .line 1233
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v9, v10}, Lcom/android/camera/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    goto/16 :goto_4

    .line 1235
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->createVideoPath()V

    .line 1236
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/camera/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1262
    .restart local v3       #maxFileSize:J
    :catch_1
    move-exception v9

    move-object v0, v9

    .line 1263
    .local v0, e:Ljava/io/IOException;
    const-string v9, "videocamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prepare failed for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 1265
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 1253
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v9

    goto/16 :goto_5

    .line 1198
    .end local v3           #maxFileSize:J
    :catch_3
    move-exception v9

    goto/16 :goto_2
.end method

.method private isAlertVisible()Z
    .locals 1

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1617
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1618
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1610
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1611
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1612
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1613
    return-void
.end method

.method private onPopupWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 1880
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 1881
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeRecorder()V

    .line 1883
    :cond_0
    return-void
.end method

.method private onRestorePreferencesClicked()V
    .locals 3

    .prologue
    .line 1886
    new-instance v0, Lcom/android/camera/VideoCamera$10;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$10;-><init>(Lcom/android/camera/VideoCamera;)V

    .line 1891
    .local v0, runnable:Ljava/lang/Runnable;
    const v1, 0x7f0a000a

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a000b

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/android/camera/MenuHelper;->confirmAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1895
    return-void
.end method

.method private onSharedPreferencesChanged()V
    .locals 2

    .prologue
    .line 1899
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    if-eqz v0, :cond_0

    .line 1907
    :goto_0
    return-void

    .line 1900
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 1901
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 1904
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    if-nez v1, :cond_1

    monitor-exit v0

    goto :goto_0

    .line 1906
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1905
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetCameraParameters()V

    .line 1906
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private onStopVideoRecording(Z)V
    .locals 2
    .parameter "valid"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    check-cast v0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->setVideoQualityControlsEnabled(Z)V

    .line 676
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 677
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mQuickCapture:Z

    if-eqz v0, :cond_0

    .line 678
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->stopVideoRecordingAndReturn(Z)V

    .line 686
    :goto_0
    return-void

    .line 680
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecordingAndShowAlert()V

    goto :goto_0

    .line 683
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecordingAndGetThumbnail()V

    .line 684
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private overrideHudSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "videoEncoder"
    .parameter "audioEncoder"
    .parameter "videoDuration"
    .parameter "videoSize"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    if-eqz v0, :cond_0

    .line 535
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    new-instance v0, Lcom/android/camera/VideoCamera$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/VideoCamera$4;-><init>(Lcom/android/camera/VideoCamera;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/android/camera/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    .line 547
    :cond_0
    return-void
.end method

.method private pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 1438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1439
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1441
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1442
    return-void
.end method

.method private readVideoPreferences()V
    .locals 19

    .prologue
    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "pref_video_quality_key"

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultVideoQualityValue()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 758
    .local v10, quality:Ljava/lang/String;
    const-string v16, "custom"

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 760
    invoke-static {v10}, Lcom/android/camera/CameraSettings;->getVideoQuality(Ljava/lang/String;)Z

    move-result v15

    .line 763
    .local v15, videoQualityHigh:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 764
    .local v6, intent:Landroid/content/Intent;
    const-string v16, "android.intent.extra.videoQuality"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 765
    const-string v16, "android.intent.extra.videoQuality"

    const/16 v17, 0x0

    move-object v0, v6

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 767
    .local v5, extraVideoQuality:I
    if-lez v5, :cond_1

    const/16 v16, 0x1

    move/from16 v15, v16

    .line 772
    .end local v5           #extraVideoQuality:I
    :cond_0
    :goto_0
    const-string v16, "android.intent.extra.durationLimit"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 773
    const-string v16, "android.intent.extra.durationLimit"

    const/16 v17, 0x0

    move-object v0, v6

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 775
    .local v11, seconds:I
    move v0, v11

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    .line 780
    .end local v11           #seconds:I
    :goto_1
    invoke-static {v15}, Lcom/android/camera/CameraSettings;->getCamcorderProfile(Z)Landroid/media/CamcorderProfile;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    .line 841
    .end local v6           #intent:Landroid/content/Intent;
    .end local v15           #videoQualityHigh:Z
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoCamera;->updateProfileInHud()V

    .line 842
    return-void

    .line 767
    .restart local v5       #extraVideoQuality:I
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v15       #videoQualityHigh:Z
    :cond_1
    const/16 v16, 0x0

    move/from16 v15, v16

    goto :goto_0

    .line 777
    .end local v5           #extraVideoQuality:I
    :cond_2
    invoke-static {v10}, Lcom/android/camera/CameraSettings;->getVidoeDurationInMillis(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    goto :goto_1

    .line 782
    .end local v6           #intent:Landroid/content/Intent;
    .end local v15           #videoQualityHigh:Z
    :cond_3
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_videoencoder_key"

    const v18, 0x7f0a0026

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 787
    .local v13, videoEncoder:Ljava/lang/String;
    sget-object v16, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoCamera$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 788
    .local v4, encoderId:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoCamera;->mVideoEncoder:I

    move/from16 v16, v0

    move v0, v4

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x7

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 791
    :cond_4
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoCamera;->mVideoEncoder:I

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_audioencoder_key"

    const v18, 0x7f0a002c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 797
    .local v3, audioEncoder:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_videosize_key"

    const v18, 0x7f0a001c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 801
    .local v14, videoQuality:Ljava/lang/String;
    const/4 v12, 0x0

    .line 802
    .local v12, tokenizer:Ljava/util/StringTokenizer;
    if-eqz v14, :cond_5

    new-instance v12, Ljava/util/StringTokenizer;

    .end local v12           #tokenizer:Ljava/util/StringTokenizer;
    const-string v16, "x"

    move-object v0, v12

    move-object v1, v14

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v12       #tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 805
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoCamera;->mVideoWidth:I

    .line 806
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoCamera;->mVideoHeight:I

    .line 807
    sget-object v16, Lcom/android/camera/VideoCamera;->VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoCamera$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #encoderId:I
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoCamera;->mVideoBitrate:I

    .line 814
    :goto_3
    sget-object v16, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoCamera$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoCamera;->mVideoEncoder:I

    .line 815
    sget-object v16, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoCamera$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #audioEncoder:Ljava/lang/String;
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoCamera;->mAudioEncoder:I

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_video_duration_key"

    const-string v18, "30"

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 820
    .local v8, minutesStr:Ljava/lang/String;
    const/4 v7, -0x1

    .line 822
    .local v7, minutes:I
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 828
    :goto_4
    const/16 v16, -0x1

    move v0, v7

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 833
    const-string v16, "mms"

    invoke-static/range {v16 .. v16}, Lcom/android/camera/CameraSettings;->getVidoeDurationInMillis(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    goto/16 :goto_2

    .line 809
    .end local v7           #minutes:I
    .end local v8           #minutesStr:Ljava/lang/String;
    .restart local v3       #audioEncoder:Ljava/lang/String;
    .restart local v4       #encoderId:I
    :cond_5
    const/16 v16, 0x140

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoCamera;->mVideoWidth:I

    .line 810
    const/16 v16, 0xf0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoCamera;->mVideoHeight:I

    .line 811
    const v16, 0x4e200

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoCamera;->mVideoBitrate:I

    goto :goto_3

    .line 823
    .end local v3           #audioEncoder:Ljava/lang/String;
    .end local v4           #encoderId:I
    .restart local v7       #minutes:I
    .restart local v8       #minutesStr:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 825
    .local v9, npe:Ljava/lang/NumberFormatException;
    const/16 v7, 0x1e

    goto :goto_4

    .line 838
    .end local v9           #npe:Ljava/lang/NumberFormatException;
    :cond_6
    const v16, 0xea60

    mul-int v16, v16, v7

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    goto/16 :goto_2
.end method

.method private registerVideo()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const-string v8, "videocamera"

    const-string v7, "Current video URI: "

    .line 1324
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v2, :cond_0

    .line 1325
    const-string v2, "content://media/external/video/media"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1326
    .local v1, videoTable:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "_size"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1329
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1337
    const-string v2, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    .end local v1           #videoTable:Landroid/net/Uri;
    :cond_0
    :goto_0
    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1341
    return-void

    .line 1331
    .restart local v1       #videoTable:Landroid/net/Uri;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1334
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1335
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1337
    const-string v2, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    const-string v3, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current video URI: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
.end method

.method private releaseMediaRecorder()V
    .locals 2

    .prologue
    .line 1284
    const-string v0, "videocamera"

    const-string v1, "releaseMediaRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1286
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->cleanupEmptyFile()V

    .line 1287
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    invoke-virtual {v0}, Lcom/android/camera/media/MediaRecorder;->reset()V

    .line 1288
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    invoke-virtual {v0}, Lcom/android/camera/media/MediaRecorder;->release()V

    .line 1289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    .line 1291
    :cond_0
    return-void
.end method

.method private resetCameraParameters()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1809
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v3}, Lcom/android/camera/hardware/Camera$Parameters;->getPreviewSize()Lcom/android/camera/hardware/Camera$Size;

    move-result-object v1

    .line 1810
    .local v1, size:Lcom/android/camera/hardware/Camera$Size;
    const/4 v2, 0x1

    .line 1811
    .local v2, sizeChanged:Z
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v3, :cond_3

    .line 1812
    iget v3, v1, Lcom/android/camera/hardware/Camera$Size;->width:I

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v3, v4, :cond_0

    iget v3, v1, Lcom/android/camera/hardware/Camera$Size;->height:I

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-eq v3, v4, :cond_2

    :cond_0
    move v2, v6

    .line 1817
    :goto_0
    if-nez v2, :cond_1

    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mSmoothZoomSupported:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->focusModeChanged:Z

    if-eqz v3, :cond_6

    .line 1820
    :cond_1
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v3}, Lcom/android/camera/hardware/Camera;->stopPreview()V

    .line 1821
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 1822
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 1824
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 1825
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1826
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1833
    :goto_1
    return-void

    :cond_2
    move v2, v5

    .line 1812
    goto :goto_0

    .line 1815
    :cond_3
    iget v3, v1, Lcom/android/camera/hardware/Camera$Size;->width:I

    iget v4, p0, Lcom/android/camera/VideoCamera;->mVideoWidth:I

    if-ne v3, v4, :cond_4

    iget v3, v1, Lcom/android/camera/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/android/camera/VideoCamera;->mVideoHeight:I

    if-eq v3, v4, :cond_5

    :cond_4
    move v2, v6

    :goto_2
    goto :goto_0

    :cond_5
    move v2, v5

    goto :goto_2

    .line 1827
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1828
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showCameraBusyAndFinish()V

    goto :goto_1

    .line 1831
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    goto :goto_1
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1606
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1607
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 5

    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 851
    :goto_0
    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mVideoWidth:I

    int-to-double v1, v1

    iget v3, p0, Lcom/android/camera/VideoCamera;->mVideoHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    goto :goto_0
.end method

.method private setCameraParameters()V
    .locals 5

    .prologue
    .line 1714
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v2}, Lcom/android/camera/hardware/Camera;->getParameters()Lcom/android/camera/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    .line 1716
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v2, :cond_2

    .line 1717
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1718
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1723
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateProfileInHud()V

    .line 1726
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_camera_video_flashmode_key"

    const v4, 0x7f0a0064

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1729
    .local v0, flashMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v2}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 1730
    .local v1, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1731
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Lcom/android/camera/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1740
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateFocusMode()V

    .line 1741
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->setCommonParameters()V

    .line 1742
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->setWhiteBalance()V

    .line 1743
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->focusModeChanged:Z

    if-eqz v2, :cond_1

    .line 1744
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1746
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->setCamMode(Lcom/android/camera/hardware/Camera$Parameters;I)V

    .line 1747
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->setCameraHardwareParameters()V

    .line 1748
    return-void

    .line 1720
    .end local v0           #flashMode:Ljava/lang/String;
    .end local v1           #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/VideoCamera;->mVideoWidth:I

    iget v4, p0, Lcom/android/camera/VideoCamera;->mVideoHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1721
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/VideoCamera;->mVideoFps:I

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto :goto_0

    .line 1733
    .restart local v0       #flashMode:Ljava/lang/String;
    .restart local v1       #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v2}, Lcom/android/camera/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 1734
    if-nez v0, :cond_0

    .line 1735
    const v2, 0x7f0a005f

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setOrientationIndicator(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 625
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/RotateImageView;->setDegree(I)V

    .line 627
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/RotateImageView;->setDegree(I)V

    .line 629
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/camera/RotateImageView;

    invoke-virtual {p0, p1}, Lcom/android/camera/RotateImageView;->setDegree(I)V

    .line 631
    return-void
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 897
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v1, p1}, Lcom/android/camera/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    return-void

    .line 898
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 899
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 900
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewDisplay failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private showAlert()V
    .locals 9

    .prologue
    .line 1505
    const v6, 0x7f0c0004

    invoke-virtual {p0, v6}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/VideoCamera;->fadeOut(Landroid/view/View;)V

    .line 1506
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 1507
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1510
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1512
    :cond_0
    const/4 v6, 0x3

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 1513
    .local v5, pickIds:[I
    move-object v0, v5

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget v3, v0, v2

    .line 1514
    .local v3, id:I
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1515
    .local v1, button:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v6}, Lcom/android/camera/VideoCamera;->fadeIn(Landroid/view/View;)V

    .line 1513
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1517
    .end local v1           #button:Landroid/view/View;
    .end local v3           #id:I
    :cond_1
    return-void

    .line 1512
    :array_0
    .array-data 0x4
        0x2t 0x0t 0xct 0x7ft
        0x5t 0x0t 0xct 0x7ft
        0x3t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method private showCameraBusyAndFinish()V
    .locals 3

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 383
    .local v0, ress:Landroid/content/res/Resources;
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/camera/Util;->showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method private showStorageHint()V
    .locals 2

    .prologue
    .line 722
    const/4 v0, 0x0

    .line 723
    .local v0, errorMessage:Ljava/lang/String;
    iget v1, p0, Lcom/android/camera/VideoCamera;->mStorageStatus:I

    packed-switch v1, :pswitch_data_0

    .line 730
    :goto_0
    if-eqz v0, :cond_2

    .line 731
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v1, :cond_1

    .line 732
    invoke-static {p0, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 736
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->show()V

    .line 741
    :cond_0
    :goto_2
    return-void

    .line 725
    :pswitch_0
    const v1, 0x7f0a0007

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 726
    goto :goto_0

    .line 728
    :pswitch_1
    const v1, 0x7f0a0094

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 734
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 737
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 739
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_2

    .line 723
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 642
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 644
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :goto_0
    return-void

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 905
    const-string v1, "videocamera"

    const-string v2, "startPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v1, :cond_0

    .line 935
    :goto_0
    return-void

    .line 912
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    if-nez v1, :cond_1

    .line 915
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->open()Lcom/android/camera/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    .line 918
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v1}, Lcom/android/camera/hardware/Camera;->lock()V

    .line 919
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    .line 920
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 923
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->is720p(Lcom/android/camera/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 924
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 928
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v1}, Lcom/android/camera/hardware/Camera;->startPreview()V

    .line 929
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 930
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 931
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 932
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startVideoRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v2, "videocamera"

    .line 1445
    const-string v1, "videocamera"

    const-string v1, "startVideoRecording"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v1, :cond_0

    .line 1448
    iget v1, p0, Lcom/android/camera/VideoCamera;->mStorageStatus:I

    if-eqz v1, :cond_1

    .line 1449
    const-string v1, "videocamera"

    const-string v1, "Storage issue, ignore the start request"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    :cond_0
    :goto_0
    return-void

    .line 1454
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    if-nez v1, :cond_2

    .line 1455
    const-string v1, "videocamera"

    const-string v1, "MediaRecorder is not initialized."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1459
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->pauseAudioPlayback()V

    .line 1462
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/media/MediaRecorder;->setOnErrorListener(Lcom/android/camera/media/MediaRecorder$OnErrorListener;)V

    .line 1463
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/media/MediaRecorder;->setOnInfoListener(Lcom/android/camera/media/MediaRecorder$OnInfoListener;)V

    .line 1464
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    invoke-virtual {v1}, Lcom/android/camera/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1469
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    check-cast v1, Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->setVideoQualityControlsEnabled(Z)V

    .line 1471
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 1472
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    .line 1473
    invoke-direct {p0, v3}, Lcom/android/camera/VideoCamera;->updateRecordingIndicator(Z)V

    .line 1474
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1475
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1476
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateRecordingTime()V

    .line 1477
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOn()V

    goto :goto_0

    .line 1465
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1466
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "videocamera"

    const-string v1, "Could not start media recorder. "

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stopVideoRecording()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string v6, "videocamera"

    .line 1566
    const-string v3, "videocamera"

    const-string v3, "stopVideoRecording"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    const/4 v2, 0x0

    .line 1568
    .local v2, needToRegisterRecording:Z
    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    if-eqz v3, :cond_2

    .line 1569
    :cond_0
    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    if-eqz v3, :cond_1

    .line 1571
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/media/MediaRecorder;->setOnErrorListener(Lcom/android/camera/media/MediaRecorder$OnErrorListener;)V

    .line 1572
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/media/MediaRecorder;->setOnInfoListener(Lcom/android/camera/media/MediaRecorder$OnInfoListener;)V

    .line 1573
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    invoke-virtual {v3}, Lcom/android/camera/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1577
    :goto_0
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v3, v7}, Lcom/android/camera/ui/HeadUpDisplay;->setEnabled(Z)V

    .line 1578
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1579
    const-string v3, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting current video filename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    const/4 v2, 0x1

    .line 1582
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 1584
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 1585
    invoke-direct {p0, v7}, Lcom/android/camera/VideoCamera;->updateRecordingIndicator(Z)V

    .line 1586
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1587
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 1589
    :cond_2
    if-eqz v2, :cond_3

    iget v3, p0, Lcom/android/camera/VideoCamera;->mStorageStatus:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1590
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->registerVideo()V

    .line 1595
    :cond_3
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1596
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1597
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1601
    .end local v1           #f:Ljava/io/File;
    :cond_4
    :goto_1
    iput-object v5, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    .line 1602
    return-void

    .line 1574
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1575
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1598
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 1599
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "videocamera"

    const-string v3, "StopVideoRecording: mCameraVideoFilename is null"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private stopVideoRecordingAndGetThumbnail()V
    .locals 0

    .prologue
    .line 1490
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 1491
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->acquireVideoThumb()V

    .line 1492
    return-void
.end method

.method private stopVideoRecordingAndReturn(Z)V
    .locals 0
    .parameter "valid"

    .prologue
    .line 1495
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 1496
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 1497
    return-void
.end method

.method private stopVideoRecordingAndShowAlert()V
    .locals 0

    .prologue
    .line 1500
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 1501
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showAlert()V

    .line 1502
    return-void
.end method

.method private switchCameraDevice(Z)Z
    .locals 2
    .parameter "switchToSecondary"

    .prologue
    .line 1836
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1840
    :goto_0
    return v0

    .line 1837
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    if-eqz p1, :cond_2

    const-string v1, "secondary"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera/CameraHolder;->setCameraNode(Ljava/lang/String;)V

    .line 1839
    invoke-static {p0}, Lcom/android/camera/MenuHelper;->gotoVideoMode(Landroid/app/Activity;)V

    .line 1840
    const/4 v0, 0x1

    goto :goto_0

    .line 1837
    :cond_2
    const-string v1, "main"

    goto :goto_1
.end method

.method private switchToCameraMode()Z
    .locals 1

    .prologue
    .line 1780
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1783
    :goto_0
    return v0

    .line 1781
    :cond_1
    invoke-static {p0}, Lcom/android/camera/MenuHelper;->gotoCameraMode(Landroid/app/Activity;)V

    .line 1782
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 1783
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateAndShowStorageHint(Z)V
    .locals 1
    .parameter "mayHaveSd"

    .prologue
    .line 717
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->getStorageStatus(Z)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mStorageStatus:I

    .line 718
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showStorageHint()V

    .line 719
    return-void
.end method

.method private updateFocusMode()V
    .locals 5

    .prologue
    const-string v4, "infinity"

    .line 1751
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mFocusMode:Ljava/lang/String;

    .line 1752
    .local v0, oldmode:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_camera_video_focusmode_key"

    const v3, 0x7f0a0054

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mFocusMode:Ljava/lang/String;

    .line 1755
    const-string v1, "auto"

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1756
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mStabilityChangeListener:Lcom/android/camera/BaseCamera$StabilityChangeListener;

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->setStabilityChangeListener(Lcom/android/camera/BaseCamera$StabilityChangeListener;)V

    .line 1757
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1763
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFocusMode:Ljava/lang/String;

    if-eq v0, v1, :cond_3

    .line 1764
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->focusModeChanged:Z

    .line 1768
    :goto_1
    return-void

    .line 1758
    :cond_1
    const-string v1, "touch"

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "infinity"

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1760
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->setStabilityChangeListener(Lcom/android/camera/BaseCamera$StabilityChangeListener;)V

    .line 1761
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    const-string v2, "infinity"

    invoke-virtual {v1, v4}, Lcom/android/camera/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 1766
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->focusModeChanged:Z

    goto :goto_1
.end method

.method private updateLastVideo()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1636
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/camera/VideoCamera;->dataLocation()Lcom/android/camera/ImageManager$DataLocation;

    move-result-object v5

    const/4 v6, 0x4

    sget-object v7, Lcom/android/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    invoke-static {v4, v5, v6, v8, v7}, Lcom/android/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/android/camera/gallery/IImageList;

    move-result-object v2

    .line 1642
    .local v2, list:Lcom/android/camera/gallery/IImageList;
    invoke-interface {v2}, Lcom/android/camera/gallery/IImageList;->getCount()I

    move-result v0

    .line 1643
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1644
    sub-int v4, v0, v8

    invoke-interface {v2, v4}, Lcom/android/camera/gallery/IImageList;->getImageAt(I)Lcom/android/camera/gallery/IImage;

    move-result-object v1

    .line 1645
    .local v1, image:Lcom/android/camera/gallery/IImage;
    invoke-interface {v1}, Lcom/android/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 1646
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-interface {v1}, Lcom/android/camera/gallery/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 1650
    .end local v1           #image:Lcom/android/camera/gallery/IImage;
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    invoke-interface {v2}, Lcom/android/camera/gallery/IImageList;->close()V

    .line 1651
    return-void

    .line 1648
    :cond_0
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v4, v9, v9}, Lcom/android/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private updateProfileInHud()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 550
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "pref_video_quality_key"

    const-string v7, "high"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, quality:Ljava/lang/String;
    const-string v5, "custom"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 554
    sget-object v5, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/camera/VideoCamera$DefaultHashMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 555
    .local v3, videoEncoder:Ljava/lang/String;
    sget-object v5, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/camera/VideoCamera$DefaultHashMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 556
    .local v0, audioEncoder:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 557
    .local v4, videoSize:Ljava/lang/String;
    iget v5, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    div-int/lit16 v2, v5, 0x3e8

    .line 558
    .local v2, videoDuration:I
    const/16 v5, 0x3c

    if-lt v2, v5, :cond_0

    .line 559
    div-int/lit8 v2, v2, 0x3c

    .line 562
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v0, v5, v4}, Lcom/android/camera/VideoCamera;->overrideHudSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    .end local v0           #audioEncoder:Ljava/lang/String;
    .end local v2           #videoDuration:I
    .end local v3           #videoEncoder:Ljava/lang/String;
    .end local v4           #videoSize:Ljava/lang/String;
    :goto_1
    return-void

    .line 561
    .restart local v0       #audioEncoder:Ljava/lang/String;
    .restart local v2       #videoDuration:I
    .restart local v3       #videoEncoder:Ljava/lang/String;
    .restart local v4       #videoSize:Ljava/lang/String;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 564
    .end local v0           #audioEncoder:Ljava/lang/String;
    .end local v2           #videoDuration:I
    .end local v3           #videoEncoder:Ljava/lang/String;
    .end local v4           #videoSize:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v8, v8, v8, v8}, Lcom/android/camera/VideoCamera;->overrideHudSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateRecordingIndicator(Z)V
    .locals 3
    .parameter "showRecording"

    .prologue
    .line 1482
    if-eqz p1, :cond_0

    const v2, 0x7f020011

    move v1, v2

    .line 1485
    .local v1, drawableId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1486
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v2, v0}, Lcom/android/camera/ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1487
    return-void

    .line 1482
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawableId:I
    :cond_0
    const v2, 0x7f020012

    move v1, v2

    goto :goto_0
.end method

.method private updateRecordingTime()V
    .locals 30

    .prologue
    .line 1654
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 1711
    :goto_0
    return-void

    .line 1657
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1658
    .local v16, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    move-wide/from16 v26, v0

    sub-long v6, v16, v26

    .line 1662
    .local v6, delta:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    move/from16 v26, v0

    if-eqz v26, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    move/from16 v26, v0

    const v27, 0xea60

    sub-int v26, v26, v27

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v26, v6, v26

    if-ltz v26, :cond_6

    const/16 v26, 0x1

    move/from16 v5, v26

    .line 1665
    .local v5, countdownRemainingTime:Z
    :goto_1
    const-wide/16 v26, 0x3e8

    const-wide/16 v28, 0x3e8

    rem-long v28, v6, v28

    sub-long v14, v26, v28

    .line 1667
    .local v14, next_update_delay:J
    if-eqz v5, :cond_7

    .line 1668
    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    sub-long v28, v28, v6

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 1669
    const-wide/16 v26, 0x3e7

    add-long v26, v26, v6

    const-wide/16 v28, 0x3e8

    div-long v22, v26, v28

    .line 1674
    .local v22, seconds:J
    :goto_2
    const-wide/16 v26, 0x3c

    div-long v11, v22, v26

    .line 1675
    .local v11, minutes:J
    const-wide/16 v26, 0x3c

    div-long v8, v11, v26

    .line 1676
    .local v8, hours:J
    const-wide/16 v26, 0x3c

    mul-long v26, v26, v8

    sub-long v18, v11, v26

    .line 1677
    .local v18, remainderMinutes:J
    const-wide/16 v26, 0x3c

    mul-long v26, v26, v11

    sub-long v20, v22, v26

    .line 1679
    .local v20, remainderSeconds:J
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    .line 1680
    .local v24, secondsString:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    .line 1681
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "0"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1683
    :cond_1
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 1684
    .local v13, minutesString:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    .line 1685
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "0"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1687
    :cond_2
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ":"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1688
    .local v25, text:Ljava/lang/String;
    const-wide/16 v26, 0x0

    cmp-long v26, v8, v26

    if-lez v26, :cond_4

    .line 1689
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 1690
    .local v10, hoursString:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    .line 1691
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "0"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1693
    :cond_3
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ":"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1695
    .end local v10           #hoursString:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1697
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    move/from16 v26, v0

    move/from16 v0, v26

    move v1, v5

    if-eq v0, v1, :cond_5

    .line 1700
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 1702
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    if-eqz v5, :cond_8

    const v27, 0x7f070001

    :goto_3
    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1706
    .local v4, color:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1709
    .end local v4           #color:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x5

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-wide v2, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1662
    .end local v5           #countdownRemainingTime:Z
    .end local v8           #hours:J
    .end local v11           #minutes:J
    .end local v13           #minutesString:Ljava/lang/String;
    .end local v14           #next_update_delay:J
    .end local v18           #remainderMinutes:J
    .end local v20           #remainderSeconds:J
    .end local v22           #seconds:J
    .end local v24           #secondsString:Ljava/lang/String;
    .end local v25           #text:Ljava/lang/String;
    :cond_6
    const/16 v26, 0x0

    move/from16 v5, v26

    goto/16 :goto_1

    .line 1671
    .restart local v5       #countdownRemainingTime:Z
    .restart local v14       #next_update_delay:J
    :cond_7
    const-wide/16 v26, 0x3e8

    div-long v22, v6, v26

    .restart local v22       #seconds:J
    goto/16 :goto_2

    .line 1702
    .restart local v8       #hours:J
    .restart local v11       #minutes:J
    .restart local v13       #minutesString:Ljava/lang/String;
    .restart local v18       #remainderMinutes:J
    .restart local v20       #remainderSeconds:J
    .restart local v24       #secondsString:Ljava/lang/String;
    .restart local v25       #text:Ljava/lang/String;
    :cond_8
    const/high16 v27, 0x7f07

    goto :goto_3
.end method

.method private viewLastVideo()V
    .locals 7

    .prologue
    const-string v6, "videocamera"

    .line 1548
    const/4 v2, 0x0

    .line 1549
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v4}, Lcom/android/camera/ThumbnailController;->isUriValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1550
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v4, "com.cooliris.media.action.REVIEW"

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v5}, Lcom/android/camera/ThumbnailController;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1552
    .restart local v2       #intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1563
    :goto_0
    return-void

    .line 1553
    :catch_0
    move-exception v1

    .line 1555
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v5}, Lcom/android/camera/ThumbnailController;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2           #intent:Landroid/content/Intent;
    .local v3, intent:Landroid/content/Intent;
    move-object v2, v3

    .line 1558
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 1556
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 1557
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "videocamera"

    const-string v4, "review video fail"

    invoke-static {v6, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1561
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    :cond_0
    const-string v4, "videocamera"

    const-string v4, "Can\'t view last video."

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getCameraMode()I
    .locals 1

    .prologue
    .line 1911
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1002
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 1003
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 1004
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording(Z)V

    goto :goto_0

    .line 1005
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v0}, Lcom/android/camera/ui/HeadUpDisplay;->collapse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1006
    :cond_3
    invoke-super {p0}, Lcom/android/camera/BaseCamera;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 651
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 668
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 653
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->discardCurrentVideoAndInitRecorder()V

    goto :goto_0

    .line 656
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPlayVideoActivity()V

    goto :goto_0

    .line 659
    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    goto :goto_0

    .line 662
    :pswitch_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->stopVideoRecordingAndReturn(Z)V

    goto :goto_0

    .line 665
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->viewLastVideo()V

    goto :goto_0

    .line 651
    :pswitch_data_0
    .packed-switch 0x7f0c0001
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 1796
    invoke-super {p0, p1}, Lcom/android/camera/BaseCamera;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1803
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->changeHeadUpDisplayState()V

    .line 1804
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v11, 0x0

    .line 390
    invoke-super {p0, p1}, Lcom/android/camera/BaseCamera;->onCreate(Landroid/os/Bundle;)V

    .line 392
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 395
    .local v7, win:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "screen_brightness_mode"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 399
    .local v3, mode:I
    const/4 v9, 0x1

    if-ne v3, v9, :cond_0

    .line 400
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 401
    .local v8, winParams:Landroid/view/WindowManager$LayoutParams;
    const v9, 0x3f333333

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 402
    invoke-virtual {v7, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 405
    .end local v8           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraHolder;->getCameraNode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v11}, Lcom/android/camera/VideoCamera;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/VideoCamera;->mPreferences:Landroid/content/SharedPreferences;

    .line 406
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->upgradePreferences(Landroid/content/SharedPreferences;)V

    .line 408
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 412
    new-instance v9, Lcom/android/camera/VideoCamera$2;

    invoke-direct {v9, p0, p0}, Lcom/android/camera/VideoCamera$2;-><init>(Lcom/android/camera/VideoCamera;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 437
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v9}, Landroid/view/OrientationEventListener;->enable()V

    .line 443
    new-instance v6, Ljava/lang/Thread;

    new-instance v9, Lcom/android/camera/VideoCamera$3;

    invoke-direct {v9, p0}, Lcom/android/camera/VideoCamera$3;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-direct {v6, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 458
    .local v6, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 460
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    .line 462
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/camera/VideoCamera;->requestWindowFeature(I)Z

    .line 463
    const v9, 0x7f030004

    invoke-virtual {p0, v9}, Lcom/android/camera/VideoCamera;->setContentView(I)V

    .line 465
    const v9, 0x7f0c0007

    invoke-virtual {p0, v9}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/camera/PreviewFrameLayout;

    iput-object v9, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 467
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v9, p0}, Lcom/android/camera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 468
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 470
    const v9, 0x7f0c0009

    invoke-virtual {p0, v9}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/SurfaceView;

    iput-object v9, p0, Lcom/android/camera/VideoCamera;->mSurfaceView:Landroid/view/SurfaceView;

    .line 471
    const v9, 0x7f0c0012

    invoke-virtual {p0, v9}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/camera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    .line 472
    const v9, 0x7f0c000a

    invoke-virtual {p0, v9}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/camera/FocusRectangle;

    iput-object v9, p0, Lcom/android/camera/VideoCamera;->mFocusRectangle:Lcom/android/camera/FocusRectangle;

    .line 477
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v9}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 478
    .local v1, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 479
    const/4 v9, 0x3

    invoke-interface {v1, v9}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 481
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isVideoCaptureIntent()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    .line 482
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "android.intent.extra.quickCapture"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/camera/VideoCamera;->mQuickCapture:Z

    .line 483
    const v9, 0x7f0c0013

    invoke-virtual {p0, v9}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    .line 485
    const v9, 0x7f0c0011

    invoke-virtual {p0, v9}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 486
    .local v5, rootView:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 487
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget-boolean v9, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v9, :cond_1

    .line 488
    const v9, 0x7f030002

    invoke-virtual {v2, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 490
    .local v0, controlBar:Landroid/view/View;
    const v9, 0x7f0c000b

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/camera/VideoCamera;->mLastPictureButton:Landroid/widget/ImageView;

    .line 492
    new-instance v9, Lcom/android/camera/ThumbnailController;

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/VideoCamera;->mLastPictureButton:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v9, v10, v11, v12}, Lcom/android/camera/ThumbnailController;-><init>(Landroid/content/res/Resources;Landroid/widget/ImageView;Landroid/content/ContentResolver;)V

    iput-object v9, p0, Lcom/android/camera/VideoCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    .line 494
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mLastPictureButton:Landroid/widget/ImageView;

    invoke-virtual {v9, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-static {}, Lcom/android/camera/ImageManager;->getLastVideoThumbPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/camera/ThumbnailController;->loadData(Ljava/lang/String;)Z

    .line 496
    const v9, 0x7f0c000e

    invoke-virtual {p0, v9}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/camera/Switcher;

    iput-object v9, p0, Lcom/android/camera/VideoCamera;->mSwitcher:Lcom/android/camera/Switcher;

    .line 497
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mSwitcher:Lcom/android/camera/Switcher;

    invoke-virtual {v9, p0}, Lcom/android/camera/Switcher;->setOnSwitchListener(Lcom/android/camera/Switcher$OnSwitchListener;)V

    .line 498
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mSwitcher:Lcom/android/camera/Switcher;

    const v10, 0x7f0c000c

    invoke-virtual {p0, v10}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/camera/Switcher;->addTouchView(Landroid/view/View;)V

    .line 511
    :goto_0
    const v9, 0x7f0c0004

    invoke-virtual {p0, v9}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ShutterButton;

    iput-object v9, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 512
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v10, 0x7f020011

    invoke-virtual {v9, v10}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 513
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v9, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 514
    iget-object v9, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v9}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    .line 518
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Thread;->join()V

    .line 519
    iget-boolean v9, p0, Lcom/android/camera/VideoCamera;->mStartPreviewFail:Z

    if-eqz v9, :cond_2

    .line 520
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showCameraBusyAndFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_1
    return-void

    .line 500
    .end local v0           #controlBar:Landroid/view/View;
    :cond_1
    const/high16 v9, 0x7f03

    invoke-virtual {v2, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 502
    .restart local v0       #controlBar:Landroid/view/View;
    const v9, 0x7f0c0001

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    const v9, 0x7f0c0002

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 505
    .local v4, retake:Landroid/widget/ImageView;
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    const v9, 0x7f020010

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 507
    const v9, 0x7f0c0003

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    const v9, 0x7f0c0005

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 523
    .end local v4           #retake:Landroid/widget/ImageView;
    :catch_0
    move-exception v9

    .line 527
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->initializeZoom()V

    .line 528
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->initializeTouchFocus()V

    .line 529
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateFocusMode()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1100
    invoke-super {p0, p1}, Lcom/android/camera/BaseCamera;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1102
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 1104
    const/4 v0, 0x0

    .line 1108
    :goto_0
    return v0

    .line 1106
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->addBaseMenuItems(Landroid/view/Menu;)V

    .line 1108
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onError(Lcom/android/camera/media/MediaRecorder;II)V
    .locals 1
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v0, 0x1

    .line 1410
    if-ne p2, v0, :cond_0

    .line 1412
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 1413
    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint(Z)V

    .line 1415
    :cond_0
    return-void
.end method

.method public onInfo(Lcom/android/camera/media/MediaRecorder;II)V
    .locals 2
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v1, 0x1

    .line 1419
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1420
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->onStopVideoRecording(Z)V

    .line 1429
    :cond_0
    :goto_0
    return-void

    .line 1421
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1423
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->onStopVideoRecording(Z)V

    .line 1426
    :cond_2
    const v0, 0x7f0a0097

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1013
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 1038
    :goto_0
    return v0

    .line 1017
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1038
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/BaseCamera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1019
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1020
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->performClick()Z

    move v0, v1

    .line 1021
    goto :goto_0

    .line 1025
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1026
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->performClick()Z

    move v0, v1

    .line 1027
    goto :goto_0

    .line 1031
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    .line 1032
    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->onStopVideoRecording(Z)V

    move v0, v1

    .line 1033
    goto :goto_0

    .line 1017
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x1b -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1043
    packed-switch p1, :pswitch_data_0

    .line 1048
    invoke-super {p0, p1, p2}, Lcom/android/camera/BaseCamera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1045
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 1046
    const/4 v0, 0x1

    goto :goto_0

    .line 1043
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 952
    invoke-super {p0}, Lcom/android/camera/BaseCamera;->onPause()V

    .line 953
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    .line 954
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 955
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->changeHeadUpDisplayState()V

    .line 959
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 963
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_4

    .line 964
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_3

    .line 965
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 966
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showAlert()V

    .line 973
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 975
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 977
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 979
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetScreenOn()V

    .line 981
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_1

    .line 982
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-static {}, Lcom/android/camera/ImageManager;->getLastVideoThumbPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ThumbnailController;->storeData(Ljava/lang/String;)Z

    .line 985
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_2

    .line 986
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 987
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 990
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 992
    return-void

    .line 968
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecordingAndGetThumbnail()V

    goto :goto_0

    .line 971
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 855
    invoke-super {p0}, Lcom/android/camera/BaseCamera;->onResume()V

    .line 856
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    .line 857
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->enable()V

    .line 858
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 859
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 860
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 861
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mStartPreviewFail:Z

    if-nez v2, :cond_0

    .line 863
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->changeHeadUpDisplayState()V

    .line 870
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 873
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 875
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 876
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 877
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 878
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 879
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 880
    new-instance v2, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 881
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/VideoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 882
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->getStorageStatus(Z)I

    move-result v2

    iput v2, p0, Lcom/android/camera/VideoCamera;->mStorageStatus:I

    .line 884
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/VideoCamera$6;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoCamera$6;-><init>(Lcom/android/camera/VideoCamera;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 890
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_1

    .line 891
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 893
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_1
    :goto_0
    return-void

    .line 864
    :catch_0
    move-exception v0

    .line 865
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showCameraBusyAndFinish()V

    goto :goto_0
.end method

.method public onShutterButtonClick(Lcom/android/camera/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 689
    invoke-virtual {p1}, Lcom/android/camera/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 691
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v0}, Lcom/android/camera/ui/HeadUpDisplay;->collapse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 694
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording(Z)V

    .line 702
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 703
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 695
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    if-eqz v0, :cond_1

    .line 700
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startVideoRecording()V

    goto :goto_1

    .line 689
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0004
        :pswitch_0
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/android/camera/ShutterButton;Z)V
    .locals 0
    .parameter "button"
    .parameter "pressed"

    .prologue
    .line 672
    return-void
.end method

.method public onSizeChanged()V
    .locals 0

    .prologue
    .line 1851
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 635
    invoke-super {p0}, Lcom/android/camera/BaseCamera;->onStart()V

    .line 636
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitcher:Lcom/android/camera/Switcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/Switcher;->setSwitch(Z)V

    .line 639
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Lcom/android/camera/Switcher;Z)Z
    .locals 1
    .parameter "source"
    .parameter "onOff"

    .prologue
    const/4 v0, 0x1

    .line 1787
    if-ne p2, v0, :cond_0

    .line 1788
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->switchToCameraMode()Z

    move-result v0

    .line 1790
    :cond_0
    return v0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 996
    invoke-super {p0}, Lcom/android/camera/BaseCamera;->onUserInteraction()V

    .line 997
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 998
    :cond_0
    return-void
.end method

.method protected onZoomValueChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1844
    iput p1, p0, Lcom/android/camera/VideoCamera;->mZoomValue:I

    .line 1845
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->setZoom(I)V

    .line 1846
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->setCameraHardwareParameters()V

    .line 1847
    return-void
.end method

.method protected setCameraHardwareParameters()V
    .locals 2

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->dumpParameters(Lcom/android/camera/hardware/Camera$Parameters;)V

    .line 1772
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/android/camera/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/media/MediaRecorder;->setCameraParameters(Ljava/lang/String;)V

    .line 1777
    :goto_0
    return-void

    .line 1775
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/Camera;->setParameters(Lcom/android/camera/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const-string v1, "videocamera"

    .line 1052
    const-string v0, "videocamera"

    const-string v0, "surfaceChanged"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1055
    const-string v0, "videocamera"

    const-string v0, "holder.getSurface() == null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    if-nez v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1074
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 1075
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 1080
    :cond_2
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1082
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1088
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 1091
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1092
    return-void
.end method
