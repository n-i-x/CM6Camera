.class public Lcom/android/camera/ui/GLListView;
.super Lcom/android/camera/ui/GLView;
.source "GLListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GLListView$MyGestureListener;,
        Lcom/android/camera/ui/GLListView$OnItemSelectedListener;,
        Lcom/android/camera/ui/GLListView$Model;
    }
.end annotation


# static fields
.field private static final HIDE_SCROLL_BAR:I = 0x1

.field private static final INDEX_NONE:I = -0x1

.field private static final SCROLL_BAR_TIMEOUT:I = 0x9c4

.field private static final TAG:Ljava/lang/String; = "GLListView"


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHasMeasured:Z

.field private final mHideScrollBar:Ljava/lang/Runnable;

.field private mHighLight:Lcom/android/camera/ui/NinePatchTexture;

.field private mHighlightIndex:I

.field private mHighlightView:Lcom/android/camera/ui/GLView;

.field private mIsPressed:Z

.field private mModel:Lcom/android/camera/ui/GLListView$Model;

.field private mOnItemSelectedListener:Lcom/android/camera/ui/GLListView$OnItemSelectedListener;

.field private mScrollBarAnimation:Landroid/view/animation/Animation;

.field private mScrollBarVisible:Z

.field private mScrollable:Z

.field private mScrollbar:Lcom/android/camera/ui/NinePatchTexture;

.field private final mScroller:Landroid/widget/Scroller;

.field private mVisibleEnd:I

