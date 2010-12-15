.class public Lcom/android/camera/ui/PopupWindow;
.super Lcom/android/camera/ui/GLView;
.source "PopupWindow.java"


# instance fields
.field protected mAnchor:Lcom/android/camera/ui/Texture;

.field protected mAnchorOffset:I

.field protected mAnchorPosition:I

.field protected mBackground:Lcom/android/camera/ui/FrameTexture;

.field private mBackupTexture:Lcom/android/camera/ui/RawTexture;

.field private final mRotatePane:Lcom/android/camera/ui/RotatePane;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/camera/ui/GLView;-><init>()V

    .line 37
    new-instance v0, Lcom/android/camera/ui/RotatePane;

    invoke-direct {v0}, Lcom/android/camera/ui/RotatePane;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PopupWindow;->mRotatePane:Lcom/android/camera/ui/RotatePane;

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/PopupWindow;->mRotatePane:Lcom/android/camera/ui/RotatePane;

    invoke-super {p0, v0}, Lcom/android/camera/ui/GLView;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 44
    return-void
.end method


# virtual methods
.method public addComponent(Lcom/android/camera/ui/GLView;)V
    .locals 2
    .parameter "component"

    .prologue
    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "use setContent(GLView)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearComponents()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "change"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/camera/ui/PopupWindow;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    .line 97
    .local v0, p:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/camera/ui/PopupWindow;->mRotatePane:Lcom/android/camera/ui/RotatePane;

    .line 98
    .local v1, view:Lcom/android/camera/ui/GLView;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/camera/ui/PopupWindow;->getWidth()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/ui/PopupWindow;->mAnchor:Lcom/android/camera/ui/Texture;

    invoke-virtual {v5}, Lcom/android/camera/ui/Texture;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/PopupWindow;->mAnchorOffset:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/camera/ui/PopupWindow;->getHeight()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/camera/ui/GLView;->layout(IIII)V

    .line 101
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v8, 0x0

    .line 69
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 70
    .local v5, widthMode:I
    if-eqz v5, :cond_0

    .line 71
    iget-object v3, p0, Lcom/android/camera/ui/PopupWindow;->mPaddings:Landroid/graphics/Rect;

    .line 72
    .local v3, p:Landroid/graphics/Rect;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 73
    .local v4, width:I
    iget v6, v3, Landroid/graphics/Rect;->left:I

    sub-int v6, v4, v6

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/camera/ui/PopupWindow;->mAnchor:Lcom/android/camera/ui/Texture;

    invoke-virtual {v7}, Lcom/android/camera/ui/Texture;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/ui/PopupWindow;->mAnchorOffset:I

    add-int/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 78
    .end local v3           #p:Landroid/graphics/Rect;
    .end local v4           #width:I
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 79
    .local v2, heightMode:I
    if-eqz v2, :cond_1

    .line 80
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 81
    .local v1, height:I
    iget-object v6, p0, Lcom/android/camera/ui/PopupWindow;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, v1, v6

    iget-object v7, p0, Lcom/android/camera/ui/PopupWindow;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 85
    .end local v1           #height:I
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/PopupWindow;->mPaddings:Landroid/graphics/Rect;

    .line 86
    .restart local v3       #p:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/camera/ui/PopupWindow;->mRotatePane:Lcom/android/camera/ui/RotatePane;

    .line 87
    .local v0, child:Lcom/android/camera/ui/GLView;
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/GLView;->measure(II)V

    .line 88
    invoke-virtual {v0}, Lcom/android/camera/ui/GLView;->getMeasuredWidth()I

    move-result v6

    iget v7, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/camera/ui/PopupWindow;->mAnchor:Lcom/android/camera/ui/Texture;

    invoke-virtual {v7}, Lcom/android/camera/ui/Texture;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/ui/PopupWindow;->mAnchorOffset:I

    sub-int/2addr v6, v7

    invoke-virtual {v0}, Lcom/android/camera/ui/GLView;->getMeasuredHeight()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/ui/PopupWindow;->setMeasuredSize(II)V

    .line 91
    return-void
