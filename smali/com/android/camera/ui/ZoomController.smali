.class public Lcom/android/camera/ui/ZoomController;
.super Lcom/android/camera/ui/GLView;
.source "ZoomController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ZoomController$ZoomListener;
    }
.end annotation


# static fields
.field private static final HORIZONTAL_PADDING:I = 0x3

.field private static final INVALID_POSITION:I = 0x7fffffff

.field private static final LABEL_COLOR:I = -0x1

.field private static final LABEL_FONT_SIZE:F = 11.0f

.field private static final MINIMAL_HEIGHT:I = 0x96

.field private static final TOLERANCE_RADIUS:F = 30.0f

.field private static final VERTICAL_PADDING:I = 0x3

.field private static sBackground:Lcom/android/camera/ui/NinePatchTexture;

.field private static sFineTickMark:Lcom/android/camera/ui/Texture;

.field private static sHorizontalPadding:I

.field private static sLabelSize:F

.field private static sMinimalHeight:I

.field private static sSlider:Lcom/android/camera/ui/Texture;

.field private static sTickMark:Lcom/android/camera/ui/Texture;

.field private static sToleranceRadius:F

.field private static sVerticalPadding:I

.field private static final sZoomFormat:Ljava/text/DecimalFormat;


# instance fields
.field private mFineTickStep:I

.field private mIndex:I

.field private mLabelStep:I

.field private mMaxLabelHeight:I

.field private mMaxLabelWidth:I

