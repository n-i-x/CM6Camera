.class Lcom/android/camera/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mCamera:Lcom/android/camera/hardware/Camera;

.field final synthetic this$0:Lcom/android/camera/hardware/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/hardware/Camera;Lcom/android/camera/hardware/Camera;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "looper"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    .line 444
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 445
    iput-object p2, p0, Lcom/android/camera/hardware/Camera$EventHandler;->mCamera:Lcom/android/camera/hardware/Camera;

    .line 446
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "Camera"

    .line 450
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 513
    const-string v1, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 452
    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-static {v1}, Lcom/android/camera/hardware/Camera;->access$000(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$ShutterCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-static {v1}, Lcom/android/camera/hardware/Camera;->access$000(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$ShutterCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/hardware/Camera$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 458
    :sswitch_1
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-static {v1}, Lcom/android/camera/hardware/Camera;->access$100(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$PictureCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-static {v1}, Lcom/android/camera/hardware/Camera;->access$100(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$PictureCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v3, p0, Lcom/android/camera/hardware/Camera$EventHandler;->mCamera:Lcom/android/camera/hardware/Camera;

    invoke-interface {v2, v1, v3}, Lcom/android/camera/hardware/Camera$PictureCallback;->onPictureTaken([BLcom/android/camera/hardware/Camera;)V

    goto :goto_0

    .line 464
    :sswitch_2
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-static {v1}, Lcom/android/camera/hardware/Camera;->access$200(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$PictureCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-static {v1}, Lcom/android/camera/hardware/Camera;->access$200(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$PictureCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v3, p0, Lcom/android/camera/hardware/Camera$EventHandler;->mCamera:Lcom/android/camera/hardware/Camera;

    invoke-interface {v2, v1, v3}, Lcom/android/camera/hardware/Camera$PictureCallback;->onPictureTaken([BLcom/android/camera/hardware/Camera;)V

    goto :goto_0

    .line 470
    :sswitch_3
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-static {v1}, Lcom/android/camera/hardware/Camera;->access$300(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$PreviewCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-static {v1}, Lcom/android/camera/hardware/Camera;->access$300(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$PreviewCallback;

    move-result-object v0

    .line 472
    .local v0, cb:Lcom/android/camera/hardware/Camera$PreviewCallback;
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-static {v1}, Lcom/android/camera/hardware/Camera;->access$400(Lcom/android/camera/hardware/Camera;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 476
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/hardware/Camera;->access$302(Lcom/android/camera/hardware/Camera;Lcom/android/camera/hardware/Camera$PreviewCallback;)Lcom/android/camera/hardware/Camera$PreviewCallback;

    .line 483
    :cond_1
    :goto_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v2, p0, Lcom/android/camera/hardware/Camera$EventHandler;->mCamera:Lcom/android/camera/hardware/Camera;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/hardware/Camera$PreviewCallback;->onPreviewFrame([BLcom/android/camera/hardware/Camera;)V

    goto :goto_0

    .line 477
    :cond_2
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-static {v1}, Lcom/android/camera/hardware/Camera;->access$500(Lcom/android/camera/hardware/Camera;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 481
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-static {v1, v5, v4}, Lcom/android/camera/hardware/Camera;->access$600(Lcom/android/camera/hardware/Camera;ZZ)V

    goto :goto_1

    .line 488
    .end local v0           #cb:Lcom/android/camera/hardware/Camera$PreviewCallback;
    :sswitch_4
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-static {v1}, Lcom/android/camera/hardware/Camera;->access$700(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$PictureCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-static {v1}, Lcom/android/camera/hardware/Camera;->access$700(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$PictureCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v3, p0, Lcom/android/camera/hardware/Camera$EventHandler;->mCamera:Lcom/android/camera/hardware/Camera;

    invoke-interface {v2, v1, v3}, Lcom/android/camera/hardware/Camera$PictureCallback;->onPictureTaken([BLcom/android/camera/hardware/Camera;)V

    goto/16 :goto_0

    .line 494
    :sswitch_5
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-static {v1}, Lcom/android/camera/hardware/Camera;->access$800(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$AutoFocusCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-static {v1}, Lcom/android/camera/hardware/Camera;->access$800(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$AutoFocusCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_3

    move v2, v4

    :goto_2
    iget-object v3, p0, Lcom/android/camera/hardware/Camera$EventHandler;->mCamera:Lcom/android/camera/hardware/Camera;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLcom/android/camera/hardware/Camera;)V

    goto/16 :goto_0

    :cond_3
    move v2, v5

    goto :goto_2

    .line 500
    :sswitch_6
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-static {v1}, Lcom/android/camera/hardware/Camera;->access$900(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$OnZoomChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-static {v1}, Lcom/android/camera/hardware/Camera;->access$900(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$OnZoomChangeListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_4

    move v3, v5

    :goto_3
    iget-object v4, p0, Lcom/android/camera/hardware/Camera$EventHandler;->mCamera:Lcom/android/camera/hardware/Camera;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/camera/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLcom/android/camera/hardware/Camera;)V

    goto/16 :goto_0

    :cond_4
    move v3, v4

    goto :goto_3

    .line 506
    :sswitch_7
    const-string v1, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-static {v1}, Lcom/android/camera/hardware/Camera;->access$1000(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$ErrorCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/android/camera/hardware/Camera$EventHandler;->this$0:Lcom/android/camera/hardware/Camera;

    invoke-static {v1}, Lcom/android/camera/hardware/Camera;->access$1000(Lcom/android/camera/hardware/Camera;)Lcom/android/camera/hardware/Camera$ErrorCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/camera/hardware/Camera$EventHandler;->mCamera:Lcom/android/camera/hardware/Camera;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/hardware/Camera$ErrorCallback;->onError(ILcom/android/camera/hardware/Camera;)V

    goto/16 :goto_0

    .line 450
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_0
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
    .end sparse-switch
.end method
