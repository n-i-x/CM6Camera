.class Lcom/android/camera/ui/HeadUpDisplay$2;
.super Landroid/os/Handler;
.source "HeadUpDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/HeadUpDisplay;->onAttachToRoot(Lcom/android/camera/ui/GLRootView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/HeadUpDisplay;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/HeadUpDisplay;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/ui/HeadUpDisplay$2;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 118
    iget-object v2, p0, Lcom/android/camera/ui/HeadUpDisplay$2;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v2}, Lcom/android/camera/ui/HeadUpDisplay;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v0

    .line 119
    .local v0, root:Lcom/android/camera/ui/GLRootView;
    const/4 v1, 0x0

    .line 120
    .local v1, runnable:Ljava/lang/Runnable;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 128
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    .line 129
    :cond_0
    return-void

    .line 122
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/ui/HeadUpDisplay$2;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-static {v2}, Lcom/android/camera/ui/HeadUpDisplay;->access$000(Lcom/android/camera/ui/HeadUpDisplay;)Ljava/lang/Runnable;

    move-result-object v1

    .line 123
    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/ui/HeadUpDisplay$2;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-static {v2}, Lcom/android/camera/ui/HeadUpDisplay;->access$100(Lcom/android/camera/ui/HeadUpDisplay;)Ljava/lang/Runnable;

    move-result-object v1

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