.field private mRatios:[F

.field private mSliderBottom:I

.field private mSliderLeft:I

.field private mSliderPosition:I

.field private mSliderTop:I

.field private mTickLabels:[Lcom/android/camera/ui/StringTexture;

.field private mValueGap:F

.field private mZoomListener:Lcom/android/camera/ui/ZoomController$ZoomListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#x"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/ZoomController;->sZoomFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/camera/ui/GLView;-><init>()V

    .line 69
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/camera/ui/ZoomController;->mSliderPosition:I

    .line 78
    invoke-static {p1}, Lcom/android/camera/ui/ZoomController;->initializeStaticVariable(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method private getLabelStep(I)I
    .locals 3
    .parameter "valueCount"

    .prologue
    const/4 v2, 0x5

    .line 190
    if-ge p1, v2, :cond_0

    const/4 v1, 0x1

    .line 192
    :goto_0
    return v1

    .line 191
    :cond_0
    div-int/lit8 v0, p1, 0x5

    .line 192
    .local v0, step:I
    :goto_1
    div-int v1, p1, v0

    if-gt v1, v2, :cond_1

    move v1, v0

    goto :goto_0

    .line 191
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static initializeStaticVariable(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x3

    .line 98
    sget-object v0, Lcom/android/camera/ui/ZoomController;->sBackground:Lcom/android/camera/ui/NinePatchTexture;

    if-eqz v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 100
    :cond_0
    const/high16 v0, 0x4130

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;F)F

    move-result v0

    sput v0, Lcom/android/camera/ui/ZoomController;->sLabelSize:F

    .line 101
    invoke-static {p0, v1}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/ZoomController;->sHorizontalPadding:I

    .line 102
    invoke-static {p0, v1}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/ZoomController;->sVerticalPadding:I

    .line 103
    const/16 v0, 0x96

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/ZoomController;->sMinimalHeight:I

    .line 104
    const/high16 v0, 0x41f0

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;F)F

    move-result v0

    sput v0, Lcom/android/camera/ui/ZoomController;->sToleranceRadius:F

    .line 106
    new-instance v0, Lcom/android/camera/ui/NinePatchTexture;

    const v1, 0x7f02004c

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/camera/ui/ZoomController;->sBackground:Lcom/android/camera/ui/NinePatchTexture;

    .line 107
    new-instance v0, Lcom/android/camera/ui/ResourceTexture;

    const v1, 0x7f02004e

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/camera/ui/ZoomController;->sSlider:Lcom/android/camera/ui/Texture;

    .line 108
    new-instance v0, Lcom/android/camera/ui/ResourceTexture;

    const v1, 0x7f02004f

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/camera/ui/ZoomController;->sTickMark:Lcom/android/camera/ui/Texture;

    .line 109
    new-instance v0, Lcom/android/camera/ui/ResourceTexture;

    const v1, 0x7f02004d

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/camera/ui/ZoomController;->sFineTickMark:Lcom/android/camera/ui/Texture;

    goto :goto_0
.end method

.method private onSliderMoved(IZ)V
    .locals 5
    .parameter "position"
    .parameter "isMoving"

    .prologue
    .line 82
    iget v1, p0, Lcom/android/camera/ui/ZoomController;->mSliderTop:I

    iget v2, p0, Lcom/android/camera/ui/ZoomController;->mSliderBottom:I

    sget-object v3, Lcom/android/camera/ui/ZoomController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v3}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {p1, v1, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    .line 84
    iput p1, p0, Lcom/android/camera/ui/ZoomController;->mSliderPosition:I

    .line 85
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomController;->invalidate()V

    .line 87
    iget-object v1, p0, Lcom/android/camera/ui/ZoomController;->mRatios:[F

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ZoomController;->mSliderTop:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ZoomController;->mValueGap:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v0, v1, v2

    .line 89
    .local v0, index:I
    iget v1, p0, Lcom/android/camera/ui/ZoomController;->mIndex:I

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_1

    .line 90
    :cond_0
    iput v0, p0, Lcom/android/camera/ui/ZoomController;->mIndex:I

    .line 91
    iget-object v1, p0, Lcom/android/camera/ui/ZoomController;->mZoomListener:Lcom/android/camera/ui/ZoomController$ZoomListener;

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/camera/ui/ZoomController;->mZoomListener:Lcom/android/camera/ui/ZoomController$ZoomListener;

    iget v2, p0, Lcom/android/camera/ui/ZoomController;->mIndex:I

    iget-object v3, p0, Lcom/android/camera/ui/ZoomController;->mRatios:[F

    iget v4, p0, Lcom/android/camera/ui/ZoomController;->mIndex:I

    aget v3, v3, v4

    invoke-interface {v1, v2, v3, p2}, Lcom/android/camera/ui/ZoomController$ZoomListener;->onZoomChanged(IFZ)V

    .line 95
    :cond_1
    return-void
.end method

.method private renderSlider(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 8
    .parameter "root"
    .parameter "gl"

    .prologue
    .line 260
    iget v1, p0, Lcom/android/camera/ui/ZoomController;->mSliderLeft:I

    .line 261
    .local v1, left:I
    iget v0, p0, Lcom/android/camera/ui/ZoomController;->mSliderBottom:I

    .line 262
    .local v0, bottom:I
    iget v2, p0, Lcom/android/camera/ui/ZoomController;->mSliderTop:I

    .line 263
    .local v2, top:I
    sget-object v3, Lcom/android/camera/ui/ZoomController;->sBackground:Lcom/android/camera/ui/NinePatchTexture;

    sget-object v4, Lcom/android/camera/ui/ZoomController;->sBackground:Lcom/android/camera/ui/NinePatchTexture;

    invoke-virtual {v4}, Lcom/android/camera/ui/NinePatchTexture;->getIntrinsicWidth()I

    move-result v4

    sub-int v5, v0, v2

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/NinePatchTexture;->setSize(II)V

    .line 264
    sget-object v3, Lcom/android/camera/ui/ZoomController;->sBackground:Lcom/android/camera/ui/NinePatchTexture;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/camera/ui/NinePatchTexture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 266
    iget v3, p0, Lcom/android/camera/ui/ZoomController;->mSliderPosition:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    .line 267
    sget-object v3, Lcom/android/camera/ui/ZoomController;->sSlider:Lcom/android/camera/ui/Texture;

    int-to-float v4, v2

    iget v5, p0, Lcom/android/camera/ui/ZoomController;->mValueGap:F

    iget-object v6, p0, Lcom/android/camera/ui/ZoomController;->mRatios:[F

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/ui/ZoomController;->mIndex:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, p1, v1, v4}, Lcom/android/camera/ui/Texture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    sget-object v3, Lcom/android/camera/ui/ZoomController;->sSlider:Lcom/android/camera/ui/Texture;

    iget v4, p0, Lcom/android/camera/ui/ZoomController;->mSliderPosition:I

    invoke-virtual {v3, p1, v1, v4}, Lcom/android/camera/ui/Texture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    goto :goto_0
.end method

.method private renderTicks(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 11
    .parameter "root"
    .parameter "gl"

    .prologue
    .line 221
    iget v0, p0, Lcom/android/camera/ui/ZoomController;->mValueGap:F

    .line 222
    .local v0, gap:F
    iget v3, p0, Lcom/android/camera/ui/ZoomController;->mLabelStep:I

    .line 225
    .local v3, labelStep:I
    iget-object v9, p0, Lcom/android/camera/ui/ZoomController;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget v10, p0, Lcom/android/camera/ui/ZoomController;->mMaxLabelWidth:I

    add-int v7, v9, v10

    .line 226
    .local v7, xoffset:I
    iget v9, p0, Lcom/android/camera/ui/ZoomController;->mSliderBottom:I

    sget-object v10, Lcom/android/camera/ui/ZoomController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v10}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    int-to-float v8, v9

    .line 227
    .local v8, yoffset:F
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v9, p0, Lcom/android/camera/ui/ZoomController;->mTickLabels:[Lcom/android/camera/ui/StringTexture;

    array-length v4, v9

    .local v4, n:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 228
    iget-object v9, p0, Lcom/android/camera/ui/ZoomController;->mTickLabels:[Lcom/android/camera/ui/StringTexture;

    aget-object v5, v9, v2

    .line 229
    .local v5, t:Lcom/android/camera/ui/Texture;
    invoke-virtual {v5}, Lcom/android/camera/ui/Texture;->getWidth()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {v5}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float v10, v8, v10

    float-to-int v10, v10

    invoke-virtual {v5, p1, v9, v10}, Lcom/android/camera/ui/Texture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 231
    int-to-float v9, v3

    mul-float/2addr v9, v0

    sub-float/2addr v8, v9

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v5           #t:Lcom/android/camera/ui/Texture;
    :cond_0
    sget-object v6, Lcom/android/camera/ui/ZoomController;->sTickMark:Lcom/android/camera/ui/Texture;

    .line 236
    .local v6, tickMark:Lcom/android/camera/ui/Texture;
    sget v9, Lcom/android/camera/ui/ZoomController;->sHorizontalPadding:I

    add-int/2addr v7, v9

    .line 237
    iget v9, p0, Lcom/android/camera/ui/ZoomController;->mSliderBottom:I

    sget-object v10, Lcom/android/camera/ui/ZoomController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v10}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    int-to-float v8, v9

    .line 238
    invoke-virtual {v6}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v9

    div-int/lit8 v1, v9, 0x2

    .line 239
    .local v1, halfHeight:I
    const/4 v2, 0x0

    iget-object v9, p0, Lcom/android/camera/ui/ZoomController;->mTickLabels:[Lcom/android/camera/ui/StringTexture;

    array-length v4, v9

    :goto_1
    if-ge v2, v4, :cond_1

    .line 240
    int-to-float v9, v1

    sub-float v9, v8, v9

    float-to-int v9, v9

    invoke-virtual {v6, p1, v7, v9}, Lcom/android/camera/ui/Texture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 241
    int-to-float v9, v3

    mul-float/2addr v9, v0

    sub-float/2addr v8, v9

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 244
    :cond_1
    iget v9, p0, Lcom/android/camera/ui/ZoomController;->mFineTickStep:I

    if-lez v9, :cond_3

    .line 246
    sget-object v6, Lcom/android/camera/ui/ZoomController;->sFineTickMark:Lcom/android/camera/ui/Texture;

    .line 247
    sget-object v9, Lcom/android/camera/ui/ZoomController;->sTickMark:Lcom/android/camera/ui/Texture;

    invoke-virtual {v9}, Lcom/android/camera/ui/Texture;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Lcom/android/camera/ui/Texture;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    add-int/2addr v7, v9

    .line 248
    iget v9, p0, Lcom/android/camera/ui/ZoomController;->mSliderBottom:I

    sget-object v10, Lcom/android/camera/ui/ZoomController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v10}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    int-to-float v8, v9

    .line 249
    invoke-virtual {v6}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v9

    div-int/lit8 v1, v9, 0x2

    .line 250
    const/4 v2, 0x0

    iget-object v9, p0, Lcom/android/camera/ui/ZoomController;->mRatios:[F

    array-length v4, v9

    :goto_2
    if-ge v2, v4, :cond_3

    .line 251
    iget v9, p0, Lcom/android/camera/ui/ZoomController;->mLabelStep:I

    rem-int v9, v2, v9

    if-eqz v9, :cond_2

    .line 252
    int-to-float v9, v1

    sub-float v9, v8, v9

    float-to-int v9, v9

    invoke-virtual {v6, p1, v7, v9}, Lcom/android/camera/ui/Texture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 254
    :cond_2
    sub-float/2addr v8, v0

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 257
    :cond_3
    return-void
.end method

.method private withInToleranceRange(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x1

    .line 129
    iget v3, p0, Lcom/android/camera/ui/ZoomController;->mSliderLeft:I

    sget-object v4, Lcom/android/camera/ui/ZoomController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v4}, Lcom/android/camera/ui/Texture;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v1, v3

    .line 130
    .local v1, sx:F
    iget v3, p0, Lcom/android/camera/ui/ZoomController;->mSliderTop:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/ZoomController;->mRatios:[F

    array-length v4, v4

    sub-int/2addr v4, v6

    iget v5, p0, Lcom/android/camera/ui/ZoomController;->mIndex:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ui/ZoomController;->mValueGap:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sget-object v4, Lcom/android/camera/ui/ZoomController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v4}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float v2, v3, v4

    .line 132
    .local v2, sy:F
    invoke-static {p1, p2, v1, v2}, Lcom/android/camera/Util;->distance(FFFF)F

    move-result v0

    .line 133
    .local v0, dist:F
    sget v3, Lcom/android/camera/ui/ZoomController;->sToleranceRadius:F

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    move v3, v6

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/ZoomController;->mPaddings:Landroid/graphics/Rect;

    .line 117
    .local v2, p:Landroid/graphics/Rect;
    sub-int v3, p5, p3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    .line 118
    .local v0, height:I
    sget-object v3, Lcom/android/camera/ui/ZoomController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v3}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/ZoomController;->mMaxLabelHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 119
    .local v1, margin:I
    sub-int v3, v0, v1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/ZoomController;->mRatios:[F

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/ZoomController;->mValueGap:F

    .line 121
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/camera/ui/ZoomController;->mMaxLabelWidth:I

    add-int/2addr v3, v4

    sget v4, Lcom/android/camera/ui/ZoomController;->sHorizontalPadding:I

    add-int/2addr v3, v4

    sget-object v4, Lcom/android/camera/ui/ZoomController;->sTickMark:Lcom/android/camera/ui/Texture;

    invoke-virtual {v4}, Lcom/android/camera/ui/Texture;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lcom/android/camera/ui/ZoomController;->sHorizontalPadding:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/ZoomController;->mSliderLeft:I

    .line 124
    iget v3, v2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    sget-object v4, Lcom/android/camera/ui/ZoomController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v4}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/ZoomController;->mSliderTop:I

    .line 125
    iget v3, p0, Lcom/android/camera/ui/ZoomController;->mSliderTop:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    sget-object v4, Lcom/android/camera/ui/ZoomController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v4}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/ZoomController;->mSliderBottom:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 198
    iget-object v4, p0, Lcom/android/camera/ui/ZoomController;->mTickLabels:[Lcom/android/camera/ui/StringTexture;

    array-length v1, v4

    .line 199
    .local v1, labelCount:I
    iget-object v4, p0, Lcom/android/camera/ui/ZoomController;->mRatios:[F

    array-length v2, v4

    .line 201
    .local v2, ratioCount:I
    iget v4, p0, Lcom/android/camera/ui/ZoomController;->mMaxLabelHeight:I

    sget v5, Lcom/android/camera/ui/ZoomController;->sVerticalPadding:I

    add-int/2addr v4, v5

    const/4 v5, 0x1

    sub-int v5, v1, v5

    mul-int/2addr v4, v5

    mul-int/2addr v4, v2

    iget v5, p0, Lcom/android/camera/ui/ZoomController;->mLabelStep:I

    mul-int/2addr v5, v1

    div-int/2addr v4, v5

    sget-object v5, Lcom/android/camera/ui/ZoomController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v5}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/camera/ui/ZoomController;->mMaxLabelHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int v0, v4, v5

    .line 205
    .local v0, height:I
    iget v4, p0, Lcom/android/camera/ui/ZoomController;->mMaxLabelWidth:I

    sget v5, Lcom/android/camera/ui/ZoomController;->sHorizontalPadding:I

    add-int/2addr v4, v5

    sget-object v5, Lcom/android/camera/ui/ZoomController;->sTickMark:Lcom/android/camera/ui/Texture;

    invoke-virtual {v5}, Lcom/android/camera/ui/Texture;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/ZoomController;->sHorizontalPadding:I

    add-int/2addr v4, v5

    sget-object v5, Lcom/android/camera/ui/ZoomController;->sBackground:Lcom/android/camera/ui/NinePatchTexture;

    invoke-virtual {v5}, Lcom/android/camera/ui/NinePatchTexture;->getIntrinsicWidth()I

    move-result v5

    add-int v3, v4, v5

    .line 207
    .local v3, width:I
    sget v4, Lcom/android/camera/ui/ZoomController;->sMinimalHeight:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 209
    new-instance v4, Lcom/android/camera/ui/MeasureHelper;

    invoke-direct {v4, p0}, Lcom/android/camera/ui/MeasureHelper;-><init>(Lcom/android/camera/ui/GLView;)V

    invoke-virtual {v4, v3, v0}, Lcom/android/camera/ui/MeasureHelper;->setPreferredContentSize(II)Lcom/android/camera/ui/MeasureHelper;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/camera/ui/MeasureHelper;->measure(II)V

    .line 212
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const v5, 0x7fffffff

    const/4 v4, 0x1

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 139
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 140
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v2, v4

    .line 158
    :goto_0
    return v2

    .line 142
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ZoomController;->withInToleranceRange(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    sget-object v2, Lcom/android/camera/ui/ZoomController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v2}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v4}, Lcom/android/camera/ui/ZoomController;->onSliderMoved(IZ)V

    :cond_0
    move v2, v4

    .line 145
    goto :goto_0

    .line 147
    :pswitch_1
    iget v2, p0, Lcom/android/camera/ui/ZoomController;->mSliderPosition:I

    if-eq v2, v5, :cond_1

    .line 148
    sget-object v2, Lcom/android/camera/ui/ZoomController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v2}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v4}, Lcom/android/camera/ui/ZoomController;->onSliderMoved(IZ)V

    :cond_1
    move v2, v4

    .line 150
    goto :goto_0

    .line 152
    :pswitch_2
    iget v2, p0, Lcom/android/camera/ui/ZoomController;->mSliderPosition:I

    if-eq v2, v5, :cond_2

    .line 153
    sget-object v2, Lcom/android/camera/ui/ZoomController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v2}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/ZoomController;->onSliderMoved(IZ)V

    .line 154
    iput v5, p0, Lcom/android/camera/ui/ZoomController;->mSliderPosition:I

    :cond_2
    move v2, v4

    .line 156
    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected render(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 0
    .parameter "root"
    .parameter "gl"

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ZoomController;->renderTicks(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ZoomController;->renderSlider(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 218
    return-void
.end method

.method public setAvailableZoomRatios([F)V
    .locals 9
    .parameter "ratios"

    .prologue
    .line 162
    iget-object v5, p0, Lcom/android/camera/ui/ZoomController;->mRatios:[F

    invoke-static {p1, v5}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 187
    :goto_0
    return-void

    .line 163
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/ZoomController;->mRatios:[F

    .line 164
    array-length v5, p1

    invoke-direct {p0, v5}, Lcom/android/camera/ui/ZoomController;->getLabelStep(I)I

    move-result v5

    iput v5, p0, Lcom/android/camera/ui/ZoomController;->mLabelStep:I

    .line 165
    array-length v5, p1

    iget v6, p0, Lcom/android/camera/ui/ZoomController;->mLabelStep:I

    add-int/2addr v5, v6

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/ui/ZoomController;->mLabelStep:I

    div-int/2addr v5, v6

    new-array v5, v5, [Lcom/android/camera/ui/StringTexture;

    iput-object v5, p0, Lcom/android/camera/ui/ZoomController;->mTickLabels:[Lcom/android/camera/ui/StringTexture;

    .line 167
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v5, p0, Lcom/android/camera/ui/ZoomController;->mTickLabels:[Lcom/android/camera/ui/StringTexture;

    array-length v4, v5

    .local v4, n:I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 168
    iget-object v5, p0, Lcom/android/camera/ui/ZoomController;->mTickLabels:[Lcom/android/camera/ui/StringTexture;

    sget-object v6, Lcom/android/camera/ui/ZoomController;->sZoomFormat:Ljava/text/DecimalFormat;

    iget v7, p0, Lcom/android/camera/ui/ZoomController;->mLabelStep:I

    mul-int/2addr v7, v0

    aget v7, p1, v7

    float-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/android/camera/ui/ZoomController;->sLabelSize:F

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Lcom/android/camera/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/camera/ui/StringTexture;

    move-result-object v6

    aput-object v6, v5, v0

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 172
    :cond_1
    iget v5, p0, Lcom/android/camera/ui/ZoomController;->mLabelStep:I

    rem-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/camera/ui/ZoomController;->mLabelStep:I

    div-int/lit8 v5, v5, 0x3

    :goto_2
    iput v5, p0, Lcom/android/camera/ui/ZoomController;->mFineTickStep:I

    .line 176
    const/4 v2, 0x0

    .line 177
    .local v2, maxHeight:I
    const/4 v3, 0x0

    .line 178
    .local v3, maxWidth:I
    iget-object v5, p0, Lcom/android/camera/ui/ZoomController;->mTickLabels:[Lcom/android/camera/ui/StringTexture;

    array-length v1, v5

    .line 179
    .local v1, labelCount:I
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_4

    .line 180
    iget-object v5, p0, Lcom/android/camera/ui/ZoomController;->mTickLabels:[Lcom/android/camera/ui/StringTexture;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/camera/ui/StringTexture;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 181
    iget-object v5, p0, Lcom/android/camera/ui/ZoomController;->mTickLabels:[Lcom/android/camera/ui/StringTexture;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/camera/ui/StringTexture;->getHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 172
    .end local v1           #labelCount:I
    .end local v2           #maxHeight:I
    .end local v3           #maxWidth:I
    :cond_2
    iget v5, p0, Lcom/android/camera/ui/ZoomController;->mLabelStep:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3

    iget v5, p0, Lcom/android/camera/ui/ZoomController;->mLabelStep:I

    div-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 184
    .restart local v1       #labelCount:I
    .restart local v2       #maxHeight:I
    .restart local v3       #maxWidth:I
    :cond_4
    iput v2, p0, Lcom/android/camera/ui/ZoomController;->mMaxLabelHeight:I

    .line 185
    iput v3, p0, Lcom/android/camera/ui/ZoomController;->mMaxLabelWidth:I

    .line 186
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomController;->invalidate()V

    goto :goto_0
.end method

.method public setZoomIndex(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 279
    iget-object v0, p0, Lcom/android/camera/ui/ZoomController;->mRatios:[F

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v4, v0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    .line 280
    iget v0, p0, Lcom/android/camera/ui/ZoomController;->mIndex:I

    if-ne v0, p1, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/ZoomController;->mIndex:I

    .line 282
    iget-object v0, p0, Lcom/android/camera/ui/ZoomController;->mZoomListener:Lcom/android/camera/ui/ZoomController$ZoomListener;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/camera/ui/ZoomController;->mZoomListener:Lcom/android/camera/ui/ZoomController$ZoomListener;

    iget v1, p0, Lcom/android/camera/ui/ZoomController;->mIndex:I

    iget-object v2, p0, Lcom/android/camera/ui/ZoomController;->mRatios:[F

    iget v3, p0, Lcom/android/camera/ui/ZoomController;->mIndex:I

    aget v2, v2, v3

    invoke-interface {v0, v1, v2, v4}, Lcom/android/camera/ui/ZoomController$ZoomListener;->onZoomChanged(IFZ)V

    goto :goto_0
.end method

.method public setZoomListener(Lcom/android/camera/ui/ZoomController$ZoomListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/camera/ui/ZoomController;->mZoomListener:Lcom/android/camera/ui/ZoomController$ZoomListener;

    .line 276
    return-void
.end method
