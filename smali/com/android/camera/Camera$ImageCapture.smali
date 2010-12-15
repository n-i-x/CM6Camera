.class Lcom/android/camera/Camera$ImageCapture;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCapture"
.end annotation


# instance fields
.field mCaptureOnlyData:[B

.field private mLastContentUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$ImageCapture;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/Camera$ImageCapture;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/android/camera/Camera$ImageCapture;->capture()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/camera/Camera$ImageCapture;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/android/camera/Camera$ImageCapture;->clearLastData()V

    return-void
.end method

.method private capture()V
    .locals 15

    .prologue
    .line 714
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/camera/Camera$ImageCapture;->mCaptureOnlyData:[B

    .line 717
    iget-object v9, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget-object v9, v9, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    iget-object v10, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v10}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/camera/hardware/Camera$Parameters;->setRotation(I)V

    .line 720
    iget-object v9, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget-object v9, v9, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v9}, Lcom/android/camera/hardware/Camera$Parameters;->removeGpsData()V

    .line 723
    iget-object v9, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget-object v9, v9, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 726
    iget-object v9, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v9}, Lcom/android/camera/Camera;->access$2100(Lcom/android/camera/Camera;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v9}, Lcom/android/camera/Camera;->access$3700(Lcom/android/camera/Camera;)Landroid/location/Location;

    move-result-object v9

    move-object v3, v9

    .line 727
    .local v3, loc:Landroid/location/Location;
    :goto_0
    if-eqz v3, :cond_1

    .line 728
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 729
    .local v1, lat:D
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 730
    .local v4, lon:D
    const-wide/16 v9, 0x0

    cmpl-double v9, v1, v9

    if-nez v9, :cond_0

    const-wide/16 v9, 0x0

    cmpl-double v9, v4, v9

    if-eqz v9, :cond_3

    :cond_0
    const/4 v9, 0x1

    move v0, v9

    .line 732
    .local v0, hasLatLon:Z
    :goto_1
    if-eqz v0, :cond_5

    .line 733
    iget-object v9, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget-object v9, v9, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v9, v1, v2}, Lcom/android/camera/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 734
    iget-object v9, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget-object v9, v9, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v9, v4, v5}, Lcom/android/camera/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 735
    iget-object v9, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget-object v9, v9, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/camera/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v3}, Landroid/location/Location;->hasAltitude()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 737
    iget-object v9, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget-object v9, v9, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 744
    :goto_2
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    .line 747
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long v7, v9, v11

    .line 748
    .local v7, utcTimeSeconds:J
    iget-object v9, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget-object v9, v9, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v9, v7, v8}, Lcom/android/camera/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 755
    .end local v0           #hasLatLon:Z
    .end local v1           #lat:D
    .end local v4           #lon:D
    .end local v7           #utcTimeSeconds:J
    :cond_1
    :goto_3
    iget-object v9, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget-object v9, v9, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    iget-object v10, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget-object v10, v10, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v9, v10}, Lcom/android/camera/hardware/Camera;->setParameters(Lcom/android/camera/hardware/Camera$Parameters;)V

    .line 757
    iget-object v9, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget-object v9, v9, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v9}, Lcom/android/camera/hardware/Camera$Parameters;->getPictureSize()Lcom/android/camera/hardware/Camera$Size;

    move-result-object v6

    .line 758
    .local v6, pictureSize:Lcom/android/camera/hardware/Camera$Size;
    iget-object v9, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget v10, v6, Lcom/android/camera/hardware/Camera$Size;->width:I

    invoke-static {v9, v10}, Lcom/android/camera/Camera;->access$3802(Lcom/android/camera/Camera;I)I

    .line 759
    iget-object v9, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget v10, v6, Lcom/android/camera/hardware/Camera$Size;->height:I

    invoke-static {v9, v10}, Lcom/android/camera/Camera;->access$3902(Lcom/android/camera/Camera;I)I

    .line 760
    iget-object v9, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget-object v9, v9, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    iget-object v10, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v10}, Lcom/android/camera/Camera;->access$4000(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ShutterCallback;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v11}, Lcom/android/camera/Camera;->access$4100(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$RawPictureCallback;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v12}, Lcom/android/camera/Camera;->access$4200(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$PostViewPictureCallback;

    move-result-object v12

    new-instance v13, Lcom/android/camera/Camera$JpegPictureCallback;

    iget-object v14, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v13, v14, v3}, Lcom/android/camera/Camera$JpegPictureCallback;-><init>(Lcom/android/camera/Camera;Landroid/location/Location;)V

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/camera/hardware/Camera;->takePicture(Lcom/android/camera/hardware/Camera$ShutterCallback;Lcom/android/camera/hardware/Camera$PictureCallback;Lcom/android/camera/hardware/Camera$PictureCallback;Lcom/android/camera/hardware/Camera$PictureCallback;)V

    .line 762
    iget-object v9, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/camera/Camera;->mPreviewing:Z

    .line 763
    return-void

    .line 726
    .end local v3           #loc:Landroid/location/Location;
    .end local v6           #pictureSize:Lcom/android/camera/hardware/Camera$Size;
    :cond_2
    const/4 v9, 0x0

    move-object v3, v9

    goto/16 :goto_0

    .line 730
    .restart local v1       #lat:D
    .restart local v3       #loc:Landroid/location/Location;
    .restart local v4       #lon:D
    :cond_3
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_1

    .line 742
    .restart local v0       #hasLatLon:Z
    :cond_4
    iget-object v9, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget-object v9, v9, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_2

    .line 751
    :cond_5
    const/4 v3, 0x0

    goto :goto_3
