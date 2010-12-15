.class public Lcom/android/camera/ui/SettingsController;
.super Lcom/android/camera/ui/GLView;
.source "SettingsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SettingsController$ValueListener;
    }
.end annotation


# static fields
.field private static final HORIZONTAL_PADDING:I = 0x1

.field private static final INVALID_POSITION:I = 0x7fffffff

.field private static final LABEL_COLOR:I = -0x1

.field private static final LABEL_FONT_SIZE:F = 10.0f

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


# instance fields
.field private mFineTickStep:I

.field private mIndex:I

.field private mLabelStep:I

.field private mMaxLabelHeight:I

.field private mMaxLabelWidth:I

.field private mSliderBottom:I

.field private mSliderLeft:I

.field private mSliderPosition:I

.field private mSliderTop:I

.field private mTickLabels:[Lcom/android/camera/ui/StringTexture;

.field private mValueGap:F

.field private mValueListener:Lcom/android/camera/ui/SettingsController$ValueListener;

.field private mValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/camera/ui/GLView;-><init>()V

    .line 68
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/camera/ui/SettingsController;->mSliderPosition:I

    .line 77
    invoke-static {p1}, Lcom/android/camera/ui/SettingsController;->initializeStaticVariable(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method private getLabelStep(I)I
    .locals 3
    .parameter "valueCount"

    .prologue
    const/4 v2, 0x5

    .line 189
    if-ge p1, v2, :cond_0

    const/4 v1, 0x1

    .line 191
    :goto_0
    return v1

    .line 190
    :cond_0
    div-int/lit8 v0, p1, 0x5

    .line 191
    .local v0, step:I
    :goto_1
    div-int v1, p1, v0

    if-gt v1, v2, :cond_1

    move v1, v0

    goto :goto_0

    .line 190
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static initializeStaticVariable(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 97
    sget-object v0, Lcom/android/camera/ui/SettingsController;->sBackground:Lcom/android/camera/ui/NinePatchTexture;

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 99
    :cond_0
    const/high16 v0, 0x4120

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;F)F

    move-result v0

    sput v0, Lcom/android/camera/ui/SettingsController;->sLabelSize:F

    .line 100
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/SettingsController;->sHorizontalPadding:I

    .line 101
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/SettingsController;->sVerticalPadding:I

    .line 102
    const/16 v0, 0x96

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/SettingsController;->sMinimalHeight:I

    .line 103
    const/high16 v0, 0x41f0

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;F)F

    move-result v0

    sput v0, Lcom/android/camera/ui/SettingsController;->sToleranceRadius:F

    .line 105
    new-instance v0, Lcom/android/camera/ui/NinePatchTexture;

    const v1, 0x7f020048

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/camera/ui/SettingsController;->sBackground:Lcom/android/camera/ui/NinePatchTexture;

    .line 106
    new-instance v0, Lcom/android/camera/ui/ResourceTexture;

    const v1, 0x7f020049

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/camera/ui/SettingsController;->sSlider:Lcom/android/camera/ui/Texture;

    .line 107
    new-instance v0, Lcom/android/camera/ui/ResourceTexture;

    const v1, 0x7f02004f

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/camera/ui/SettingsController;->sTickMark:Lcom/android/camera/ui/Texture;

    .line 108
    new-instance v0, Lcom/android/camera/ui/ResourceTexture;

    const v1, 0x7f02004d

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/camera/ui/SettingsController;->sFineTickMark:Lcom/android/camera/ui/Texture;

    goto :goto_0
.end method

.method private onSliderMoved(IZ)V
    .locals 5
    .parameter "position"
    .parameter "isMoving"

    .prologue
    .line 81
    iget v1, p0, Lcom/android/camera/ui/SettingsController;->mSliderTop:I

    iget v2, p0, Lcom/android/camera/ui/SettingsController;->mSliderBottom:I

    sget-object v3, Lcom/android/camera/ui/SettingsController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v3}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {p1, v1, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    .line 83
    iput p1, p0, Lcom/android/camera/ui/SettingsController;->mSliderPosition:I

    .line 84
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingsController;->invalidate()V

    .line 86
    iget-object v1, p0, Lcom/android/camera/ui/SettingsController;->mValues:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/SettingsController;->mSliderTop:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/SettingsController;->mValueGap:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v0, v1, v2

    .line 88
    .local v0, index:I
    iget v1, p0, Lcom/android/camera/ui/SettingsController;->mIndex:I

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_1

    .line 89
    :cond_0
    iput v0, p0, Lcom/android/camera/ui/SettingsController;->mIndex:I

    .line 90
    iget-object v1, p0, Lcom/android/camera/ui/SettingsController;->mValueListener:Lcom/android/camera/ui/SettingsController$ValueListener;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/camera/ui/SettingsController;->mValueListener:Lcom/android/camera/ui/SettingsController$ValueListener;

    iget v2, p0, Lcom/android/camera/ui/SettingsController;->mIndex:I

    iget-object v3, p0, Lcom/android/camera/ui/SettingsController;->mValues:[Ljava/lang/String;

    iget v4, p0, Lcom/android/camera/ui/SettingsController;->mIndex:I

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3, p2}, Lcom/android/camera/ui/SettingsController$ValueListener;->onValueChanged(ILjava/lang/String;Z)V

    .line 94
    :cond_1
    return-void
.end method

.method private renderSlider(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 8
    .parameter "root"
    .parameter "gl"

    .prologue
    .line 259
    iget v1, p0, Lcom/android/camera/ui/SettingsController;->mSliderLeft:I

    .line 260
    .local v1, left:I
    iget v0, p0, Lcom/android/camera/ui/SettingsController;->mSliderBottom:I

    .line 261
    .local v0, bottom:I
    iget v2, p0, Lcom/android/camera/ui/SettingsController;->mSliderTop:I

    .line 262
    .local v2, top:I
    sget-object v3, Lcom/android/camera/ui/SettingsController;->sBackground:Lcom/android/camera/ui/NinePatchTexture;

    sget-object v4, Lcom/android/camera/ui/SettingsController;->sBackground:Lcom/android/camera/ui/NinePatchTexture;

    invoke-virtual {v4}, Lcom/android/camera/ui/NinePatchTexture;->getIntrinsicWidth()I

    move-result v4

    sub-int v5, v0, v2

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/NinePatchTexture;->setSize(II)V

    .line 263
    sget-object v3, Lcom/android/camera/ui/SettingsController;->sBackground:Lcom/android/camera/ui/NinePatchTexture;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/camera/ui/NinePatchTexture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 265
    iget v3, p0, Lcom/android/camera/ui/SettingsController;->mSliderPosition:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    .line 266
    sget-object v3, Lcom/android/camera/ui/SettingsController;->sSlider:Lcom/android/camera/ui/Texture;

    int-to-float v4, v2

    iget v5, p0, Lcom/android/camera/ui/SettingsController;->mValueGap:F

    iget-object v6, p0, Lcom/android/camera/ui/SettingsController;->mValues:[Ljava/lang/String;

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/ui/SettingsController;->mIndex:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, p1, v1, v4}, Lcom/android/camera/ui/Texture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    sget-object v3, Lcom/android/camera/ui/SettingsController;->sSlider:Lcom/android/camera/ui/Texture;

    iget v4, p0, Lcom/android/camera/ui/SettingsController;->mSliderPosition:I

    invoke-virtual {v3, p1, v1, v4}, Lcom/android/camera/ui/Texture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    goto :goto_0
.end method

.method private renderTicks(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 11
    .parameter "root"
    .parameter "gl"

    .prologue
    .line 220
    iget v0, p0, Lcom/android/camera/ui/SettingsController;->mValueGap:F

    .line 221
    .local v0, gap:F
    iget v3, p0, Lcom/android/camera/ui/SettingsController;->mLabelStep:I

    .line 224
    .local v3, labelStep:I
    iget-object v9, p0, Lcom/android/camera/ui/SettingsController;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget v10, p0, Lcom/android/camera/ui/SettingsController;->mMaxLabelWidth:I

    add-int v7, v9, v10

    .line 225
    .local v7, xoffset:I
    iget v9, p0, Lcom/android/camera/ui/SettingsController;->mSliderBottom:I

    sget-object v10, Lcom/android/camera/ui/SettingsController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v10}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    int-to-float v8, v9

    .line 226
    .local v8, yoffset:F
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v9, p0, Lcom/android/camera/ui/SettingsController;->mTickLabels:[Lcom/android/camera/ui/StringTexture;

    array-length v4, v9

    .local v4, n:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 227
    iget-object v9, p0, Lcom/android/camera/ui/SettingsController;->mTickLabels:[Lcom/android/camera/ui/StringTexture;

    aget-object v5, v9, v2

    .line 228
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

    .line 230
    int-to-float v9, v3

    mul-float/2addr v9, v0

    sub-float/2addr v8, v9

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .end local v5           #t:Lcom/android/camera/ui/Texture;
    :cond_0
    sget-object v6, Lcom/android/camera/ui/SettingsController;->sTickMark:Lcom/android/camera/ui/Texture;

    .line 235
    .local v6, tickMark:Lcom/android/camera/ui/Texture;
    sget v9, Lcom/android/camera/ui/SettingsController;->sHorizontalPadding:I

    add-int/2addr v7, v9

    .line 236
    iget v9, p0, Lcom/android/camera/ui/SettingsController;->mSliderBottom:I

    sget-object v10, Lcom/android/camera/ui/SettingsController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v10}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    int-to-float v8, v9

    .line 237
    invoke-virtual {v6}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v9

    div-int/lit8 v1, v9, 0x2

    .line 238
    .local v1, halfHeight:I
    const/4 v2, 0x0

    iget-object v9, p0, Lcom/android/camera/ui/SettingsController;->mTickLabels:[Lcom/android/camera/ui/StringTexture;

    array-length v4, v9

    :goto_1
    if-ge v2, v4, :cond_1

    .line 239
    int-to-float v9, v1

    sub-float v9, v8, v9

    float-to-int v9, v9

    invoke-virtual {v6, p1, v7, v9}, Lcom/android/camera/ui/Texture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 240
    int-to-float v9, v3

    mul-float/2addr v9, v0

    sub-float/2addr v8, v9

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 243
    :cond_1
    iget v9, p0, Lcom/android/camera/ui/SettingsController;->mFineTickStep:I

    if-lez v9, :cond_3

    .line 245
    sget-object v6, Lcom/android/camera/ui/SettingsController;->sFineTickMark:Lcom/android/camera/ui/Texture;

    .line 246
    sget-object v9, Lcom/android/camera/ui/SettingsController;->sTickMark:Lcom/android/camera/ui/Texture;

    invoke-virtual {v9}, Lcom/android/camera/ui/Texture;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Lcom/android/camera/ui/Texture;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    add-int/2addr v7, v9

    .line 247
    iget v9, p0, Lcom/android/camera/ui/SettingsController;->mSliderBottom:I

    sget-object v10, Lcom/android/camera/ui/SettingsController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v10}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    int-to-float v8, v9

    .line 248
    invoke-virtual {v6}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v9

    div-int/lit8 v1, v9, 0x2

    .line 249
    const/4 v2, 0x0

    iget-object v9, p0, Lcom/android/camera/ui/SettingsController;->mValues:[Ljava/lang/String;

    array-length v4, v9

    :goto_2
    if-ge v2, v4, :cond_3

    .line 250
    iget v9, p0, Lcom/android/camera/ui/SettingsController;->mLabelStep:I

    rem-int v9, v2, v9

    if-eqz v9, :cond_2

    .line 251
    int-to-float v9, v1

    sub-float v9, v8, v9

    float-to-int v9, v9

    invoke-virtual {v6, p1, v7, v9}, Lcom/android/camera/ui/Texture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 253
    :cond_2
    sub-float/2addr v8, v0

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 256
    :cond_3
    return-void
.end method

.method private withInToleranceRange(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x1

    .line 128
    iget v3, p0, Lcom/android/camera/ui/SettingsController;->mSliderLeft:I

    sget-object v4, Lcom/android/camera/ui/SettingsController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v4}, Lcom/android/camera/ui/Texture;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v1, v3

    .line 129
    .local v1, sx:F
    iget v3, p0, Lcom/android/camera/ui/SettingsController;->mSliderTop:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/SettingsController;->mValues:[Ljava/lang/String;

    array-length v4, v4

    sub-int/2addr v4, v6

    iget v5, p0, Lcom/android/camera/ui/SettingsController;->mIndex:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ui/SettingsController;->mValueGap:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sget-object v4, Lcom/android/camera/ui/SettingsController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v4}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float v2, v3, v4

    .line 131
    .local v2, sy:F
    invoke-static {p1, p2, v1, v2}, Lcom/android/camera/Util;->distance(FFFF)F

    move-result v0

    .line 132
    .local v0, dist:F
    sget v3, Lcom/android/camera/ui/SettingsController;->sToleranceRadius:F

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
    .line 114
    if-nez p1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/SettingsController;->mPaddings:Landroid/graphics/Rect;

    .line 116
    .local v2, p:Landroid/graphics/Rect;
    sub-int v3, p5, p3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    .line 117
    .local v0, height:I
    sget-object v3, Lcom/android/camera/ui/SettingsController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v3}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/SettingsController;->mMaxLabelHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 118
    .local v1, margin:I
    sub-int v3, v0, v1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/SettingsController;->mValues:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/SettingsController;->mValueGap:F

    .line 120
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/camera/ui/SettingsController;->mMaxLabelWidth:I

    add-int/2addr v3, v4

    sget v4, Lcom/android/camera/ui/SettingsController;->sHorizontalPadding:I

    add-int/2addr v3, v4

    sget-object v4, Lcom/android/camera/ui/SettingsController;->sTickMark:Lcom/android/camera/ui/Texture;

    invoke-virtual {v4}, Lcom/android/camera/ui/Texture;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lcom/android/camera/ui/SettingsController;->sHorizontalPadding:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/SettingsController;->mSliderLeft:I

    .line 123
    iget v3, v2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    sget-object v4, Lcom/android/camera/ui/SettingsController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v4}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/SettingsController;->mSliderTop:I

    .line 124
    iget v3, p0, Lcom/android/camera/ui/SettingsController;->mSliderTop:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    sget-object v4, Lcom/android/camera/ui/SettingsController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v4}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/SettingsController;->mSliderBottom:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 197
    iget-object v4, p0, Lcom/android/camera/ui/SettingsController;->mTickLabels:[Lcom/android/camera/ui/StringTexture;

    array-length v1, v4

    .line 198
    .local v1, labelCount:I
    iget-object v4, p0, Lcom/android/camera/ui/SettingsController;->mValues:[Ljava/lang/String;

    array-length v2, v4

    .line 200
    .local v2, ratioCount:I
    iget v4, p0, Lcom/android/camera/ui/SettingsController;->mMaxLabelHeight:I

    sget v5, Lcom/android/camera/ui/SettingsController;->sVerticalPadding:I

    add-int/2addr v4, v5

    const/4 v5, 0x1

    sub-int v5, v1, v5

    mul-int/2addr v4, v5

    mul-int/2addr v4, v2

    iget v5, p0, Lcom/android/camera/ui/SettingsController;->mLabelStep:I

    mul-int/2addr v5, v1

    div-int/2addr v4, v5

    sget-object v5, Lcom/android/camera/ui/SettingsController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v5}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/camera/ui/SettingsController;->mMaxLabelHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int v0, v4, v5

    .line 204
    .local v0, height:I
    iget v4, p0, Lcom/android/camera/ui/SettingsController;->mMaxLabelWidth:I

    sget v5, Lcom/android/camera/ui/SettingsController;->sHorizontalPadding:I

    add-int/2addr v4, v5

    sget-object v5, Lcom/android/camera/ui/SettingsController;->sTickMark:Lcom/android/camera/ui/Texture;

    invoke-virtual {v5}, Lcom/android/camera/ui/Texture;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/SettingsController;->sHorizontalPadding:I

    add-int/2addr v4, v5

    sget-object v5, Lcom/android/camera/ui/SettingsController;->sBackground:Lcom/android/camera/ui/NinePatchTexture;

    invoke-virtual {v5}, Lcom/android/camera/ui/NinePatchTexture;->getIntrinsicWidth()I

    move-result v5

    add-int v3, v4, v5

    .line 206
    .local v3, width:I
    sget v4, Lcom/android/camera/ui/SettingsController;->sMinimalHeight:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 208
    new-instance v4, Lcom/android/camera/ui/MeasureHelper;

    invoke-direct {v4, p0}, Lcom/android/camera/ui/MeasureHelper;-><init>(Lcom/android/camera/ui/GLView;)V

    invoke-virtual {v4, v3, v0}, Lcom/android/camera/ui/MeasureHelper;->setPreferredContentSize(II)Lcom/android/camera/ui/MeasureHelper;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/camera/ui/MeasureHelper;->measure(II)V

    .line 211
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const v5, 0x7fffffff

    const/4 v4, 0x1

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 138
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 139
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v2, v4

    .line 157
    :goto_0
    return v2

    .line 141
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/SettingsController;->withInToleranceRange(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    sget-object v2, Lcom/android/camera/ui/SettingsController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v2}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v4}, Lcom/android/camera/ui/SettingsController;->onSliderMoved(IZ)V

    :cond_0
    move v2, v4

    .line 144
    goto :goto_0

    .line 146
    :pswitch_1
    iget v2, p0, Lcom/android/camera/ui/SettingsController;->mSliderPosition:I

    if-eq v2, v5, :cond_1

    .line 147
    sget-object v2, Lcom/android/camera/ui/SettingsController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v2}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v4}, Lcom/android/camera/ui/SettingsController;->onSliderMoved(IZ)V

    :cond_1
    move v2, v4

    .line 149
    goto :goto_0

    .line 151
    :pswitch_2
    iget v2, p0, Lcom/android/camera/ui/SettingsController;->mSliderPosition:I

    if-eq v2, v5, :cond_2

    .line 152
    sget-object v2, Lcom/android/camera/ui/SettingsController;->sSlider:Lcom/android/camera/ui/Texture;

    invoke-virtual {v2}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/SettingsController;->onSliderMoved(IZ)V

    .line 153
    iput v5, p0, Lcom/android/camera/ui/SettingsController;->mSliderPosition:I

    :cond_2
    move v2, v4

    .line 155
    goto :goto_0

    .line 139
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
    .line 215
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SettingsController;->renderTicks(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SettingsController;->renderSlider(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 217
    return-void
.end method

.method public setAvailableValues([Ljava/lang/String;)V
    .locals 9
    .parameter "values"

    .prologue
    .line 161
    iget-object v5, p0, Lcom/android/camera/ui/SettingsController;->mValues:[Ljava/lang/String;

    invoke-static {p1, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 186
    :goto_0
    return-void

    .line 162
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/SettingsController;->mValues:[Ljava/lang/String;

    .line 163
    array-length v5, p1

    invoke-direct {p0, v5}, Lcom/android/camera/ui/SettingsController;->getLabelStep(I)I

    move-result v5

    iput v5, p0, Lcom/android/camera/ui/SettingsController;->mLabelStep:I

    .line 164
    array-length v5, p1

    iget v6, p0, Lcom/android/camera/ui/SettingsController;->mLabelStep:I

    add-int/2addr v5, v6

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/ui/SettingsController;->mLabelStep:I

    div-int/2addr v5, v6

    new-array v5, v5, [Lcom/android/camera/ui/StringTexture;

    iput-object v5, p0, Lcom/android/camera/ui/SettingsController;->mTickLabels:[Lcom/android/camera/ui/StringTexture;

    .line 166
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v5, p0, Lcom/android/camera/ui/SettingsController;->mTickLabels:[Lcom/android/camera/ui/StringTexture;

    array-length v4, v5

    .local v4, n:I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 167
    iget-object v5, p0, Lcom/android/camera/ui/SettingsController;->mTickLabels:[Lcom/android/camera/ui/StringTexture;

    iget v6, p0, Lcom/android/camera/ui/SettingsController;->mLabelStep:I

    mul-int/2addr v6, v0

    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/android/camera/ui/SettingsController;->sLabelSize:F

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Lcom/android/camera/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/camera/ui/StringTexture;

    move-result-object v6

    aput-object v6, v5, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_1
    iget v5, p0, Lcom/android/camera/ui/SettingsController;->mLabelStep:I

    rem-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/camera/ui/SettingsController;->mLabelStep:I

    div-int/lit8 v5, v5, 0x3

    :goto_2
    iput v5, p0, Lcom/android/camera/ui/SettingsController;->mFineTickStep:I

    .line 175
    const/4 v2, 0x0

    .line 176
    .local v2, maxHeight:I
    const/4 v3, 0x0

    .line 177
    .local v3, maxWidth:I
    iget-object v5, p0, Lcom/android/camera/ui/SettingsController;->mTickLabels:[Lcom/android/camera/ui/StringTexture;

    array-length v1, v5

    .line 178
    .local v1, labelCount:I
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_4

    .line 179
    iget-object v5, p0, Lcom/android/camera/ui/SettingsController;->mTickLabels:[Lcom/android/camera/ui/StringTexture;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/camera/ui/StringTexture;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 180
    iget-object v5, p0, Lcom/android/camera/ui/SettingsController;->mTickLabels:[Lcom/android/camera/ui/StringTexture;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/camera/ui/StringTexture;->getHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 171
    .end local v1           #labelCount:I
    .end local v2           #maxHeight:I
    .end local v3           #maxWidth:I
    :cond_2
    iget v5, p0, Lcom/android/camera/ui/SettingsController;->mLabelStep:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3

    iget v5, p0, Lcom/android/camera/ui/SettingsController;->mLabelStep:I

    div-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 183
    .restart local v1       #labelCount:I
    .restart local v2       #maxHeight:I
    .restart local v3       #maxWidth:I
    :cond_4
    iput v2, p0, Lcom/android/camera/ui/SettingsController;->mMaxLabelHeight:I

    .line 184
    iput v3, p0, Lcom/android/camera/ui/SettingsController;->mMaxLabelWidth:I

    .line 185
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingsController;->invalidate()V

    goto :goto_0
.end method

.method public setValueIndex(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 278
    iget-object v0, p0, Lcom/android/camera/ui/SettingsController;->mValues:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v4, v0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    .line 279
    iget v0, p0, Lcom/android/camera/ui/SettingsController;->mIndex:I

    if-ne v0, p1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/SettingsController;->mIndex:I

    .line 281
    iget-object v0, p0, Lcom/android/camera/ui/SettingsController;->mValueListener:Lcom/android/camera/ui/SettingsController$ValueListener;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/camera/ui/SettingsController;->mValueListener:Lcom/android/camera/ui/SettingsController$ValueListener;

    iget v1, p0, Lcom/android/camera/ui/SettingsController;->mIndex:I

    iget-object v2, p0, Lcom/android/camera/ui/SettingsController;->mValues:[Ljava/lang/String;

    iget v3, p0, Lcom/android/camera/ui/SettingsController;->mIndex:I

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2, v4}, Lcom/android/camera/ui/SettingsController$ValueListener;->onValueChanged(ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public setValueListener(Lcom/android/camera/ui/SettingsController$ValueListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/camera/ui/SettingsController;->mValueListener:Lcom/android/camera/ui/SettingsController$ValueListener;

    .line 275
    return-void
.end method
