.class Lcom/android/camera/VideoCamera$2;
.super Landroid/view/OrientationEventListener;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoCamera;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/camera/VideoCamera$2;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 417
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 418
    add-int/lit8 p1, p1, 0x5a

    .line 420
    :cond_0
    invoke-static {p1}, Lcom/android/camera/ImageManager;->roundOrientation(I)I

    move-result p1

    .line 421
    iget-object v0, p0, Lcom/android/camera/VideoCamera$2;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1200(Lcom/android/camera/VideoCamera;)I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/android/camera/VideoCamera$2;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0, p1}, Lcom/android/camera/VideoCamera;->access$1202(Lcom/android/camera/VideoCamera;I)I

    .line 423
    iget-object v0, p0, Lcom/android/camera/VideoCamera$2;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1300(Lcom/android/camera/VideoCamera;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/android/camera/VideoCamera$2;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v1, p0, Lcom/android/camera/VideoCamera$2;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$1200(Lcom/android/camera/VideoCamera;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$1400(Lcom/android/camera/VideoCamera;I)V

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera$2;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1500(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/GLRootView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/android/camera/VideoCamera$2;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1500(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/GLRootView;

    move-result-object v0

    new-instance v1, Lcom/android/camera/VideoCamera$2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$2$1;-><init>(Lcom/android/camera/VideoCamera$2;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    .line 435
    :cond_2
    return-void
.end method
