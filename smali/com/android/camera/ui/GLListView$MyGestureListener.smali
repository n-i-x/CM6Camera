.class Lcom/android/camera/ui/GLListView$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GLListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/GLListView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/GLListView;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/GLListView;Lcom/android/camera/ui/GLListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/android/camera/ui/GLListView$MyGestureListener;-><init>(Lcom/android/camera/ui/GLListView;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x0

    .line 357
    iget-object v0, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-static {v0}, Lcom/android/camera/ui/GLListView;->access$300(Lcom/android/camera/ui/GLListView;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 361
    :goto_0
    return v0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-static {v0}, Lcom/android/camera/ui/GLListView;->access$400(Lcom/android/camera/ui/GLListView;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    iget v2, v2, Lcom/android/camera/ui/GLListView;->mScrollY:I

    float-to-int v3, p4

    neg-int v4, v3

    iget-object v3, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    iget v3, v3, Lcom/android/camera/ui/GLListView;->mScrollHeight:I

    iget-object v5, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-virtual {v5}, Lcom/android/camera/ui/GLListView;->getHeight()I

    move-result v5

    sub-int v8, v3, v5

    move v3, v1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 360
    iget-object v0, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLListView;->invalidate()V

    .line 361
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v3, 0x0

    .line 367
    iget-object v0, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-static {v0}, Lcom/android/camera/ui/GLListView;->access$300(Lcom/android/camera/ui/GLListView;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 370
    :goto_0
    return v0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/GLListView;->access$500(Lcom/android/camera/ui/GLListView;Lcom/android/camera/ui/GLView;I)V

    .line 369
    iget-object v0, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    iget-object v1, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    iget v1, v1, Lcom/android/camera/ui/GLListView;->mScrollY:I

    float-to-int v2, p4

    add-int/2addr v1, v2

    invoke-static {v0, v1, v3}, Lcom/android/camera/ui/GLListView;->access$600(Lcom/android/camera/ui/GLListView;IZ)V

    .line 370
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-static {v1}, Lcom/android/camera/ui/GLListView;->access$300(Lcom/android/camera/ui/GLListView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 377
    .local v0, y:I
    iget-object v1, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLListView;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v1

    new-instance v2, Lcom/android/camera/ui/GLListView$MyGestureListener$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/ui/GLListView$MyGestureListener$1;-><init>(Lcom/android/camera/ui/GLListView$MyGestureListener;I)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-static {v0}, Lcom/android/camera/ui/GLListView;->access$300(Lcom/android/camera/ui/GLListView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 393
    :goto_0
    return v0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/GLListView;->access$800(Lcom/android/camera/ui/GLListView;I)V

    .line 388
    iget-object v0, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-static {v0}, Lcom/android/camera/ui/GLListView;->access$900(Lcom/android/camera/ui/GLListView;)Lcom/android/camera/ui/GLListView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-static {v0}, Lcom/android/camera/ui/GLListView;->access$1000(Lcom/android/camera/ui/GLListView;)Lcom/android/camera/ui/GLView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-static {v0}, Lcom/android/camera/ui/GLListView;->access$900(Lcom/android/camera/ui/GLListView;)Lcom/android/camera/ui/GLListView$OnItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-static {v1}, Lcom/android/camera/ui/GLListView;->access$1000(Lcom/android/camera/ui/GLListView;)Lcom/android/camera/ui/GLView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-static {v2}, Lcom/android/camera/ui/GLListView;->access$1100(Lcom/android/camera/ui/GLListView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/GLListView$OnItemSelectedListener;->onItemSelected(Lcom/android/camera/ui/GLView;I)V

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/GLListView$MyGestureListener;->this$0:Lcom/android/camera/ui/GLListView;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/GLListView;->access$500(Lcom/android/camera/ui/GLListView;Lcom/android/camera/ui/GLView;I)V

    .line 393
    const/4 v0, 0x1

    goto :goto_0
.end method
