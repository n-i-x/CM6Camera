.class Lcom/android/camera/VideoCamera$1;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Lcom/android/camera/BaseCamera$StabilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
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
    .line 325
    iput-object p1, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStabilityChanged(Z)V
    .locals 6
    .parameter "stable"

    .prologue
    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 330
    .local v0, now:J
    iget-object v2, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v2, v2, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v2}, Lcom/android/camera/ui/HeadUpDisplay;->isActive()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v2}, Lcom/android/camera/VideoCamera;->access$600(Lcom/android/camera/VideoCamera;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x78

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 332
    const-string v2, "videocamera"

    const-string v3, "** Camera stable **"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v2, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v2, v0, v1}, Lcom/android/camera/VideoCamera;->access$602(Lcom/android/camera/VideoCamera;J)J

    .line 334
    iget-object v2, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v2, v2, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v2, v2, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    invoke-virtual {v2}, Lcom/android/camera/media/MediaRecorder;->autoFocusCamera()V

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v2, v2, Lcom/android/camera/VideoCamera;->mFocusRectangle:Lcom/android/camera/FocusRectangle;

    invoke-virtual {v2}, Lcom/android/camera/FocusRectangle;->showSuccess()V

    .line 341
    :cond_1
    :goto_0
    return-void

    .line 338
    :cond_2
    if-nez p1, :cond_1

    .line 339
    iget-object v2, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v2, v2, Lcom/android/camera/VideoCamera;->mFocusRectangle:Lcom/android/camera/FocusRectangle;

    invoke-virtual {v2}, Lcom/android/camera/FocusRectangle;->clear()V

    goto :goto_0
.end method
