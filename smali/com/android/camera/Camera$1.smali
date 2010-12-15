.class Lcom/android/camera/Camera$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/BaseCamera$StabilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStabilityChanged(Z)V
    .locals 6
    .parameter "stable"

    .prologue
    .line 218
    const-string v2, "auto"

    iget-object v3, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    iget-object v3, v3, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    iget-boolean v2, v2, Lcom/android/camera/Camera;->classicAutoMode:Z

    if-nez v2, :cond_0

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 222
    .local v0, now:J
    iget-object v2, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v2}, Lcom/android/camera/ui/HeadUpDisplay;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x78

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 224
    const-string v2, "camera"

    const-string v3, "** Camera stable **"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v2, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2, v0, v1}, Lcom/android/camera/Camera;->access$702(Lcom/android/camera/Camera;J)J

    .line 226
    iget-object v2, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 231
    .end local v0           #now:J
    :cond_0
    :goto_0
    return-void

    .line 227
    .restart local v0       #now:J
    :cond_1
    if-nez p1, :cond_0

    .line 228
    iget-object v2, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$900(Lcom/android/camera/Camera;)V

    goto :goto_0
.end method
