.class Lcom/android/camera/media/MediaRecorder$EventHandler;
.super Landroid/os/Handler;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field private static final MEDIA_RECORDER_EVENT_ERROR:I = 0x1

.field private static final MEDIA_RECORDER_EVENT_INFO:I = 0x2


# instance fields
.field private mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

.field final synthetic this$0:Lcom/android/camera/media/MediaRecorder;


# direct methods
.method public constructor <init>(Lcom/android/camera/media/MediaRecorder;Lcom/android/camera/media/MediaRecorder;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "mr"
    .parameter "looper"

    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/camera/media/MediaRecorder$EventHandler;->this$0:Lcom/android/camera/media/MediaRecorder;

    .line 646
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 647
    iput-object p2, p0, Lcom/android/camera/media/MediaRecorder$EventHandler;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    .line 648
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const-string v2, "MediaRecorder"

    .line 658
    iget-object v0, p0, Lcom/android/camera/media/MediaRecorder$EventHandler;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    invoke-static {v0}, Lcom/android/camera/media/MediaRecorder;->access$000(Lcom/android/camera/media/MediaRecorder;)I

    move-result v0

    if-nez v0, :cond_1

    .line 659
    const-string v0, "MediaRecorder"

    const-string v0, "mediarecorder went away with unhandled events"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 676
    const-string v0, "MediaRecorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 664
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/media/MediaRecorder$EventHandler;->this$0:Lcom/android/camera/media/MediaRecorder;

    invoke-static {v0}, Lcom/android/camera/media/MediaRecorder;->access$100(Lcom/android/camera/media/MediaRecorder;)Lcom/android/camera/media/MediaRecorder$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/camera/media/MediaRecorder$EventHandler;->this$0:Lcom/android/camera/media/MediaRecorder;

    invoke-static {v0}, Lcom/android/camera/media/MediaRecorder;->access$100(Lcom/android/camera/media/MediaRecorder;)Lcom/android/camera/media/MediaRecorder$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/media/MediaRecorder$EventHandler;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/media/MediaRecorder$OnErrorListener;->onError(Lcom/android/camera/media/MediaRecorder;II)V

    goto :goto_0

    .line 670
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/media/MediaRecorder$EventHandler;->this$0:Lcom/android/camera/media/MediaRecorder;

    invoke-static {v0}, Lcom/android/camera/media/MediaRecorder;->access$200(Lcom/android/camera/media/MediaRecorder;)Lcom/android/camera/media/MediaRecorder$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/camera/media/MediaRecorder$EventHandler;->this$0:Lcom/android/camera/media/MediaRecorder;

    invoke-static {v0}, Lcom/android/camera/media/MediaRecorder;->access$200(Lcom/android/camera/media/MediaRecorder;)Lcom/android/camera/media/MediaRecorder$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/media/MediaRecorder$EventHandler;->mMediaRecorder:Lcom/android/camera/media/MediaRecorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/media/MediaRecorder$OnInfoListener;->onInfo(Lcom/android/camera/media/MediaRecorder;II)V

    goto :goto_0

    .line 662
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