.end method

.method private clearLastData()V
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->mCaptureOnlyData:[B

    .line 780
    return-void
.end method

.method private storeImage([BLandroid/location/Location;)I
    .locals 12
    .parameter "data"
    .parameter "loc"

    .prologue
    const/4 v11, 0x0

    .line 650
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 651
    .local v2, dateTaken:J
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0, v2, v3}, Lcom/android/camera/Camera;->access$3100(Lcom/android/camera/Camera;J)Ljava/lang/String;

    move-result-object v1

    .line 652
    .local v1, title:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".jpg"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 653
    .local v6, filename:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 654
    .local v9, degree:[I
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$3200(Lcom/android/camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Lcom/android/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v4, p2

    move-object v8, p1

    invoke-static/range {v0 .. v9}, Lcom/android/camera/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->mLastContentUri:Landroid/net/Uri;

    .line 662
    const/4 v0, 0x0

    aget v0, v9, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #dateTaken:J
    .end local v6           #filename:Ljava/lang/String;
    .end local v9           #degree:[I
    :goto_0
    return v0

    .line 663
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 664
    .local v10, ex:Ljava/lang/Exception;
    const-string v0, "camera"

    const-string v4, "Exception while compressing image."

    invoke-static {v0, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v11

    .line 665
    goto :goto_0
.end method


# virtual methods
.method public getLastCaptureData()[B
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->mCaptureOnlyData:[B

    return-object v0
.end method

.method public getLastCaptureUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->mLastContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public initiate()V
    .locals 4

    .prologue
    .line 688
    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    if-nez v1, :cond_0

    .line 703
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget v1, v1, Lcom/android/camera/Camera;->mStableShotDuration:I

    if-lez v1, :cond_1

    .line 692
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** Stable shot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget v3, v3, Lcom/android/camera/Camera;->mStableShotDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    new-instance v0, Lcom/android/camera/Camera$ImageCapture$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$ImageCapture$1;-><init>(Lcom/android/camera/Camera$ImageCapture;)V

    .line 699
    .local v0, stableCapture:Lcom/android/camera/BaseCamera$StabilityListener;
    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->setStabilityListener(Lcom/android/camera/BaseCamera$StabilityListener;)V

    goto :goto_0

    .line 701
    .end local v0           #stableCapture:Lcom/android/camera/BaseCamera$StabilityListener;
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera$ImageCapture;->capture()V

    goto :goto_0
.end method

.method public onSnap()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 767
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget-boolean v0, v0, Lcom/android/camera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$4300(Lcom/android/camera/Camera;)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget-boolean v0, v0, Lcom/android/camera/Camera;->mPreviewing:Z

    if-nez v0, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/Camera;->access$2302(Lcom/android/camera/Camera;J)J

    .line 771
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/Camera;->access$2402(Lcom/android/camera/Camera;J)J

    .line 772
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HeadUpDisplay;->setEnabled(Z)V

    .line 773
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0, v3}, Lcom/android/camera/Camera;->access$4302(Lcom/android/camera/Camera;I)I

    .line 775
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$2700(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageCapture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageCapture;->initiate()V

    goto :goto_0
.end method

.method public storeImage([BLcom/android/camera/hardware/Camera;Landroid/location/Location;)V
    .locals 5
    .parameter "data"
    .parameter "camera"
    .parameter "loc"

    .prologue
    .line 671
    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$1600(Lcom/android/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 672
    invoke-direct {p0, p1, p3}, Lcom/android/camera/Camera$ImageCapture;->storeImage([BLandroid/location/Location;)I

    move-result v0

    .line 673
    .local v0, degree:I
    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.NEW_PICTURE"

    iget-object v4, p0, Lcom/android/camera/Camera$ImageCapture;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 675
    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$2700(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageCapture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera$ImageCapture;->getLastCaptureUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, p1, v0, v2}, Lcom/android/camera/Camera;->access$3300(Lcom/android/camera/Camera;[BILandroid/net/Uri;)V

    .line 677
    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/ThumbnailController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailController;->updateDisplayIfNeeded()V

    .line 682
    .end local v0           #degree:I
    :goto_0
    return-void

    .line 679
    :cond_0
    iput-object p1, p0, Lcom/android/camera/Camera$ImageCapture;->mCaptureOnlyData:[B

    .line 680
    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$3500(Lcom/android/camera/Camera;)V

    goto :goto_0
.end method
