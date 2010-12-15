.class public abstract Lcom/android/camera/BaseCamera;
.super Lcom/android/camera/NoSearchActivity;
.source "BaseCamera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/camera/Switcher$OnSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/BaseCamera$ZoomListener;,
        Lcom/android/camera/BaseCamera$ZoomGestureListener;,
        Lcom/android/camera/BaseCamera$FocusGestureListener;,
        Lcom/android/camera/BaseCamera$StabilityChangeListener;,
        Lcom/android/camera/BaseCamera$StabilityListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseCamera"

.field protected static final ZOOM_START:I = 0x1

.field protected static final ZOOM_STOPPED:I = 0x0

.field protected static final ZOOM_STOPPING:I = 0x2


# instance fields
.field protected deviceStable:Z

.field private lastSensorUpdate:J

.field private lastSensorValues:[F

.field protected mCameraDevice:Lcom/android/camera/hardware/Camera;

.field protected mFocusGestureDetector:Landroid/view/GestureDetector;

.field protected mFocusMode:Ljava/lang/String;

.field protected mFocusRectangle:Lcom/android/camera/FocusRectangle;

.field protected mFocusing:Z

.field protected mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

.field protected mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

.field protected mOptionsMenu:Landroid/view/Menu;

.field protected mParameters:Lcom/android/camera/hardware/Camera$Parameters;

.field protected mPausing:Z

.field protected mPreferences:Landroid/content/SharedPreferences;

.field protected mPreviewing:Z

.field protected mSmoothZoomSupported:Z

.field private mStabilityChangeListener:Lcom/android/camera/BaseCamera$StabilityChangeListener;

.field private mStabilityListener:Lcom/android/camera/BaseCamera$StabilityListener;

.field private mStable:Z

.field protected mStableShotCounter:I

.field protected mStableShotDuration:I

.field protected mSurfaceView:Landroid/view/SurfaceView;

.field protected mTargetZoomValue:I

.field protected mZoomGestureDetector:Landroid/view/GestureDetector;

.field protected final mZoomListener:Lcom/android/camera/BaseCamera$ZoomListener;

.field protected mZoomMax:I

.field protected mZoomState:I

.field protected mZoomValue:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/camera/NoSearchActivity;-><init>()V

    .line 63
    iput v2, p0, Lcom/android/camera/BaseCamera;->mZoomState:I

    .line 71
    new-instance v0, Lcom/android/camera/BaseCamera$ZoomListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/BaseCamera$ZoomListener;-><init>(Lcom/android/camera/BaseCamera;Lcom/android/camera/BaseCamera$1;)V

    iput-object v0, p0, Lcom/android/camera/BaseCamera;->mZoomListener:Lcom/android/camera/BaseCamera$ZoomListener;

    .line 73
    iput-boolean v2, p0, Lcom/android/camera/BaseCamera;->mPausing:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/camera/BaseCamera;->mPreviewing:Z

    .line 75
    iput-boolean v2, p0, Lcom/android/camera/BaseCamera;->mFocusing:Z

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/BaseCamera;->lastSensorUpdate:J

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/BaseCamera;->lastSensorValues:[F

    .line 80
    iput v2, p0, Lcom/android/camera/BaseCamera;->mStableShotDuration:I

    .line 81
    iput v2, p0, Lcom/android/camera/BaseCamera;->mStableShotCounter:I

    .line 83
    iput-boolean v2, p0, Lcom/android/camera/BaseCamera;->deviceStable:Z

    .line 93
    iput-boolean v2, p0, Lcom/android/camera/BaseCamera;->mStable:Z

    .line 457
    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/BaseCamera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/camera/BaseCamera;->enableTouchAEC(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/BaseCamera;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/camera/BaseCamera;->updateTouchFocus(II)V

    return-void
.end method

.method private enableTouchAEC(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 411
    const-string v0, "BaseCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableTouchAEC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    const-string v1, "touch-aec"

    if-eqz p1, :cond_0

    const-string v2, "on"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-direct {p0}, Lcom/android/camera/BaseCamera;->setCameraParameters()V

    .line 414
    return-void

    .line 412
    :cond_0
    const-string v2, "off"

    goto :goto_0
.end method

.method protected static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 269
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private setCameraParameters()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/camera/BaseCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/camera/BaseCamera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/Camera;->setParameters(Lcom/android/camera/hardware/Camera$Parameters;)V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BaseCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/android/camera/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/media/MediaRecorder;->setCameraParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateTouchFocus(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 403
    const-string v0, "BaseCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTouchFocus x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/android/camera/BaseCamera;->mFocusRectangle:Lcom/android/camera/FocusRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusRectangle;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/android/camera/BaseCamera;->mFocusRectangle:Lcom/android/camera/FocusRectangle;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusRectangle;->setPosition(II)V

    .line 406
    iget-object v0, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    const-string v1, "touch-focus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-direct {p0}, Lcom/android/camera/BaseCamera;->setCameraParameters()V

    .line 408
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "m"

    .prologue
    .line 317
    const/4 v0, 0x1

    .line 318
    .local v0, ret:Z
    invoke-super {p0, p1}, Lcom/android/camera/NoSearchActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/android/camera/BaseCamera;->mZoomGestureDetector:Landroid/view/GestureDetector;

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/camera/BaseCamera;->mZoomGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BaseCamera;->mFocusGestureDetector:Landroid/view/GestureDetector;

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/android/camera/BaseCamera;->mFocusGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 326
    :cond_1
    return v0
.end method

.method protected getAutoFocusCallback()Lcom/android/camera/hardware/Camera$AutoFocusCallback;
    .locals 1

    .prologue
    .line 425
    new-instance v0, Lcom/android/camera/BaseCamera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/BaseCamera$1;-><init>(Lcom/android/camera/BaseCamera;)V

    return-object v0
.end method

.method protected abstract getCameraMode()I
.end method

.method protected getZoomRatios()[F
    .locals 8

    .prologue
    .line 293
    iget-object v5, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v5}, Lcom/android/camera/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v4

    .line 294
    .local v4, zoomRatios:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    const-string v6, "taking-picture-zoom"

    invoke-virtual {v5, v6}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 296
    iget v5, p0, Lcom/android/camera/BaseCamera;->mZoomMax:I

    add-int/lit8 v5, v5, 0x1

    new-array v2, v5, [F

    .line 297
    .local v2, result:[F
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 298
    const/high16 v5, 0x3f80

    int-to-float v6, v0

    const v7, 0x3e4ccccd

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v2, v0

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 312
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #result:[F
    .end local p0
    .local v3, result:[F
    :goto_1
    return-object v3

    .line 301
    .end local v3           #result:[F
    .restart local p0
    :cond_1
    if-eqz v4, :cond_3

    .line 302
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [F

    .line 303
    .restart local v2       #result:[F
    const/4 v0, 0x0

    .restart local v0       #i:I
    array-length v1, v2

    .end local p0
    .restart local v1       #n:I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 304
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c8

    div-float/2addr v5, v6

    aput v5, v2, v0

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v3, v2

    .line 306
    .end local v2           #result:[F
    .restart local v3       #result:[F
    goto :goto_1

    .line 310
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v3           #result:[F
    .restart local p0
    :cond_3
    const/4 v5, 0x1

    new-array v2, v5, [F

    .line 311
    .restart local v2       #result:[F
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v2, v5

    move-object v3, v2

    .line 312
    .end local v2           #result:[F
    .restart local v3       #result:[F
    goto :goto_1
.end method

.method protected initializeTouchFocus()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->hasTouchFocusSupport(Lcom/android/camera/hardware/Camera$Parameters;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 287
    :cond_0
    const-string v0, "BaseCamera"

    const-string v1, "initializeTouchFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/BaseCamera;->enableTouchAEC(Z)V

    .line 289
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/camera/BaseCamera$FocusGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/BaseCamera$FocusGestureListener;-><init>(Lcom/android/camera/BaseCamera;Lcom/android/camera/BaseCamera$1;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/BaseCamera;->mFocusGestureDetector:Landroid/view/GestureDetector;

    goto :goto_0
.end method

.method protected initializeZoom()V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/BaseCamera;->mZoomMax:I

    .line 278
    iget-object v0, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/BaseCamera;->mSmoothZoomSupported:Z

    .line 279
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/camera/BaseCamera$ZoomGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/BaseCamera$ZoomGestureListener;-><init>(Lcom/android/camera/BaseCamera;Lcom/android/camera/BaseCamera$1;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/BaseCamera;->mZoomGestureDetector:Landroid/view/GestureDetector;

    .line 281
    iget-object v0, p0, Lcom/android/camera/BaseCamera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/BaseCamera;->mZoomListener:Lcom/android/camera/BaseCamera$ZoomListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/Camera;->setZoomChangeListener(Lcom/android/camera/hardware/Camera$OnZoomChangeListener;)V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 116
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/android/camera/NoSearchActivity;->onPause()V

    .line 177
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/android/camera/BaseCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 178
    .local v0, mgr:Landroid/hardware/SensorManager;
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 179
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 167
    invoke-super {p0}, Lcom/android/camera/NoSearchActivity;->onResume()V

    .line 169
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Lcom/android/camera/BaseCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 170
    .local v0, mgr:Landroid/hardware/SensorManager;
    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 171
    .local v1, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 172
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .parameter "event"

    .prologue
    const/high16 v12, 0x3e80

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 121
    .local v0, curTime:J
    iget-wide v4, p0, Lcom/android/camera/BaseCamera;->lastSensorUpdate:J

    sub-long v2, v0, v4

    .line 122
    .local v2, elapsed:J
    iget-wide v4, p0, Lcom/android/camera/BaseCamera;->lastSensorUpdate:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 123
    :cond_0
    iput-wide v0, p0, Lcom/android/camera/BaseCamera;->lastSensorUpdate:J

    .line 124
    iget-wide v4, p0, Lcom/android/camera/BaseCamera;->lastSensorUpdate:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 125
    iget-object v4, p0, Lcom/android/camera/BaseCamera;->lastSensorValues:[F

    aput v11, v4, v8

    .line 126
    iget-object v4, p0, Lcom/android/camera/BaseCamera;->lastSensorValues:[F

    aput v11, v4, v9

    .line 127
    iget-object v4, p0, Lcom/android/camera/BaseCamera;->lastSensorValues:[F

    aput v11, v4, v10

    .line 164
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v8

    iget-object v5, p0, Lcom/android/camera/BaseCamera;->lastSensorValues:[F

    aget v5, v5, v8

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v12

    if-gez v4, :cond_5

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/android/camera/BaseCamera;->lastSensorValues:[F

    aget v5, v5, v9

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v12

    if-gez v4, :cond_5

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v10

    iget-object v5, p0, Lcom/android/camera/BaseCamera;->lastSensorValues:[F

    aget v5, v5, v10

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v12

    if-gez v4, :cond_5

    .line 133
    iget-object v4, p0, Lcom/android/camera/BaseCamera;->mStabilityListener:Lcom/android/camera/BaseCamera$StabilityListener;

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/camera/BaseCamera;->mStableShotDuration:I

    if-lez v4, :cond_3

    .line 134
    iget v4, p0, Lcom/android/camera/BaseCamera;->mStableShotCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/camera/BaseCamera;->mStableShotCounter:I

    .line 135
    const-string v4, "BaseCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "** Stableshot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/BaseCamera;->mStableShotCounter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget v4, p0, Lcom/android/camera/BaseCamera;->mStableShotCounter:I

    iget v5, p0, Lcom/android/camera/BaseCamera;->mStableShotDuration:I

    if-lt v4, v5, :cond_3

    .line 137
    iget-object v4, p0, Lcom/android/camera/BaseCamera;->mStabilityListener:Lcom/android/camera/BaseCamera$StabilityListener;

    invoke-interface {v4}, Lcom/android/camera/BaseCamera$StabilityListener;->onStable()V

    .line 140
    :cond_3
    iget-boolean v4, p0, Lcom/android/camera/BaseCamera;->mStable:Z

    if-nez v4, :cond_4

    .line 141
    iput-boolean v9, p0, Lcom/android/camera/BaseCamera;->mStable:Z

    .line 142
    const-string v4, "BaseCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stability changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/camera/BaseCamera;->mStable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v4, p0, Lcom/android/camera/BaseCamera;->mStabilityChangeListener:Lcom/android/camera/BaseCamera$StabilityChangeListener;

    if-eqz v4, :cond_4

    .line 144
    iget-object v4, p0, Lcom/android/camera/BaseCamera;->mStabilityChangeListener:Lcom/android/camera/BaseCamera$StabilityChangeListener;

    iget-boolean v5, p0, Lcom/android/camera/BaseCamera;->mStable:Z

    invoke-interface {v4, v5}, Lcom/android/camera/BaseCamera$StabilityChangeListener;->onStabilityChanged(Z)V

    .line 159
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/camera/BaseCamera;->lastSensorValues:[F

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    aput v5, v4, v8

    .line 160
    iget-object v4, p0, Lcom/android/camera/BaseCamera;->lastSensorValues:[F

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v9

    aput v5, v4, v9

    .line 161
    iget-object v4, p0, Lcom/android/camera/BaseCamera;->lastSensorValues:[F

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v10

    aput v5, v4, v10

    goto/16 :goto_0

    .line 148
    :cond_5
    iget-boolean v4, p0, Lcom/android/camera/BaseCamera;->mStable:Z

    if-eqz v4, :cond_4

    .line 149
    iput-boolean v8, p0, Lcom/android/camera/BaseCamera;->mStable:Z

    .line 150
    iput v8, p0, Lcom/android/camera/BaseCamera;->mStableShotCounter:I

    .line 151
    const-string v4, "BaseCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stability changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/camera/BaseCamera;->mStable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v4, p0, Lcom/android/camera/BaseCamera;->mStabilityChangeListener:Lcom/android/camera/BaseCamera$StabilityChangeListener;

    if-eqz v4, :cond_4

    .line 153
    iget-object v4, p0, Lcom/android/camera/BaseCamera;->mStabilityChangeListener:Lcom/android/camera/BaseCamera$StabilityChangeListener;

    iget-boolean v5, p0, Lcom/android/camera/BaseCamera;->mStable:Z

    invoke-interface {v4, v5}, Lcom/android/camera/BaseCamera$StabilityChangeListener;->onStabilityChanged(Z)V

    goto :goto_1
.end method

.method protected abstract onZoomValueChanged(I)V
.end method

.method protected resetFocusIndicator()V
    .locals 5

    .prologue
    .line 330
    iget-object v3, p0, Lcom/android/camera/BaseCamera;->mFocusRectangle:Lcom/android/camera/FocusRectangle;

    if-nez v3, :cond_0

    .line 339
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v3, p0, Lcom/android/camera/BaseCamera;->mFocusRectangle:Lcom/android/camera/FocusRectangle;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/FocusRectangle;->setVisibility(I)V

    .line 334
    const v3, 0x7f0c0007

    invoke-virtual {p0, v3}, Lcom/android/camera/BaseCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    .line 335
    .local v0, frameLayout:Lcom/android/camera/PreviewFrameLayout;
    invoke-virtual {v0}, Lcom/android/camera/PreviewFrameLayout;->getActualWidth()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 336
    .local v1, x:I
    invoke-virtual {v0}, Lcom/android/camera/PreviewFrameLayout;->getActualHeight()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 337
    .local v2, y:I
    iget-object v3, p0, Lcom/android/camera/BaseCamera;->mFocusRectangle:Lcom/android/camera/FocusRectangle;

    invoke-virtual {v3, v1, v2}, Lcom/android/camera/FocusRectangle;->setPosition(II)V

    .line 338
    invoke-direct {p0, v1, v2}, Lcom/android/camera/BaseCamera;->updateTouchFocus(II)V

    goto :goto_0
.end method

.method protected setCommonParameters()V
    .locals 15

    .prologue
    .line 183
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mPreferences:Landroid/content/SharedPreferences;

    const-string v12, "pref_camera_coloreffect_key"

    const v13, 0x7f0a006c

    invoke-virtual {p0, v13}, Lcom/android/camera/BaseCamera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, colorEffect:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v11}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/android/camera/BaseCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 187
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v11, v1}, Lcom/android/camera/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 191
    :cond_0
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v11}, Lcom/android/camera/hardware/Camera$Parameters;->getMaxSharpness()I

    move-result v11

    if-lez v11, :cond_2

    .line 192
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mPreferences:Landroid/content/SharedPreferences;

    const-string v12, "pref_camera_sharpness_key"

    iget-object v13, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v13}, Lcom/android/camera/hardware/Camera$Parameters;->getDefaultSharpness()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 195
    .local v9, sharpness:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 196
    .local v7, s:I
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v11}, Lcom/android/camera/hardware/Camera$Parameters;->getMaxSharpness()I

    move-result v11

    if-le v7, v11, :cond_1

    .line 197
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v11}, Lcom/android/camera/hardware/Camera$Parameters;->getDefaultSharpness()I

    move-result v7

    .line 199
    :cond_1
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v11, v7}, Lcom/android/camera/hardware/Camera$Parameters;->setSharpness(I)V

    .line 203
    .end local v7           #s:I
    .end local v9           #sharpness:Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v11}, Lcom/android/camera/hardware/Camera$Parameters;->getMaxContrast()I

    move-result v11

    if-lez v11, :cond_4

    .line 204
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mPreferences:Landroid/content/SharedPreferences;

    const-string v12, "pref_camera_contrast_key"

    iget-object v13, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v13}, Lcom/android/camera/hardware/Camera$Parameters;->getDefaultContrast()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, contrast:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 208
    .local v0, c:I
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v11}, Lcom/android/camera/hardware/Camera$Parameters;->getMaxContrast()I

    move-result v11

    if-le v0, v11, :cond_3

    .line 209
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v11}, Lcom/android/camera/hardware/Camera$Parameters;->getDefaultContrast()I

    move-result v0

    .line 211
    :cond_3
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v11, v0}, Lcom/android/camera/hardware/Camera$Parameters;->setContrast(I)V

    .line 215
    .end local v0           #c:I
    .end local v2           #contrast:Ljava/lang/String;
    :cond_4
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v11}, Lcom/android/camera/hardware/Camera$Parameters;->getMaxSaturation()I

    move-result v11

    if-lez v11, :cond_6

    .line 216
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mPreferences:Landroid/content/SharedPreferences;

    const-string v12, "pref_camera_saturation_key"

    iget-object v13, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v13}, Lcom/android/camera/hardware/Camera$Parameters;->getDefaultSaturation()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 219
    .local v8, saturation:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 220
    .restart local v7       #s:I
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v11}, Lcom/android/camera/hardware/Camera$Parameters;->getMaxSaturation()I

    move-result v11

    if-le v7, v11, :cond_5

    .line 221
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v11}, Lcom/android/camera/hardware/Camera$Parameters;->getDefaultSaturation()I

    move-result v7

    .line 223
    :cond_5
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v11, v7}, Lcom/android/camera/hardware/Camera$Parameters;->setSaturation(I)V

    .line 228
    .end local v7           #s:I
    .end local v8           #saturation:Ljava/lang/String;
    :cond_6
    :try_start_0
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mPreferences:Landroid/content/SharedPreferences;

    const-string v12, "pref_camera_stableshot_key"

    invoke-virtual {p0}, Lcom/android/camera/BaseCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a00c2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/camera/BaseCamera;->mStableShotDuration:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mPreferences:Landroid/content/SharedPreferences;

    const-string v12, "pref_camera_exposure_key"

    const-string v13, "0.0"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, exposure:Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 241
    .local v10, value:F
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v11}, Lcom/android/camera/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v5

    .line 242
    .local v5, max:I
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v11}, Lcom/android/camera/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v6

    .line 243
    .local v6, min:I
    int-to-float v11, v6

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_7

    int-to-float v11, v5

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_7

    .line 244
    iget-object v11, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    float-to-int v12, v10

    invoke-virtual {v11, v12}, Lcom/android/camera/hardware/Camera$Parameters;->setExposureCompensation(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    .end local v5           #max:I
    .end local v6           #min:I
    .end local v10           #value:F
    :goto_1
    return-void

    .line 231
    .end local v4           #exposure:Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 232
    .local v3, e:Ljava/lang/NumberFormatException;
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/camera/BaseCamera;->mStableShotDuration:I

    goto :goto_0

    .line 246
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #exposure:Ljava/lang/String;
    .restart local v5       #max:I
    .restart local v6       #min:I
    .restart local v10       #value:F
    :cond_7
    :try_start_2
    const-string v11, "BaseCamera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invalid exposure range: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 248
    .end local v5           #max:I
    .end local v6           #min:I
    .end local v10           #value:F
    :catch_1
    move-exception v11

    move-object v3, v11

    .line 249
    .restart local v3       #e:Ljava/lang/NumberFormatException;
    const-string v11, "BaseCamera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invalid exposure: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected setStabilityChangeListener(Lcom/android/camera/BaseCamera$StabilityChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/BaseCamera;->mStabilityChangeListener:Lcom/android/camera/BaseCamera$StabilityChangeListener;

    .line 112
    return-void
.end method

.method protected setStabilityListener(Lcom/android/camera/BaseCamera$StabilityListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/BaseCamera;->mStableShotCounter:I

    .line 107
    iput-object p1, p0, Lcom/android/camera/BaseCamera;->mStabilityListener:Lcom/android/camera/BaseCamera$StabilityListener;

    .line 108
    return-void
.end method

.method protected setWhiteBalance()V
    .locals 4

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/camera/BaseCamera;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_camera_whitebalance_key"

    const v3, 0x7f0a0065

    invoke-virtual {p0, v3}, Lcom/android/camera/BaseCamera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, whiteBalance:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/BaseCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Lcom/android/camera/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/android/camera/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 262
    if-nez v0, :cond_0

    .line 263
    const-string v0, "auto"

    goto :goto_0
.end method

.method transformCoordinate([F[I)V
    .locals 9
    .parameter "Coordinate"
    .parameter "SurfaceViewLocation"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 342
    aget v5, p1, v7

    aget v6, p2, v7

    int-to-float v6, v6

    sub-float v3, v5, v6

    .line 343
    .local v3, x:F
    aget v5, p1, v8

    aget v6, p2, v8

    int-to-float v6, v6

    sub-float v4, v5, v6

    .line 345
    .local v4, y:F
    iget-object v5, p0, Lcom/android/camera/BaseCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    .line 346
    .local v1, SurfaceViewWidth:I
    iget-object v5, p0, Lcom/android/camera/BaseCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    .line 347
    .local v0, SurfaceViewHeight:I
    iget-object v5, p0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v5}, Lcom/android/camera/hardware/Camera$Parameters;->getPreviewSize()Lcom/android/camera/hardware/Camera$Size;

    move-result-object v2

    .line 349
    .local v2, s:Lcom/android/camera/hardware/Camera$Size;
    iget v5, v2, Lcom/android/camera/hardware/Camera$Size;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, p1, v7

    .line 350
    iget v5, v2, Lcom/android/camera/hardware/Camera$Size;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    int-to-float v6, v0

    div-float/2addr v5, v6

    aput v5, p1, v8

    .line 351
    return-void
.end method
