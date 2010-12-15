.class final Lcom/android/camera/Camera$ErrorCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ErrorCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/android/camera/Camera$ErrorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILcom/android/camera/hardware/Camera;)V
    .locals 2
    .parameter "error"
    .parameter "camera"

    .prologue
    .line 634
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 635
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/Camera;->mMediaServerDied:Z

    .line 636
    const-string v0, "camera"

    const-string v1, "media server died"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_0
    return-void
.end method
