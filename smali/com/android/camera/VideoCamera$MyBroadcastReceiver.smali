.class Lcom/android/camera/VideoCamera$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 350
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/VideoCamera;->access$700(Lcom/android/camera/VideoCamera;Z)V

    .line 353
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$800(Lcom/android/camera/VideoCamera;)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 355
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1, v2}, Lcom/android/camera/VideoCamera;->access$700(Lcom/android/camera/VideoCamera;Z)V

    .line 356
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v1, v1, Lcom/android/camera/VideoCamera;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    if-eqz v1, :cond_2

    .line 357
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$900(Lcom/android/camera/VideoCamera;)V

    .line 358
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$1000(Lcom/android/camera/VideoCamera;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 359
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$1100(Lcom/android/camera/VideoCamera;)V

    .line 360
    :cond_3
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$300(Lcom/android/camera/VideoCamera;)V

    goto :goto_0

    .line 361
    :cond_4
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 365
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    invoke-virtual {v2}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    .line 367
    :cond_5
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1, v2}, Lcom/android/camera/VideoCamera;->access$700(Lcom/android/camera/VideoCamera;Z)V

    goto :goto_0
.end method
