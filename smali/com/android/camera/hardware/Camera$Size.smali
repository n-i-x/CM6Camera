.class public Lcom/android/camera/hardware/Camera$Size;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Size"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Lcom/android/camera/hardware/Camera;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/hardware/Camera;II)V
    .locals 0
    .parameter
    .parameter "w"
    .parameter "h"

    .prologue
    .line 847
    iput-object p1, p0, Lcom/android/camera/hardware/Camera$Size;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    iput p2, p0, Lcom/android/camera/hardware/Camera$Size;->width:I

    .line 849
    iput p3, p0, Lcom/android/camera/hardware/Camera$Size;->height:I

    .line 850
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 860
    instance-of v2, p1, Lcom/android/camera/hardware/Camera$Size;

    if-nez v2, :cond_0

    move v2, v4

    .line 864
    :goto_0
    return v2

    .line 863
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/camera/hardware/Camera$Size;

    move-object v1, v0

    .line 864
    .local v1, s:Lcom/android/camera/hardware/Camera$Size;
    iget v2, p0, Lcom/android/camera/hardware/Camera$Size;->width:I

    iget v3, v1, Lcom/android/camera/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/camera/hardware/Camera$Size;->height:I

    iget v3, v1, Lcom/android/camera/hardware/Camera$Size;->height:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 868
    iget v0, p0, Lcom/android/camera/hardware/Camera$Size;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/android/camera/hardware/Camera$Size;->height:I

    add-int/2addr v0, v1

    return v0
.end method
