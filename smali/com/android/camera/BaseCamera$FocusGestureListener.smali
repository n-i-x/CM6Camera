.class Lcom/android/camera/BaseCamera$FocusGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BaseCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BaseCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BaseCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/BaseCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BaseCamera;Lcom/android/camera/BaseCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/android/camera/BaseCamera$FocusGestureListener;-><init>(Lcom/android/camera/BaseCamera;)V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "e"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 357
    iget-object v2, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-boolean v2, v2, Lcom/android/camera/BaseCamera;->mPausing:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-boolean v2, v2, Lcom/android/camera/BaseCamera;->mPreviewing:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-object v2, v2, Lcom/android/camera/BaseCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-boolean v2, v2, Lcom/android/camera/BaseCamera;->mFocusing:Z

    if-nez v2, :cond_0

    const-string v2, "touch"

    iget-object v3, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-object v3, v3, Lcom/android/camera/BaseCamera;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-object v2, v2, Lcom/android/camera/BaseCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v2}, Lcom/android/camera/ui/HeadUpDisplay;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v7

    .line 398
    :goto_0
    return v2

    .line 362
    :cond_1
    iget-object v2, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iput-boolean v6, v2, Lcom/android/camera/BaseCamera;->mFocusing:Z

    .line 363
    new-array v1, v4, [F

    .line 364
    .local v1, coord:[F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v1, v7

    .line 365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aput v2, v1, v6

    .line 367
    new-array v0, v4, [I

    .line 368
    .local v0, SurfaceViewLocation:[I
    iget-object v2, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-object v2, v2, Lcom/android/camera/BaseCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceView;->getLocationOnScreen([I)V

    .line 370
    aget v2, v1, v7

    aget v3, v0, v7

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_2

    aget v2, v1, v6

    aget v3, v0, v6

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_2

    aget v2, v1, v7

    iget-object v3, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-object v3, v3, Lcom/android/camera/BaseCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_2

    aget v2, v1, v6

    iget-object v3, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-object v3, v3, Lcom/android/camera/BaseCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    :cond_2
    move v2, v6

    .line 373
    goto :goto_0

    .line 377
    :cond_3
    iget-object v2, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/BaseCamera;->transformCoordinate([F[I)V

    .line 380
    iget-object v2, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-object v2, v2, Lcom/android/camera/BaseCamera;->mFocusRectangle:Lcom/android/camera/FocusRectangle;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aget v4, v0, v7

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    aget v5, v0, v6

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/FocusRectangle;->setPosition(II)V

    .line 383
    iget-object v2, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    invoke-static {v2, v6}, Lcom/android/camera/BaseCamera;->access$300(Lcom/android/camera/BaseCamera;Z)V

    .line 384
    iget-object v2, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    aget v3, v1, v7

    float-to-int v3, v3

    aget v4, v1, v6

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/BaseCamera;->access$400(Lcom/android/camera/BaseCamera;II)V

    .line 386
    iget-object v2, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-object v2, v2, Lcom/android/camera/BaseCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    if-nez v2, :cond_4

    .line 388
    iget-object v2, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-object v2, v2, Lcom/android/camera/BaseCamera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    iget-object v3, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    invoke-virtual {v3}, Lcom/android/camera/BaseCamera;->getAutoFocusCallback()Lcom/android/camera/hardware/Camera$AutoFocusCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/Camera;->autoFocus(Lcom/android/camera/hardware/Camera$AutoFocusCallback;)V

    :goto_1
    move v2, v6

    .line 398
    goto/16 :goto_0

    .line 393
    :cond_4
    iget-object v2, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-object v2, v2, Lcom/android/camera/BaseCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    invoke-virtual {v2}, Lcom/android/camera/media/MediaRecorder;->autoFocusCamera()V

    .line 394
    iget-object v2, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-object v2, v2, Lcom/android/camera/BaseCamera;->mFocusRectangle:Lcom/android/camera/FocusRectangle;

    invoke-virtual {v2}, Lcom/android/camera/FocusRectangle;->showSuccess()V

    .line 395
    iget-object v2, p0, Lcom/android/camera/BaseCamera$FocusGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iput-boolean v7, v2, Lcom/android/camera/BaseCamera;->mFocusing:Z

    goto :goto_1
.end method
