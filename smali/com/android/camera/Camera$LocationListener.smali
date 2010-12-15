.class Lcom/android/camera/Camera$LocationListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "provider"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera$LocationListener;->mValid:Z

    .line 485
    iput-object p2, p0, Lcom/android/camera/Camera$LocationListener;->mProvider:Ljava/lang/String;

    .line 486
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/android/camera/Camera$LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/Camera$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 487
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/android/camera/Camera$LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .parameter "newLocation"

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    .line 490
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 505
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$2100(Lcom/android/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gps"

    iget-object v1, p0, Lcom/android/camera/Camera$LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    check-cast v0, Lcom/android/camera/ui/CameraHeadUpDisplay;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/CameraHeadUpDisplay;->setGpsHasSignal(Z)V

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 504
    iput-boolean v4, p0, Lcom/android/camera/Camera$LocationListener;->mValid:Z

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera$LocationListener;->mValid:Z

    .line 512
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 508
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    const/4 v1, 0x0

    .line 516
    packed-switch p2, :pswitch_data_0

    .line 529
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 519
    .restart local p0
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/camera/Camera$LocationListener;->mValid:Z

    .line 520
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$2100(Lcom/android/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    iget-object p0, v0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    .end local p0
    check-cast p0, Lcom/android/camera/ui/CameraHeadUpDisplay;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/CameraHeadUpDisplay;->setGpsHasSignal(Z)V

    goto :goto_0

    .line 516
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
