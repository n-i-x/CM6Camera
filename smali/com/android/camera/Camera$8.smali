.class Lcom/android/camera/Camera$8;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->autoFocusFast()V
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
    .line 1358
    iput-object p1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLcom/android/camera/hardware/Camera;)V
    .locals 2
    .parameter "success"
    .parameter "camera"

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    :goto_0
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$5102(Lcom/android/camera/Camera;I)I

    .line 1362
    iget-object v0, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$5200(Lcom/android/camera/Camera;)V

    .line 1363
    return-void

    .line 1361
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method
