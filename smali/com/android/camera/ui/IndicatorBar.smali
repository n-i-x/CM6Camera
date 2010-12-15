.class public Lcom/android/camera/ui/IndicatorBar;
.super Lcom/android/camera/ui/GLView;
.source "IndicatorBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/IndicatorBar$1;,
        Lcom/android/camera/ui/IndicatorBar$OnItemSelectedListener;,
        Lcom/android/camera/ui/IndicatorBar$Background;
    }
.end annotation


# static fields
.field public static final INDEX_NONE:I = -0x1


# instance fields
.field private mActivated:Z

.field private mBackground:Lcom/android/camera/ui/NinePatchTexture;

.field private mHighlight:Lcom/android/camera/ui/NinePatchTexture;

.field private mSelectedIndex:I

.field private mSelectedListener:Lcom/android/camera/ui/IndicatorBar$OnItemSelectedListener;

.field private mSelectionChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Lcom/android/camera/ui/GLView;-><init>()V

    .line 32
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/IndicatorBar;->mSelectedIndex:I

    .line 35
    iput-boolean v2, p0, Lcom/android/camera/ui/IndicatorBar;->mActivated:Z

    .line 37
    iput-boolean v2, p0, Lcom/android/camera/ui/IndicatorBar;->mSelectionChanged:Z

    .line 61
    new-instance v0, Lcom/android/camera/ui/IndicatorBar$Background;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/IndicatorBar$Background;-><init>(Lcom/android/camera/ui/IndicatorBar;Lcom/android/camera/ui/IndicatorBar$1;)V

    .line 62
    .local v0, background:Lcom/android/camera/ui/GLView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLView;->setVisibility(I)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorBar;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/IndicatorBar;)Lcom/android/camera/ui/NinePatchTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorBar;->mBackground:Lcom/android/camera/ui/NinePatchTexture;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/IndicatorBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/camera/ui/IndicatorBar;->mActivated:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/IndicatorBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/camera/ui/IndicatorBar;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/IndicatorBar;)Lcom/android/camera/ui/NinePatchTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorBar;->mHighlight:Lcom/android/camera/ui/NinePatchTexture;

    return-object v0
.end method

.method private setSelectedItem(Lcom/android/camera/ui/GLView;I)V
    .locals 1
    .parameter "view"
    .parameter "index"

    .prologue
    .line 131
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/camera/ui/GLView;->mEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/IndicatorBar;->mSelectedIndex:I

    if-ne p2, v0, :cond_2

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/IndicatorBar;->mSelectionChanged:Z

    .line 133
    iput p2, p0, Lcom/android/camera/ui/IndicatorBar;->mSelectedIndex:I

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorBar;->mSelectedListener:Lcom/android/camera/ui/IndicatorBar$OnItemSelectedListener;

    if-eqz v0, :cond_3

    .line 135
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 136
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorBar;->mSelectedListener:Lcom/android/camera/ui/IndicatorBar$OnItemSelectedListener;

    invoke-interface {v0}, Lcom/android/camera/ui/IndicatorBar$OnItemSelectedListener;->onNothingSelected()V

    .line 141
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorBar;->invalidate()V

    goto :goto_0

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorBar;->mSelectedListener:Lcom/android/camera/ui/IndicatorBar$OnItemSelectedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/IndicatorBar$OnItemSelectedListener;->onItemSelected(Lcom/android/camera/ui/GLView;I)V

    goto :goto_1
.end method


# virtual methods
.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/IndicatorBar;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/android/camera/ui/IndicatorBar;->mSelectedIndex:I

    return v0
.end method

