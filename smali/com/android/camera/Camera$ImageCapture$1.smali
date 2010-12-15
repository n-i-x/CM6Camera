.class Lcom/android/camera/Camera$ImageCapture$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/BaseCamera$StabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera$ImageCapture;->initiate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/Camera$ImageCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera$ImageCapture;)V
    .locals 0
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Lcom/android/camera/Camera$ImageCapture$1;->this$1:Lcom/android/camera/Camera$ImageCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStable()V
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture$1;->this$1:Lcom/android/camera/Camera$ImageCapture;

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setStabilityListener(Lcom/android/camera/BaseCamera$StabilityListener;)V

    .line 696
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture$1;->this$1:Lcom/android/camera/Camera$ImageCapture;

    invoke-static {v0}, Lcom/android/camera/Camera$ImageCapture;->access$3600(Lcom/android/camera/Camera$ImageCapture;)V

    .line 697
    return-void
.end method
