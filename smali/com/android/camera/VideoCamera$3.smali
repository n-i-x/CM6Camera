.class Lcom/android/camera/VideoCamera$3;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/camera/VideoCamera$3;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera$3;->this$0:Lcom/android/camera/VideoCamera;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/VideoCamera;->access$1602(Lcom/android/camera/VideoCamera;Z)Z

    .line 447
    iget-object v1, p0, Lcom/android/camera/VideoCamera$3;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$1700(Lcom/android/camera/VideoCamera;)V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    return-void

    .line 448
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 451
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera$3;->this$0:Lcom/android/camera/VideoCamera;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/VideoCamera;->access$1602(Lcom/android/camera/VideoCamera;Z)Z

    goto :goto_0
.end method
