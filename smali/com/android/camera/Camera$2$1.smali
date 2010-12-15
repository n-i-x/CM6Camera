.class Lcom/android/camera/Camera$2$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera$2;->onOrientationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/Camera$2;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera$2;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/camera/Camera$2$1;->this$1:Lcom/android/camera/Camera$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/camera/Camera$2$1;->this$1:Lcom/android/camera/Camera$2;

    iget-object v0, v0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v1, p0, Lcom/android/camera/Camera$2$1;->this$1:Lcom/android/camera/Camera$2;

    iget-object v1, v1, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HeadUpDisplay;->setOrientation(I)V

    .line 327
    return-void
.end method
