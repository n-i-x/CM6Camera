.class final Lcom/android/camera/BaseCamera$ZoomListener;
.super Ljava/lang/Object;
.source "BaseCamera.java"

# interfaces
.implements Lcom/android/camera/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BaseCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BaseCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/BaseCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/camera/BaseCamera$ZoomListener;->this$0:Lcom/android/camera/BaseCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BaseCamera;Lcom/android/camera/BaseCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/android/camera/BaseCamera$ZoomListener;-><init>(Lcom/android/camera/BaseCamera;)V

    return-void
.end method


# virtual methods
.method public onZoomChange(IZLcom/android/camera/hardware/Camera;)V
    .locals 3
    .parameter "value"
    .parameter "stopped"
    .parameter "camera"

    .prologue
    .line 459
    const-string v0, "BaseCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zoom changed: value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". stopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/android/camera/BaseCamera$ZoomListener;->this$0:Lcom/android/camera/BaseCamera;

    iput p1, v0, Lcom/android/camera/BaseCamera;->mZoomValue:I

    .line 463
    iget-object v0, p0, Lcom/android/camera/BaseCamera$ZoomListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-object v0, v0, Lcom/android/camera/BaseCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Lcom/android/camera/hardware/Camera$Parameters;->setZoom(I)V

    .line 466
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/camera/BaseCamera$ZoomListener;->this$0:Lcom/android/camera/BaseCamera;

    iget v0, v0, Lcom/android/camera/BaseCamera;->mZoomState:I

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/camera/BaseCamera$ZoomListener;->this$0:Lcom/android/camera/BaseCamera;

    iget v0, v0, Lcom/android/camera/BaseCamera;->mTargetZoomValue:I

    if-eq p1, v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/android/camera/BaseCamera$ZoomListener;->this$0:Lcom/android/camera/BaseCamera;

    iget-object v0, v0, Lcom/android/camera/BaseCamera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/BaseCamera$ZoomListener;->this$0:Lcom/android/camera/BaseCamera;

    iget v1, v1, Lcom/android/camera/BaseCamera;->mTargetZoomValue:I

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/Camera;->startSmoothZoom(I)V

    .line 469
    iget-object v0, p0, Lcom/android/camera/BaseCamera$ZoomListener;->this$0:Lcom/android/camera/BaseCamera;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/camera/BaseCamera;->mZoomState:I

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BaseCamera$ZoomListener;->this$0:Lcom/android/camera/BaseCamera;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/BaseCamera;->mZoomState:I

    goto :goto_0
.end method
