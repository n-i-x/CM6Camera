.class final Lcom/android/camera/Camera$JpegPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 569
    iput-object p1, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-object p2, p0, Lcom/android/camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 571
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/camera/hardware/Camera;)V
    .locals 9
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 575
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-boolean v4, v4, Lcom/android/camera/Camera;->mPausing:Z

    if-eqz v4, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/camera/Camera;->access$1102(Lcom/android/camera/Camera;J)J

    .line 583
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/Camera;->access$2400(Lcom/android/camera/Camera;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 584
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/Camera;->access$2400(Lcom/android/camera/Camera;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v7}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/camera/Camera;->mShutterToPictureDisplayedTime:J

    .line 586
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v7}, Lcom/android/camera/Camera;->access$2400(Lcom/android/camera/Camera;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    .line 594
    :goto_1
    const-string v4, "camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v6, v6, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v4, v4, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/HeadUpDisplay;->setEnabled(Z)V

    .line 598
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/Camera;->access$1600(Lcom/android/camera/Camera;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 601
    const-wide/16 v4, 0x4b0

    iget-object v6, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v6, v6, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    sub-long v0, v4, v6

    .line 602
    .local v0, delay:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/Camera;->access$2600(Lcom/android/camera/Camera;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 603
    :cond_2
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)V

    .line 608
    .end local v0           #delay:J
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/Camera;->access$2700(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageCapture;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v4, p1, p2, v5}, Lcom/android/camera/Camera$ImageCapture;->storeImage([BLcom/android/camera/hardware/Camera;Landroid/location/Location;)V

    .line 614
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)I

    .line 616
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_4

    .line 617
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/camera/Camera;->access$3000(Lcom/android/camera/Camera;I)V

    .line 620
    :cond_4
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 621
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 622
    .local v2, now:J
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;)J

    move-result-wide v5

    sub-long v5, v2, v5

    iput-wide v5, v4, Lcom/android/camera/Camera;->mJpegCallbackFinishTime:J

    .line 623
    const-string v4, "camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mJpegCallbackFinishTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v6, v6, Lcom/android/camera/Camera;->mJpegCallbackFinishTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/camera/Camera;->access$1102(Lcom/android/camera/Camera;J)J

    goto/16 :goto_0

    .line 589
    .end local v2           #now:J
    :cond_5
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v7}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/camera/Camera;->mShutterToPictureDisplayedTime:J

    .line 591
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v7}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 605
    .restart local v0       #delay:J
    :cond_6
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2
.end method
