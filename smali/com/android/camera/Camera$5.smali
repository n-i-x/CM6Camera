.class Lcom/android/camera/Camera$5;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;

.field tlatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter

    .prologue
    .line 829
    iput-object p1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 830
    iget-object v0, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$4400(Lcom/android/camera/Camera;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera$5;->tlatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 833
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$4502(Lcom/android/camera/Camera;Z)Z

    .line 834
    iget-object v2, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$4600(Lcom/android/camera/Camera;)V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_1

    .line 839
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/Camera$5;->tlatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_1 .. :try_end_1} :catch_1

    .line 843
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$4700(Lcom/android/camera/Camera;)V

    .line 852
    :goto_1
    return-void

    .line 840
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 841
    .local v1, ie:Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$4502(Lcom/android/camera/Camera;Z)Z
    :try_end_2
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 844
    .end local v1           #ie:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 847
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 848
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 850
    :cond_0
    iget-object v2, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2, v4}, Lcom/android/camera/Camera;->access$4502(Lcom/android/camera/Camera;Z)Z

    goto :goto_1
.end method
