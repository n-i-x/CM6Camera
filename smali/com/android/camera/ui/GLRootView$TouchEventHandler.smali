.class Lcom/android/camera/ui/GLRootView$TouchEventHandler;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchEventHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEvent:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/camera/ui/GLRootView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/GLRootView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter
    .parameter "event"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/camera/ui/GLRootView$TouchEventHandler;->this$0:Lcom/android/camera/ui/GLRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-object p2, p0, Lcom/android/camera/ui/GLRootView$TouchEventHandler;->mEvent:Landroid/view/MotionEvent;

    .line 486
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView$TouchEventHandler;->this$0:Lcom/android/camera/ui/GLRootView;

    invoke-static {v0}, Lcom/android/camera/ui/GLRootView;->access$000(Lcom/android/camera/ui/GLRootView;)Lcom/android/camera/ui/GLView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 490
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView$TouchEventHandler;->this$0:Lcom/android/camera/ui/GLRootView;

    invoke-static {v0}, Lcom/android/camera/ui/GLRootView;->access$000(Lcom/android/camera/ui/GLRootView;)Lcom/android/camera/ui/GLView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/GLRootView$TouchEventHandler;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView$TouchEventHandler;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
