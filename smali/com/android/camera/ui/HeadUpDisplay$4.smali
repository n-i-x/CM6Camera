.class Lcom/android/camera/ui/HeadUpDisplay$4;
.super Ljava/lang/Object;
.source "HeadUpDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/HeadUpDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/HeadUpDisplay;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/HeadUpDisplay;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/camera/ui/HeadUpDisplay$4;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay$4;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v0, v0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay$4;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v0, v0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorBar;->setActivated(Z)V

    .line 150
    :cond_0
    return-void
.end method