.method public isActivated()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/camera/ui/IndicatorBar;->mActivated:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 114
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/camera/ui/IndicatorBar;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    sub-int v12, p4, p2

    sub-int v13, p5, p3

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/camera/ui/GLView;->layout(IIII)V

    .line 116
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorBar;->getComponentCount()I

    move-result v3

    .line 117
    .local v3, count:I
    iget-object v6, p0, Lcom/android/camera/ui/IndicatorBar;->mPaddings:Landroid/graphics/Rect;

    .line 118
    .local v6, p:Landroid/graphics/Rect;
    sub-int v9, p5, p3

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v9, v10

    .line 119
    .local v0, cBottom:I
    sub-int v9, p4, p2

    iget v10, v6, Landroid/graphics/Rect;->right:I

    sub-int v2, v9, v10

    .line 120
    .local v2, cRight:I
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorBar;->mPaddings:Landroid/graphics/Rect;

    iget v8, v9, Landroid/graphics/Rect;->top:I

    .line 121
    .local v8, yoffset:I
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorBar;->mPaddings:Landroid/graphics/Rect;

    iget v7, v9, Landroid/graphics/Rect;->left:I

    .line 122
    .local v7, xoffset:I
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 123
    sub-int v9, v0, v8

    sub-int v10, v3, v4

    div-int v1, v9, v10

    .line 124
    .local v1, cHeight:I
    add-int v5, v8, v1

    .line 125
    .local v5, nextYoffset:I
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/IndicatorBar;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v9

    invoke-virtual {v9, v7, v8, v2, v5}, Lcom/android/camera/ui/GLView;->layout(IIII)V

    .line 126
    move v8, v5

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 128
    .end local v1           #cHeight:I
    .end local v5           #nextYoffset:I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v6, 0x0

    .line 96
    const/4 v4, 0x0

    .line 97
    .local v4, width:I
    const/4 v1, 0x0

    .line 98
    .local v1, height:I
    const/4 v2, 0x1

    .local v2, i:I
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorBar;->getComponentCount()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 99
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/IndicatorBar;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v0

    .line 100
    .local v0, component:Lcom/android/camera/ui/GLView;
    invoke-virtual {v0, v6, v6}, Lcom/android/camera/ui/GLView;->measure(II)V

    .line 102
    invoke-virtual {v0}, Lcom/android/camera/ui/GLView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 103
    invoke-virtual {v0}, Lcom/android/camera/ui/GLView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v1, v5

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v0           #component:Lcom/android/camera/ui/GLView;
    :cond_0
    new-instance v5, Lcom/android/camera/ui/MeasureHelper;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/MeasureHelper;-><init>(Lcom/android/camera/ui/GLView;)V

    invoke-virtual {v5, v4, v1}, Lcom/android/camera/ui/MeasureHelper;->setPreferredContentSize(II)Lcom/android/camera/ui/MeasureHelper;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/android/camera/ui/MeasureHelper;->measure(II)V

    .line 108
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 180
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    move v4, v5

    .line 199
    :goto_1
    return v4

    .line 182
    :pswitch_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/camera/ui/IndicatorBar;->mSelectionChanged:Z

    .line 183
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/IndicatorBar;->setActivated(Z)V

    .line 185
    :pswitch_1
    const/4 v1, 0x1

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorBar;->getComponentCount()I

    move-result v2

    .local v2, n:I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/IndicatorBar;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v0

    .line 187
    .local v0, component:Lcom/android/camera/ui/GLView;
    iget-object v4, v0, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v4, :cond_1

    .line 188
    sub-int v4, v1, v5

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/IndicatorBar;->setSelectedItem(Lcom/android/camera/ui/GLView;I)V

    move v4, v5

    .line 189
    goto :goto_1

    .line 185
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 192
    .end local v0           #component:Lcom/android/camera/ui/GLView;
    :cond_2
    invoke-direct {p0, v7, v6}, Lcom/android/camera/ui/IndicatorBar;->setSelectedItem(Lcom/android/camera/ui/GLView;I)V

    goto :goto_0

    .line 195
    .end local v1           #i:I
    .end local v2           #n:I
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/camera/ui/IndicatorBar;->mSelectionChanged:Z

    if-nez v4, :cond_0

    .line 196
    invoke-direct {p0, v7, v6}, Lcom/android/camera/ui/IndicatorBar;->setSelectedItem(Lcom/android/camera/ui/GLView;I)V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public overrideSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 67
    const/4 v0, 0x1

    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorBar;->getComponentCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorBar;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/AbstractIndicator;

    .line 69
    .local v1, indicator:Lcom/android/camera/ui/AbstractIndicator;
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/AbstractIndicator;->overrideSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v1           #indicator:Lcom/android/camera/ui/AbstractIndicator;
    :cond_0
    return-void
.end method

.method public reloadPreferences()V
    .locals 3

    .prologue
    .line 203
    const/4 v0, 0x1

    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorBar;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorBar;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/AbstractIndicator;

    invoke-virtual {v2}, Lcom/android/camera/ui/AbstractIndicator;->reloadPreferences()V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    return-void
.end method

.method public setActivated(Z)V
    .locals 8
    .parameter "activated"

    .prologue
    const-wide/16 v6, 0xc8

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 150
    iget-boolean v2, p0, Lcom/android/camera/ui/IndicatorBar;->mActivated:Z

    if-ne p1, v2, :cond_0

    .line 165
    :goto_0
    return-void

    .line 151
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/IndicatorBar;->mActivated:Z

    .line 152
    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/IndicatorBar;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v1

    .line 154
    .local v1, background:Lcom/android/camera/ui/GLView;
    invoke-virtual {v1, v3}, Lcom/android/camera/ui/GLView;->setVisibility(I)V

    .line 155
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 156
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 157
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/GLView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 159
    .end local v0           #anim:Landroid/view/animation/AlphaAnimation;
    .end local v1           #background:Lcom/android/camera/ui/GLView;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/IndicatorBar;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v1

    .line 160
    .restart local v1       #background:Lcom/android/camera/ui/GLView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/GLView;->setVisibility(I)V

    .line 161
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 162
    .restart local v0       #anim:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 163
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/GLView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setBackground(Lcom/android/camera/ui/NinePatchTexture;)V
    .locals 2
    .parameter "background"

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorBar;->mBackground:Lcom/android/camera/ui/NinePatchTexture;

    if-ne v0, p1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/IndicatorBar;->mBackground:Lcom/android/camera/ui/NinePatchTexture;

    .line 80
    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {p1}, Lcom/android/camera/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorBar;->setPaddings(Landroid/graphics/Rect;)V

    .line 85
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorBar;->invalidate()V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/camera/ui/IndicatorBar;->setPaddings(IIII)V

    goto :goto_1
.end method

.method public setHighlight(Lcom/android/camera/ui/NinePatchTexture;)V
    .locals 1
    .parameter "highlight"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorBar;->mHighlight:Lcom/android/camera/ui/NinePatchTexture;

    if-ne v0, p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/IndicatorBar;->mHighlight:Lcom/android/camera/ui/NinePatchTexture;

    .line 91
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorBar;->invalidate()V

    goto :goto_0
.end method

.method public setOnItemSelectedListener(Lcom/android/camera/ui/IndicatorBar$OnItemSelectedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/camera/ui/IndicatorBar;->mSelectedListener:Lcom/android/camera/ui/IndicatorBar$OnItemSelectedListener;

    .line 75
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 209
    const/4 v0, 0x1

    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorBar;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorBar;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/AbstractIndicator;

    invoke-virtual {v2, p1}, Lcom/android/camera/ui/AbstractIndicator;->setOrientation(I)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 145
    iget v0, p0, Lcom/android/camera/ui/IndicatorBar;->mSelectedIndex:I

    if-ne p1, v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/IndicatorBar;->setSelectedItem(Lcom/android/camera/ui/GLView;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/IndicatorBar;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v0

    goto :goto_1
.end method
