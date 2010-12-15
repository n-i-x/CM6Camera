.class public Lcom/android/camera/PreviewFrameLayout;
.super Landroid/view/ViewGroup;
.source "PreviewFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;
    }
.end annotation


# static fields
.field private static final MIN_HORIZONTAL_MARGIN:I = 0xa

.field private static final SIZE:I = 0x32


# instance fields
.field private actualHeight:I

.field private actualWidth:I

.field private mAspectRatio:D

.field private mFocus:Lcom/android/camera/FocusRectangle;

.field private mFrame:Landroid/widget/FrameLayout;

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private mSizeListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const-wide v0, 0x3ff5555555555555L

    iput-wide v0, p0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    .line 45
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mMetrics:Landroid/util/DisplayMetrics;

    .line 51
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PreviewFrameLayout;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/camera/PreviewFrameLayout;->actualHeight:I

    return v0
.end method

.method public getActualWidth()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/camera/PreviewFrameLayout;->actualWidth:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 61
    const v0, 0x7f0c0008

    invoke-virtual {p0, v0}, Lcom/android/camera/PreviewFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mFrame:Landroid/widget/FrameLayout;

    .line 62
    iget-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mFrame:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must provide child with id as \"frame\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    const v0, 0x7f0c000a

    invoke-virtual {p0, v0}, Lcom/android/camera/PreviewFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FocusRectangle;

    iput-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mFocus:Lcom/android/camera/FocusRectangle;

    .line 67
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 19
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v4

    .line 86
    .local v4, frameWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PreviewFrameLayout;->getHeight()I

    move-result v3

    .line 88
    .local v3, frameHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mFrame:Landroid/widget/FrameLayout;

    move-object v2, v0

    .line 90
    .local v2, f:Landroid/widget/FrameLayout;
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v13

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v14

    add-int/2addr v13, v14

    const/high16 v14, 0x4120

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mMetrics:Landroid/util/DisplayMetrics;

    move-object v15, v0

    iget v15, v15, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 93
    .local v6, horizontalPadding:I
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v14

    add-int v10, v13, v14

    .line 97
    .local v10, verticalPadding:I
    move v7, v3

    .line 98
    .local v7, previewHeight:I
    sub-int v8, v4, v6

    .line 101
    .local v8, previewWidth:I
    int-to-double v13, v8

    int-to-double v15, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    cmpl-double v13, v13, v15

    if-lez v13, :cond_2

    .line 102
    int-to-double v13, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    move-wide v15, v0

    mul-double/2addr v13, v15

    const-wide/high16 v15, 0x3fe0

    add-double/2addr v13, v15

    double-to-int v8, v13

    .line 107
    :goto_0
    add-int v4, v8, v6

    .line 108
    add-int v3, v7, v10

    .line 110
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PreviewFrameLayout;->actualWidth:I

    .line 111
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PreviewFrameLayout;->actualHeight:I

    .line 113
    sub-int v13, p4, p2

    sub-int/2addr v13, v4

    div-int/lit8 v5, v13, 0x2

    .line 114
    .local v5, hSpace:I
    sub-int v13, p5, p3

    sub-int/2addr v13, v3

    div-int/lit8 v9, v13, 0x2

    .line 115
    .local v9, vSpace:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mFrame:Landroid/widget/FrameLayout;

    move-object v13, v0

    const/high16 v14, 0x4000

    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    const/high16 v15, 0x4000

    invoke-static {v3, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/FrameLayout;->measure(II)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mFrame:Landroid/widget/FrameLayout;

    move-object v13, v0

    add-int v14, p2, v5

    add-int v15, p3, v9

    sub-int v16, p4, v5

    sub-int v17, p5, v9

    invoke-virtual/range {v13 .. v17}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mFocus:Lcom/android/camera/FocusRectangle;

    move-object v13, v0

    if-eqz v13, :cond_0

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mFocus:Lcom/android/camera/FocusRectangle;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/camera/FocusRectangle;->getTouchIndexX()I

    move-result v11

    .line 122
    .local v11, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mFocus:Lcom/android/camera/FocusRectangle;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/camera/FocusRectangle;->getTouchIndexY()I

    move-result v12

    .line 123
    .local v12, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mFocus:Lcom/android/camera/FocusRectangle;

    move-object v13, v0

    const/16 v14, 0x32

    sub-int v14, v11, v14

    const/16 v15, 0x32

    sub-int v15, v12, v15

    add-int/lit8 v16, v11, 0x32

    add-int/lit8 v17, v12, 0x32

    invoke-virtual/range {v13 .. v17}, Lcom/android/camera/FocusRectangle;->layout(IIII)V

    .line 126
    .end local v11           #x:I
    .end local v12           #y:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mSizeListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

    move-object v13, v0

    if-eqz v13, :cond_1

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mSizeListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

    move-object v13, v0

    invoke-interface {v13}, Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;->onSizeChanged()V

    .line 130
    :cond_1
    return-void

    .line 104
    .end local v5           #hSpace:I
    .end local v9           #vSpace:I
    :cond_2
    int-to-double v13, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    move-wide v15, v0

    div-double/2addr v13, v15

    const-wide/high16 v15, 0x3fe0

    add-double/2addr v13, v15

    double-to-int v7, v13

    goto/16 :goto_0
.end method

.method public setAspectRatio(D)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 70
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 72
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_1

    .line 73
    iput-wide p1, p0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    .line 74
    invoke-virtual {p0}, Lcom/android/camera/PreviewFrameLayout;->requestLayout()V

    .line 76
    :cond_1
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/PreviewFrameLayout;->mSizeListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

    .line 57
    return-void
.end method
