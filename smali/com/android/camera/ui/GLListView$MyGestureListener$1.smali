.class Lcom/android/camera/ui/GLListView$MyGestureListener$1;
.super Ljava/lang/Object;
.source "GLListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/GLListView$MyGestureListener;->onShowPress(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/GLListView$MyGestureListener;

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/GLListView$MyGestureListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/camera/ui/GLListView$MyGestureListener$1;->this$1:Lcom/android/camera/ui/GLListView$MyGestureListener;

    iput p2, p0, Lcom/android/camera/ui/GLListView$MyGestureListener$1;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/camera/ui/GLListView$MyGestureListener$1;->this$1:Lcom/android/camera/ui/GLListView$MyGestureListener;

    iget-object v0, v0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-static {v0}, Lcom/android/camera/ui/GLListView;->access$700(Lcom/android/camera/ui/GLListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/GLListView$MyGestureListener$1;->this$1:Lcom/android/camera/ui/GLListView$MyGestureListener;

    iget-object v0, v0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    iget v1, p0, Lcom/android/camera/ui/GLListView$MyGestureListener$1;->val$y:I

    invoke-static {v0, v1}, Lcom/android/camera/ui/GLListView;->access$800(Lcom/android/camera/ui/GLListView;I)V

    .line 380
    :cond_0
    return-void
.end method
