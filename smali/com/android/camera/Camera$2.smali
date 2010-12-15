.class Lcom/android/camera/Camera$2;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->initializeFirstTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 314
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 315
    add-int/lit8 p1, p1, 0x5a

    .line 317
    :cond_0
    invoke-static {p1}, Lcom/android/camera/ImageManager;->roundOrientation(I)I

    move-result p1

    .line 318
    iget-object v0, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0, p1}, Lcom/android/camera/Camera;->access$1502(Lcom/android/camera/Camera;I)I

    .line 320
    iget-object v0, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$1600(Lcom/android/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;I)V

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/ui/GLRootView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/ui/GLRootView;

    move-result-object v0

    new-instance v1, Lcom/android/camera/Camera$2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$2$1;-><init>(Lcom/android/camera/Camera$2;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    .line 331
    :cond_2
    return-void
.end method