.end method

.method public popoff()V
    .locals 3

    .prologue
    .line 177
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/PopupWindow;->setVisibility(I)V

    .line 178
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f333333

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 179
    .local v0, alpha:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PopupWindow;->startAnimation(Landroid/view/animation/Animation;)V

    .line 181
    return-void
.end method

.method public popup()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const v1, 0x3f333333

    const/high16 v2, 0x3f80

    .line 161
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/PopupWindow;->setVisibility(I)V

    .line 163
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 164
    .local v8, set:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p0}, Lcom/android/camera/ui/PopupWindow;->getWidth()I

    move-result v3

    int-to-float v5, v3

    iget v3, p0, Lcom/android/camera/ui/PopupWindow;->mAnchorPosition:I

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 166
    .local v0, scale:Landroid/view/animation/Animation;
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f00

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 168
    .local v7, alpha:Landroid/view/animation/Animation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 169
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 170
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 171
    const-wide/16 v1, 0x64

    invoke-virtual {v7, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 172
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 173
    invoke-virtual {p0, v8}, Lcom/android/camera/ui/PopupWindow;->startAnimation(Landroid/view/animation/Animation;)V

    .line 174
    return-void
.end method

.method protected renderBackground(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 21
    .parameter "root"
    .parameter "gl"

    .prologue
    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/PopupWindow;->getWidth()I

    move-result v20

    .line 110
    .local v20, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/PopupWindow;->getHeight()I

    move-result v18

    .line 111
    .local v18, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PopupWindow;->mAnchor:Lcom/android/camera/ui/Texture;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/camera/ui/Texture;->getWidth()I

    move-result v8

    .line 112
    .local v8, aWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PopupWindow;->mAnchor:Lcom/android/camera/ui/Texture;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v9

    .line 114
    .local v9, aHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PopupWindow;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 115
    .local v19, p:Landroid/graphics/Rect;
    sub-int v6, v20, v8

    .line 116
    .local v6, aXoffset:I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PopupWindow;->mAnchorPosition:I

    move v5, v0

    div-int/lit8 v7, v9, 0x2

    sub-int/2addr v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 117
    .local v7, aYoffset:I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v4, v0

    sub-int v4, v18, v4

    sub-int/2addr v4, v9

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PopupWindow;->mAnchor:Lcom/android/camera/ui/Texture;

    move-object v4, v0

    if-eqz v4, :cond_0

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PopupWindow;->mAnchor:Lcom/android/camera/ui/Texture;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/Texture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 123
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PopupWindow;->mBackupTexture:Lcom/android/camera/ui/RawTexture;

    move-object v4, v0

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PopupWindow;->mBackupTexture:Lcom/android/camera/ui/RawTexture;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/camera/ui/RawTexture;->getBoundGL()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_2

    .line 124
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/camera/ui/RawTexture;->newInstance(Ljavax/microedition/khronos/opengles/GL11;)Lcom/android/camera/ui/RawTexture;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/PopupWindow;->mBackupTexture:Lcom/android/camera/ui/RawTexture;

    .line 127
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PopupWindow;->mBackupTexture:Lcom/android/camera/ui/RawTexture;

    move-object v5, v0

    .local v5, backup:Lcom/android/camera/ui/RawTexture;
    move-object/from16 v4, p1

    .line 132
    :try_start_0
    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/ui/GLRootView;->copyTexture2D(Lcom/android/camera/ui/RawTexture;IIII)V
    :try_end_0
    .catch Lcom/android/camera/ui/GLOutOfMemoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PopupWindow;->mBackground:Lcom/android/camera/ui/FrameTexture;

    move-object v4, v0

    if-eqz v4, :cond_3

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PopupWindow;->mBackground:Lcom/android/camera/ui/FrameTexture;

    move-object v4, v0

    sub-int v10, v20, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PopupWindow;->mAnchorOffset:I

    move v11, v0

    add-int/2addr v10, v11

    move-object v0, v4

    move v1, v10

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/FrameTexture;->setSize(II)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PopupWindow;->mBackground:Lcom/android/camera/ui/FrameTexture;

    move-object v4, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v10

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/FrameTexture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 142
    :cond_3
    const/4 v4, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p2

    move v1, v4

    move v2, v10

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 143
    const/high16 v16, 0x3f80

    move-object v10, v5

    move-object/from16 v11, p1

    move v12, v6

    move v13, v7

    move v14, v8

    move v15, v9

    invoke-virtual/range {v10 .. v16}, Lcom/android/camera/ui/RawTexture;->draw(Lcom/android/camera/ui/GLRootView;IIIIF)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/PopupWindow;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/GLRootView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f08

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .end local v5           #backup:Lcom/android/camera/ui/RawTexture;
    move-result v4

    if-eqz v4, :cond_4

    .line 145
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p2

    move v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 149
    :goto_1
    return-void

    .line 133
    .restart local v5       #backup:Lcom/android/camera/ui/RawTexture;
    :catch_0
    move-exception v17

    .line 134
    .local v17, e:Lcom/android/camera/ui/GLOutOfMemoryException;
    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/ui/GLOutOfMemoryException;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v5           #backup:Lcom/android/camera/ui/RawTexture;
    .end local v17           #e:Lcom/android/camera/ui/GLOutOfMemoryException;
    :cond_4
    const/4 v4, 0x1

    const/16 v5, 0x303

    move-object/from16 v0, p2

    move v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    goto :goto_1
.end method

.method public setAnchor(Lcom/android/camera/ui/Texture;I)V
    .locals 0
    .parameter "anchor"
    .parameter "offset"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/camera/ui/PopupWindow;->mAnchor:Lcom/android/camera/ui/Texture;

    .line 59
    iput p2, p0, Lcom/android/camera/ui/PopupWindow;->mAnchorOffset:I

    .line 60
    return-void
.end method

.method public setAnchorPosition(I)V
    .locals 0
    .parameter "yoffset"

    .prologue
    .line 104
    iput p1, p0, Lcom/android/camera/ui/PopupWindow;->mAnchorPosition:I

    .line 105
    return-void
.end method

.method public setBackground(Lcom/android/camera/ui/FrameTexture;)V
    .locals 2
    .parameter "background"

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/PopupWindow;->mBackground:Lcom/android/camera/ui/FrameTexture;

    if-ne p1, v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/PopupWindow;->mBackground:Lcom/android/camera/ui/FrameTexture;

    .line 49
    if-eqz p1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/PopupWindow;->mBackground:Lcom/android/camera/ui/FrameTexture;

    invoke-virtual {v0}, Lcom/android/camera/ui/FrameTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PopupWindow;->setPaddings(Landroid/graphics/Rect;)V

    .line 54
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/PopupWindow;->invalidate()V

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/camera/ui/PopupWindow;->setPaddings(IIII)V

    goto :goto_1
.end method

.method public setContent(Lcom/android/camera/ui/GLView;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/ui/PopupWindow;->mRotatePane:Lcom/android/camera/ui/RotatePane;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotatePane;->setContent(Lcom/android/camera/ui/GLView;)V

    .line 153
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 184
    sparse-switch p1, :sswitch_data_0

    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/PopupWindow;->mRotatePane:Lcom/android/camera/ui/RotatePane;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotatePane;->setOrientation(I)V

    .line 198
    :goto_0
    return-void

    .line 186
    :sswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/PopupWindow;->mRotatePane:Lcom/android/camera/ui/RotatePane;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotatePane;->setOrientation(I)V

    goto :goto_0

    .line 189
    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/PopupWindow;->mRotatePane:Lcom/android/camera/ui/RotatePane;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotatePane;->setOrientation(I)V

    goto :goto_0

    .line 192
    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/PopupWindow;->mRotatePane:Lcom/android/camera/ui/RotatePane;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotatePane;->setOrientation(I)V

    goto :goto_0

    .line 184
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method
