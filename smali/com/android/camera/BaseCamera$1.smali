.class Lcom/android/camera/BaseCamera$1;
.super Ljava/lang/Object;
.source "BaseCamera.java"

# interfaces
.implements Lcom/android/camera/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BaseCamera;->getAutoFocusCallback()Lcom/android/camera/hardware/Camera$AutoFocusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BaseCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/BaseCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/camera/BaseCamera$1;->this$0:Lcom/android/camera/BaseCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLcom/android/camera/hardware/Camera;)V
    .locals 2
    .parameter "success"
    .parameter "camera"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/camera/BaseCamera$1;->this$0:Lcom/android/camera/BaseCamera;

    iget-boolean v0, v0, Lcom/android/camera/BaseCamera;->mFocusing:Z

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/camera/BaseCamera$1;->this$0:Lcom/android/camera/BaseCamera;

    iget-object v0, v0, Lcom/android/camera/BaseCamera;->mFocusRectangle:Lcom/android/camera/FocusRectangle;

    invoke-virtual {v0}, Lcom/android/camera/FocusRectangle;->showSuccess()V

    .line 430
    iget-object v0, p0, Lcom/android/camera/BaseCamera$1;->this$0:Lcom/android/camera/BaseCamera;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/BaseCamera;->mFocusing:Z

    .line 432
    :cond_0
    return-void
.end method
