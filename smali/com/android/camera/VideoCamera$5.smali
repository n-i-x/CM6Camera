.class Lcom/android/camera/VideoCamera$5;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Lcom/android/camera/ui/ZoomController$ZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoCamera;->initializeHeadUpDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/camera/VideoCamera$5;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomChanged(IFZ)V
    .locals 2
    .parameter "index"
    .parameter "ratio"
    .parameter "isMoving"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/camera/VideoCamera$5;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1900(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/VideoCamera$5$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/VideoCamera$5$1;-><init>(Lcom/android/camera/VideoCamera$5;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 612
    return-void
.end method
