.class Lcom/android/camera/BaseCamera$ZoomGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BaseCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BaseCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BaseCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/BaseCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/camera/BaseCamera$ZoomGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BaseCamera;Lcom/android/camera/BaseCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/android/camera/BaseCamera$ZoomGestureListener;-><init>(Lcom/android/camera/BaseCamera;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 442
    iget-object v0, p0, Lcom/android/camera/BaseCamera$ZoomGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-boolean v0, v0, Lcom/android/camera/BaseCamera;->mFocusing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BaseCamera$ZoomGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-boolean v0, v0, Lcom/android/camera/BaseCamera;->mPausing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BaseCamera$ZoomGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-boolean v0, v0, Lcom/android/camera/BaseCamera;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BaseCamera$ZoomGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-object v0, v0, Lcom/android/camera/BaseCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 453
    :goto_0
    return v0

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BaseCamera$ZoomGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget v0, v0, Lcom/android/camera/BaseCamera;->mZoomValue:I

    iget-object v1, p0, Lcom/android/camera/BaseCamera$ZoomGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget v1, v1, Lcom/android/camera/BaseCamera;->mZoomMax:I

    if-ge v0, v1, :cond_2

    .line 448
    iget-object v0, p0, Lcom/android/camera/BaseCamera$ZoomGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-object v1, p0, Lcom/android/camera/BaseCamera$ZoomGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget v1, v1, Lcom/android/camera/BaseCamera;->mZoomMax:I

    iput v1, v0, Lcom/android/camera/BaseCamera;->mZoomValue:I

    .line 452
    :goto_1
    iget-object v0, p0, Lcom/android/camera/BaseCamera$ZoomGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-object v0, v0, Lcom/android/camera/BaseCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v1, p0, Lcom/android/camera/BaseCamera$ZoomGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iget v1, v1, Lcom/android/camera/BaseCamera;->mZoomValue:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HeadUpDisplay;->setZoomIndex(I)V

    .line 453
    const/4 v0, 0x1

    goto :goto_0

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/android/camera/BaseCamera$ZoomGestureListener;->this$0:Lcom/android/camera/BaseCamera;

    iput v2, v0, Lcom/android/camera/BaseCamera;->mZoomValue:I

    goto :goto_1
.end method
