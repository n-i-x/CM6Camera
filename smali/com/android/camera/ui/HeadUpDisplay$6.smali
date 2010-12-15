.class Lcom/android/camera/ui/HeadUpDisplay$6;
.super Ljava/lang/Object;
.source "HeadUpDisplay.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/HeadUpDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/android/camera/ui/HeadUpDisplay;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/HeadUpDisplay;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/camera/ui/HeadUpDisplay$6;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 390
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay$6;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v0, v0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorBar;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 395
    :goto_0
    return-object v0

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay$6;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-static {v0}, Lcom/android/camera/ui/HeadUpDisplay;->access$800(Lcom/android/camera/ui/HeadUpDisplay;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay$6;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-static {v0}, Lcom/android/camera/ui/HeadUpDisplay;->access$800(Lcom/android/camera/ui/HeadUpDisplay;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 393
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay$6;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v0, v0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorBar;->setSelectedIndex(I)V

    .line 394
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay$6;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v0, v0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/IndicatorBar;->setActivated(Z)V

    .line 395
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    .line 388
    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay$6;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
