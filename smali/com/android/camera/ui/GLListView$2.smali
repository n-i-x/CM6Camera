.class Lcom/android/camera/ui/GLListView$2;
.super Landroid/os/Handler;
.source "GLListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/GLListView;->onAttachToRoot(Lcom/android/camera/ui/GLRootView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/GLListView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/GLListView;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/camera/ui/GLListView$2;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/camera/ui/GLListView$2;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLListView;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v0

    .line 105
    .local v0, root:Lcom/android/camera/ui/GLRootView;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/ui/GLListView$2;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-static {v1}, Lcom/android/camera/ui/GLListView;->access$100(Lcom/android/camera/ui/GLListView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
