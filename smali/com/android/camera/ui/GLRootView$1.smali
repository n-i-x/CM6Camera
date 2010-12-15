.class Lcom/android/camera/ui/GLRootView$1;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/GLRootView;->onDetachedFromWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/GLRootView;

.field final synthetic val$var:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/GLRootView;Landroid/os/ConditionVariable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/camera/ui/GLRootView$1;->this$0:Lcom/android/camera/ui/GLRootView;

    iput-object p2, p0, Lcom/android/camera/ui/GLRootView$1;->val$var:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView$1;->val$var:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 569
    return-void
.end method
