.class Lcom/android/camera/Camera$4;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


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
    .line 461
    iput-object p1, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 464
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$1900(Lcom/android/camera/Camera;)V

    .line 475
    :cond_1
    :goto_0
    return-void

    .line 469
    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$1900(Lcom/android/camera/Camera;)V

    .line 471
    iget-object v1, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$1600(Lcom/android/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 472
    iget-object v1, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$2000(Lcom/android/camera/Camera;)V

    goto :goto_0
.end method