.field private mVisibleStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/android/camera/ui/GLView;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/GLListView;->mHighlightIndex:I

    .line 54
    iput v1, p0, Lcom/android/camera/ui/GLListView;->mVisibleStart:I

    .line 55
    iput v1, p0, Lcom/android/camera/ui/GLListView;->mVisibleEnd:I

    .line 57
    iput-boolean v1, p0, Lcom/android/camera/ui/GLListView;->mHasMeasured:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/camera/ui/GLListView;->mScrollBarVisible:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/camera/ui/GLListView;->mIsPressed:Z

    .line 82
    new-instance v0, Lcom/android/camera/ui/GLListView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/GLListView$1;-><init>(Lcom/android/camera/ui/GLListView;)V

    iput-object v0, p0, Lcom/android/camera/ui/GLListView;->mHideScrollBar:Ljava/lang/Runnable;

    .line 79
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/GLListView;->mScroller:Landroid/widget/Scroller;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/GLListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/camera/ui/GLListView;->setScrollBarVisible(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/GLListView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mHideScrollBar:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/GLListView;)Lcom/android/camera/ui/GLView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mHighlightView:Lcom/android/camera/ui/GLView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/GLListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/camera/ui/GLListView;->mHighlightIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/GLListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/camera/ui/GLListView;->mScrollable:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/GLListView;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/GLListView;Lcom/android/camera/ui/GLView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GLListView;->setHighlightItem(Lcom/android/camera/ui/GLView;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/ui/GLListView;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GLListView;->setScrollPosition(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/ui/GLListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/camera/ui/GLListView;->mIsPressed:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/GLListView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/camera/ui/GLListView;->findAndSetHighlightItem(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/ui/GLListView;)Lcom/android/camera/ui/GLListView$OnItemSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mOnItemSelectedListener:Lcom/android/camera/ui/GLListView$OnItemSelectedListener;

    return-object v0
.end method

.method private drawWithAnimation(Lcom/android/camera/ui/GLRootView;Lcom/android/camera/ui/Texture;IILandroid/view/animation/Animation;)Z
    .locals 5
    .parameter "root"
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "anim"

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 148
    .local v1, now:J
    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->obtainTransformation()Landroid/view/animation/Transformation;

    move-result-object v3

    .line 149
    .local v3, temp:Landroid/view/animation/Transformation;
    invoke-virtual {p5, v1, v2, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 150
    .local v0, more:Z
    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->pushTransform()Landroid/view/animation/Transformation;

    move-result-object v4

    .line 151
    .local v4, transformation:Landroid/view/animation/Transformation;
    invoke-virtual {v4, v3}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 152
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/camera/ui/Texture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 153
    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->invalidate()V

    .line 154
    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->popTransform()V

    .line 155
    return v0
.end method

.method private findAndSetHighlightItem(I)V
    .locals 6
    .parameter "y"

    .prologue
    .line 325
    iget v4, p0, Lcom/android/camera/ui/GLListView;->mScrollY:I

    add-int v3, p1, v4

    .line 326
    .local v3, position:I
    iget v1, p0, Lcom/android/camera/ui/GLListView;->mVisibleStart:I

    .local v1, i:I
    iget v2, p0, Lcom/android/camera/ui/GLListView;->mVisibleEnd:I

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 327
    iget-object v4, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    invoke-interface {v4, v1}, Lcom/android/camera/ui/GLListView$Model;->getView(I)Lcom/android/camera/ui/GLView;

    move-result-object v0

    .line 328
    .local v0, child:Lcom/android/camera/ui/GLView;
    iget-object v4, v0, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v4, v3, :cond_0

    .line 329
    iget-object v4, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    invoke-interface {v4, v1}, Lcom/android/camera/ui/GLListView$Model;->isSelectable(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/GLListView;->setHighlightItem(Lcom/android/camera/ui/GLView;I)V

    .line 337
    .end local v0           #child:Lcom/android/camera/ui/GLView;
    :goto_1
    return-void

    .line 326
    .restart local v0       #child:Lcom/android/camera/ui/GLView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v0           #child:Lcom/android/camera/ui/GLView;
    :cond_1
    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/GLListView;->setHighlightItem(Lcom/android/camera/ui/GLView;I)V

    goto :goto_1
.end method

.method private setHighlightItem(Lcom/android/camera/ui/GLView;I)V
    .locals 1
    .parameter "view"
    .parameter "index"

    .prologue
    .line 340
    iget v0, p0, Lcom/android/camera/ui/GLListView;->mHighlightIndex:I

    if-ne p2, v0, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iput p2, p0, Lcom/android/camera/ui/GLListView;->mHighlightIndex:I

    .line 342
    iput-object p1, p0, Lcom/android/camera/ui/GLListView;->mHighlightView:Lcom/android/camera/ui/GLView;

    .line 343
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mHighLight:Lcom/android/camera/ui/NinePatchTexture;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->invalidate()V

    goto :goto_0
.end method

.method private setScrollBarVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/camera/ui/GLListView;->mScrollBarVisible:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mScrollbar:Lcom/android/camera/ui/NinePatchTexture;

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/ui/GLListView;->mScrollBarVisible:Z

    .line 121
    if-nez p1, :cond_2

    .line 122
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/GLListView;->mScrollBarAnimation:Landroid/view/animation/Animation;

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mScrollBarAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mScrollBarAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 128
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->invalidate()V

    goto :goto_0

    .line 126
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/GLListView;->mScrollBarAnimation:Landroid/view/animation/Animation;

    goto :goto_1
.end method

.method private setScrollPosition(IZ)V
    .locals 7
    .parameter "position"
    .parameter "force"

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->getHeight()I

    move-result v2

    .line 257
    .local v2, height:I
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/camera/ui/GLListView;->mScrollHeight:I

    sub-int/2addr v6, v2

    invoke-static {p1, v5, v6}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    .line 259
    if-nez p2, :cond_0

    iget v5, p0, Lcom/android/camera/ui/GLListView;->mScrollY:I

    if-ne p1, v5, :cond_0

    .line 276
    :goto_0
    return-void

    .line 260
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/GLListView;->mScrollY:I

    .line 262
    iget-object v5, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    invoke-interface {v5}, Lcom/android/camera/ui/GLListView$Model;->size()I

    move-result v3

    .line 264
    .local v3, n:I
    const/4 v4, 0x0

    .line 265
    .local v4, start:I
    const/4 v1, 0x0

    .line 266
    .local v1, end:I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 267
    iget-object v5, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    invoke-interface {v5, v4}, Lcom/android/camera/ui/GLListView$Model;->getView(I)Lcom/android/camera/ui/GLView;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-ge p1, v5, :cond_3

    .line 270
    :cond_1
    add-int v0, p1, v2

    .line 271
    .local v0, bottom:I
    move v1, v4

    :goto_2
    if-ge v1, v3, :cond_2

    .line 272
    iget-object v5, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    invoke-interface {v5, v1}, Lcom/android/camera/ui/GLListView$Model;->getView(I)Lcom/android/camera/ui/GLView;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gt v0, v5, :cond_4

    .line 274
    :cond_2
    invoke-direct {p0, v4, v1}, Lcom/android/camera/ui/GLListView;->setVisibleRange(II)V

    .line 275
    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->invalidate()V

    goto :goto_0

    .line 266
    .end local v0           #bottom:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 271
    .restart local v0       #bottom:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private setVisibleRange(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 279
    iget v0, p0, Lcom/android/camera/ui/GLListView;->mVisibleStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/GLListView;->mVisibleEnd:I

    if-ne p2, v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/GLListView;->mVisibleStart:I

    .line 281
    iput p2, p0, Lcom/android/camera/ui/GLListView;->mVisibleEnd:I

    goto :goto_0
.end method


# virtual methods
.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GLListView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getComponent(I)Lcom/android/camera/ui/GLView;
    .locals 2
    .parameter "index"

    .prologue
    .line 219
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/GLListView;->mVisibleEnd:I

    iget v1, p0, Lcom/android/camera/ui/GLListView;->mVisibleStart:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    iget v1, p0, Lcom/android/camera/ui/GLListView;->mVisibleStart:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/GLListView$Model;->getView(I)Lcom/android/camera/ui/GLView;

    move-result-object v0

    return-object v0
.end method

.method public getComponentCount()I
    .locals 2

    .prologue
    .line 214
    iget v0, p0, Lcom/android/camera/ui/GLListView;->mVisibleEnd:I

    iget v1, p0, Lcom/android/camera/ui/GLListView;->mVisibleStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected onAttachToRoot(Lcom/android/camera/ui/GLRootView;)V
    .locals 4
    .parameter "root"

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/camera/ui/GLView;->onAttachToRoot(Lcom/android/camera/ui/GLRootView;)V

    .line 101
    new-instance v0, Lcom/android/camera/ui/GLListView$2;

    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->getTimerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/GLListView$2;-><init>(Lcom/android/camera/ui/GLListView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/ui/GLListView;->mHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/camera/ui/GLListView$MyGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/ui/GLListView$MyGestureListener;-><init>(Lcom/android/camera/ui/GLListView;Lcom/android/camera/ui/GLListView$1;)V

    iget-object v3, p0, Lcom/android/camera/ui/GLListView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/camera/ui/GLListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 115
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "change"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 235
    iget-boolean v6, p0, Lcom/android/camera/ui/GLListView;->mHasMeasured:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/camera/ui/GLListView;->mMeasuredWidth:I

    sub-int v7, p4, p2

    if-eq v6, v7, :cond_1

    .line 236
    :cond_0
    sub-int v6, p4, p2

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    sub-int v7, p5, p3

    const/high16 v8, 0x4000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/ui/GLListView;->measure(II)V

    .line 240
    :cond_1
    iget v6, p0, Lcom/android/camera/ui/GLListView;->mScrollHeight:I

    sub-int v7, p5, p3

    if-le v6, v7, :cond_2

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, p0, Lcom/android/camera/ui/GLListView;->mScrollable:Z

    .line 241
    sub-int v4, p4, p2

    .line 242
    .local v4, width:I
    const/4 v5, 0x0

    .line 244
    .local v5, yoffset:I
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v6, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    invoke-interface {v6}, Lcom/android/camera/ui/GLListView$Model;->size()I

    move-result v2

    .local v2, n:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 245
    iget-object v6, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    invoke-interface {v6, v0}, Lcom/android/camera/ui/GLListView$Model;->getView(I)Lcom/android/camera/ui/GLView;

    move-result-object v1

    .line 246
    .local v1, item:Lcom/android/camera/ui/GLView;
    invoke-virtual {v1, p0}, Lcom/android/camera/ui/GLView;->onAddToParent(Lcom/android/camera/ui/GLView;)V

    .line 247
    invoke-virtual {v1}, Lcom/android/camera/ui/GLView;->getMeasuredHeight()I

    move-result v6

    add-int v3, v5, v6

    .line 248
    .local v3, nextOffset:I
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5, v4, v3}, Lcom/android/camera/ui/GLView;->layout(IIII)V

    .line 249
    move v5, v3

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    .end local v0           #i:I
    .end local v1           #item:Lcom/android/camera/ui/GLView;
    .end local v2           #n:I
    .end local v3           #nextOffset:I
    .end local v4           #width:I
    .end local v5           #yoffset:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 251
    .restart local v0       #i:I
    .restart local v2       #n:I
    .restart local v4       #width:I
    .restart local v5       #yoffset:I
    :cond_3
    iget v6, p0, Lcom/android/camera/ui/GLListView;->mScrollY:I

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/camera/ui/GLListView;->setScrollPosition(IZ)V

    .line 252
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, height:I
    const/4 v2, 0x0

    .line 199
    .local v2, maxWidth:I
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v5, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    invoke-interface {v5}, Lcom/android/camera/ui/GLListView$Model;->size()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 200
    iget-object v5, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    invoke-interface {v5, v1}, Lcom/android/camera/ui/GLListView$Model;->getView(I)Lcom/android/camera/ui/GLView;

    move-result-object v4

    .line 201
    .local v4, view:Lcom/android/camera/ui/GLView;
    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/android/camera/ui/GLView;->measure(II)V

    .line 202
    invoke-virtual {v4}, Lcom/android/camera/ui/GLView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v0, v5

    .line 203
    invoke-virtual {v4}, Lcom/android/camera/ui/GLView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v4           #view:Lcom/android/camera/ui/GLView;
    :cond_0
    iput v0, p0, Lcom/android/camera/ui/GLListView;->mScrollHeight:I

    .line 206
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/camera/ui/GLListView;->mHasMeasured:Z

    .line 207
    new-instance v5, Lcom/android/camera/ui/MeasureHelper;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/MeasureHelper;-><init>(Lcom/android/camera/ui/GLView;)V

    invoke-virtual {v5, v2, v0}, Lcom/android/camera/ui/MeasureHelper;->setPreferredContentSize(II)Lcom/android/camera/ui/MeasureHelper;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/android/camera/ui/MeasureHelper;->measure(II)V

    .line 210
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 292
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 321
    :cond_0
    :goto_0
    return v3

    .line 296
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 297
    iget v0, p0, Lcom/android/camera/ui/GLListView;->mScrollHeight:I

    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/GLListView;->setScrollBarVisible(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 300
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/camera/ui/GLListView;->mIsPressed:Z

    .line 301
    iget-boolean v0, p0, Lcom/android/camera/ui/GLListView;->mScrollable:Z

    if-nez v0, :cond_0

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/GLListView;->findAndSetHighlightItem(I)V

    goto :goto_0

    .line 306
    :pswitch_2
    iput-boolean v2, p0, Lcom/android/camera/ui/GLListView;->mIsPressed:Z

    .line 307
    iget-boolean v0, p0, Lcom/android/camera/ui/GLListView;->mScrollBarVisible:Z

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 312
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ui/GLListView;->mScrollable:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mOnItemSelectedListener:Lcom/android/camera/ui/GLListView$OnItemSelectedListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mHighlightView:Lcom/android/camera/ui/GLView;

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mOnItemSelectedListener:Lcom/android/camera/ui/GLListView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/android/camera/ui/GLListView;->mHighlightView:Lcom/android/camera/ui/GLView;

    iget v2, p0, Lcom/android/camera/ui/GLListView;->mHighlightIndex:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/GLListView$OnItemSelectedListener;->onItemSelected(Lcom/android/camera/ui/GLView;I)V

    .line 319
    :cond_3
    :pswitch_3
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/GLListView;->setHighlightItem(Lcom/android/camera/ui/GLView;I)V

    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected onVisibilityChanged(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    const/4 v3, 0x1

    .line 90
    invoke-super {p0, p1}, Lcom/android/camera/ui/GLView;->onVisibilityChanged(I)V

    .line 91
    if-nez p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/GLListView;->mScrollHeight:I

    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 92
    invoke-direct {p0, v3}, Lcom/android/camera/ui/GLListView;->setScrollBarVisible(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 96
    :cond_0
    return-void
.end method

.method protected render(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 11
    .parameter "root"
    .parameter "gl"

    .prologue
    const/4 v10, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->getHeight()I

    move-result v1

    invoke-virtual {p1, v10, v10, v0, v1}, Lcom/android/camera/ui/GLRootView;->clipRect(IIII)V

    .line 161
    iget v0, p0, Lcom/android/camera/ui/GLListView;->mHighlightIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    iget v1, p0, Lcom/android/camera/ui/GLListView;->mHighlightIndex:I

    invoke-interface {v0, v1}, Lcom/android/camera/ui/GLListView$Model;->getView(I)Lcom/android/camera/ui/GLView;

    move-result-object v8

    .line 163
    .local v8, view:Lcom/android/camera/ui/GLView;
    invoke-virtual {v8}, Lcom/android/camera/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 164
    .local v6, bounds:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mHighLight:Lcom/android/camera/ui/NinePatchTexture;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 166
    .local v9, width:I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 167
    .local v7, height:I
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mHighLight:Lcom/android/camera/ui/NinePatchTexture;

    invoke-virtual {v0, v9, v7}, Lcom/android/camera/ui/NinePatchTexture;->setSize(II)V

    .line 168
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mHighLight:Lcom/android/camera/ui/NinePatchTexture;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/camera/ui/GLListView;->mScrollX:I

    sub-int/2addr v1, v2

    iget v2, v6, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/camera/ui/GLListView;->mScrollY:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/camera/ui/NinePatchTexture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 172
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v7           #height:I
    .end local v8           #view:Lcom/android/camera/ui/GLView;
    .end local v9           #width:I
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/GLView;->render(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 173
    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->clearClip()V

    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mScrollBarAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/GLListView;->mScrollBarVisible:Z

    if-eqz v0, :cond_2

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mScrollbar:Lcom/android/camera/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/camera/ui/NinePatchTexture;->getIntrinsicWidth()I

    move-result v9

    .line 177
    .restart local v9       #width:I
    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/GLListView;->mScrollHeight:I

    div-int v7, v0, v1

    .line 178
    .restart local v7       #height:I
    iget v0, p0, Lcom/android/camera/ui/GLListView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/GLListView;->mScrollHeight:I

    div-int v4, v0, v1

    .line 179
    .local v4, yoffset:I
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mScrollbar:Lcom/android/camera/ui/NinePatchTexture;

    invoke-virtual {v0, v9, v7}, Lcom/android/camera/ui/NinePatchTexture;->setSize(II)V

    .line 180
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mScrollBarAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_4

    .line 181
    iget-object v2, p0, Lcom/android/camera/ui/GLListView;->mScrollbar:Lcom/android/camera/ui/NinePatchTexture;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->getWidth()I

    move-result v0

    sub-int v3, v0, v9

    iget-object v5, p0, Lcom/android/camera/ui/GLListView;->mScrollBarAnimation:Landroid/view/animation/Animation;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/GLListView;->drawWithAnimation(Lcom/android/camera/ui/GLRootView;Lcom/android/camera/ui/Texture;IILandroid/view/animation/Animation;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/GLListView;->mScrollBarAnimation:Landroid/view/animation/Animation;

    .line 189
    .end local v4           #yoffset:I
    .end local v7           #height:I
    .end local v9           #width:I
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    invoke-direct {p0, v0, v10}, Lcom/android/camera/ui/GLListView;->setScrollPosition(IZ)V

    .line 192
    :cond_3
    return-void

    .line 186
    .restart local v4       #yoffset:I
    .restart local v7       #height:I
    .restart local v9       #width:I
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mScrollbar:Lcom/android/camera/ui/NinePatchTexture;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {v0, p1, v1, v4}, Lcom/android/camera/ui/NinePatchTexture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/GLListView;->mHasMeasured:Z

    .line 228
    invoke-super {p0}, Lcom/android/camera/ui/GLView;->requestLayout()V

    .line 229
    return-void
.end method

.method public setDataModel(Lcom/android/camera/ui/GLListView$Model;)V
    .locals 1
    .parameter "model"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/GLListView;->mScrollY:I

    .line 138
    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->requestLayout()V

    .line 139
    return-void
.end method

.method public setHighLight(Lcom/android/camera/ui/NinePatchTexture;)V
    .locals 0
    .parameter "highLight"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/camera/ui/GLListView;->mHighLight:Lcom/android/camera/ui/NinePatchTexture;

    .line 133
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/android/camera/ui/GLListView$OnItemSelectedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/ui/GLListView;->mOnItemSelectedListener:Lcom/android/camera/ui/GLListView$OnItemSelectedListener;

    .line 143
    return-void
.end method

.method public setScroller(Lcom/android/camera/ui/NinePatchTexture;)V
    .locals 0
    .parameter "scrollbar"

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/camera/ui/GLListView;->mScrollbar:Lcom/android/camera/ui/NinePatchTexture;

    .line 348
    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->requestLayout()V

    .line 349
    return-void
.end method
