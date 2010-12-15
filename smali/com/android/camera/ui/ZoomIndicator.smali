.class public Lcom/android/camera/ui/ZoomIndicator;
.super Lcom/android/camera/ui/AbstractIndicator;
.source "ZoomIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ZoomIndicator$1;,
        Lcom/android/camera/ui/ZoomIndicator$MyZoomListener;
    }
.end annotation


# static fields
.field private static final FONT_COLOR:I = -0x57000001

.field private static final FONT_SIZE:F = 18.0f

.field protected static final TAG:Ljava/lang/String; = "ZoomIndicator"

.field private static final sZoomFormat:Ljava/text/DecimalFormat;


# instance fields
.field private mDrawIndex:I

.field private final mFontSize:F

.field private mPopupContent:Lcom/android/camera/ui/LinearLayout;

.field private mTitle:Lcom/android/camera/ui/StringTexture;

.field private mZoomController:Lcom/android/camera/ui/ZoomController;

.field private mZoomIndex:I

.field private mZoomListener:Lcom/android/camera/ui/ZoomController$ZoomListener;

.field private mZoomRatios:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#x"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/ZoomIndicator;->sZoomFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AbstractIndicator;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomIndex:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ZoomIndicator;->mDrawIndex:I

    .line 46
    const/high16 v0, 0x4190

    invoke-static {p1, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ZoomIndicator;->mFontSize:F

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ZoomIndicator;)Lcom/android/camera/ui/ZoomController$ZoomListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomListener:Lcom/android/camera/ui/ZoomController$ZoomListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ZoomIndicator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/ZoomIndicator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ZoomIndicator;->onZoomIndexChanged(I)V

    return-void
.end method

.method private onZoomIndexChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 126
    iget v0, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomIndex:I

    if-ne v0, p1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomIndex:I

    .line 128
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomIndicator;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method protected getIcon()Lcom/android/camera/ui/Texture;
    .locals 4

    .prologue
    .line 68
    iget v1, p0, Lcom/android/camera/ui/ZoomIndicator;->mDrawIndex:I

    iget v2, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomIndex:I

    if-eq v1, v2, :cond_1

    .line 69
    iget v1, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomIndex:I

    iput v1, p0, Lcom/android/camera/ui/ZoomIndicator;->mDrawIndex:I

    .line 70
    iget-object v1, p0, Lcom/android/camera/ui/ZoomIndicator;->mTitle:Lcom/android/camera/ui/StringTexture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ZoomIndicator;->mTitle:Lcom/android/camera/ui/StringTexture;

    invoke-virtual {v1}, Lcom/android/camera/ui/StringTexture;->deleteFromGL()V

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomRatios:[F

    if-nez v1, :cond_2

    const/4 v1, 0x0

    move v0, v1

    .line 72
    .local v0, value:F
    :goto_0
    sget-object v1, Lcom/android/camera/ui/ZoomIndicator;->sZoomFormat:Ljava/text/DecimalFormat;

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/ZoomIndicator;->mFontSize:F

    const v3, -0x57000001

    invoke-static {v1, v2, v3}, Lcom/android/camera/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/camera/ui/StringTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/ZoomIndicator;->mTitle:Lcom/android/camera/ui/StringTexture;

    .line 75
    .end local v0           #value:F
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/ZoomIndicator;->mTitle:Lcom/android/camera/ui/StringTexture;

    return-object v1

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomRatios:[F

    iget v2, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomIndex:I

    aget v1, v1, v2

    move v0, v1

    goto :goto_0
.end method

.method public getPopupContent()Lcom/android/camera/ui/GLView;
    .locals 7

    .prologue
    const/16 v6, 0xf

    const/4 v5, 0x3

    const/4 v4, 0x6

    .line 80
    iget-object v2, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomController:Lcom/android/camera/ui/ZoomController;

    if-nez v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomIndicator;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/GLRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    .local v0, context:Landroid/content/Context;
    new-instance v2, Lcom/android/camera/ui/ZoomController;

    invoke-direct {v2, v0}, Lcom/android/camera/ui/ZoomController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomController:Lcom/android/camera/ui/ZoomController;

    .line 83
    iget-object v2, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomController:Lcom/android/camera/ui/ZoomController;

    iget-object v3, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomRatios:[F

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ZoomController;->setAvailableZoomRatios([F)V

    .line 84
    iget-object v2, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomController:Lcom/android/camera/ui/ZoomController;

    invoke-virtual {v2, v6, v4, v6, v4}, Lcom/android/camera/ui/ZoomController;->setPaddings(IIII)V

    .line 86
    new-instance v2, Lcom/android/camera/ui/LinearLayout;

    invoke-direct {v2}, Lcom/android/camera/ui/LinearLayout;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/ZoomIndicator;->mPopupContent:Lcom/android/camera/ui/LinearLayout;

    .line 87
    new-instance v1, Lcom/android/camera/ui/GLOptionHeader;

    const v2, 0x7f0a0098

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/camera/ui/GLOptionHeader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    .local v1, header:Lcom/android/camera/ui/GLOptionHeader;
    new-instance v2, Lcom/android/camera/ui/NinePatchTexture;

    const v3, 0x7f020045

    invoke-direct {v2, v0, v3}, Lcom/android/camera/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/GLOptionHeader;->setBackground(Lcom/android/camera/ui/NinePatchTexture;)V

    .line 91
    invoke-virtual {v1, v4, v5, v4, v5}, Lcom/android/camera/ui/GLOptionHeader;->setPaddings(IIII)V

    .line 92
    iget-object v2, p0, Lcom/android/camera/ui/ZoomIndicator;->mPopupContent:Lcom/android/camera/ui/LinearLayout;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/LinearLayout;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 93
    iget-object v2, p0, Lcom/android/camera/ui/ZoomIndicator;->mPopupContent:Lcom/android/camera/ui/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomController:Lcom/android/camera/ui/ZoomController;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/LinearLayout;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 95
    iget-object v2, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomController:Lcom/android/camera/ui/ZoomController;

    new-instance v3, Lcom/android/camera/ui/ZoomIndicator$MyZoomListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/camera/ui/ZoomIndicator$MyZoomListener;-><init>(Lcom/android/camera/ui/ZoomIndicator;Lcom/android/camera/ui/ZoomIndicator$1;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ZoomController;->setZoomListener(Lcom/android/camera/ui/ZoomController$ZoomListener;)V

    .line 96
    iget-object v2, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomController:Lcom/android/camera/ui/ZoomController;

    iget v3, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomIndex:I

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ZoomController;->setZoomIndex(I)V

    .line 98
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #header:Lcom/android/camera/ui/GLOptionHeader;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/ZoomIndicator;->mPopupContent:Lcom/android/camera/ui/LinearLayout;

    return-object v2
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, maxWidth:I
    const/4 v1, 0x0

    .line 53
    .local v1, maxHeight:I
    iget-object v6, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomRatios:[F

    if-nez v6, :cond_2

    const/4 v6, 0x0

    move v3, v6

    .line 54
    .local v3, n:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 55
    iget-object v6, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomRatios:[F

    aget v5, v6, v0

    .line 56
    .local v5, value:F
    sget-object v6, Lcom/android/camera/ui/ZoomIndicator;->sZoomFormat:Ljava/text/DecimalFormat;

    float-to-double v7, v5

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/ui/ZoomIndicator;->mFontSize:F

    const v8, -0x57000001

    invoke-static {v6, v7, v8}, Lcom/android/camera/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/camera/ui/StringTexture;

    move-result-object v4

    .line 58
    .local v4, tex:Lcom/android/camera/ui/Texture;
    invoke-virtual {v4}, Lcom/android/camera/ui/Texture;->getWidth()I

    move-result v6

    if-ge v2, v6, :cond_0

    invoke-virtual {v4}, Lcom/android/camera/ui/Texture;->getWidth()I

    move-result v2

    .line 59
    :cond_0
    invoke-virtual {v4}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v6

    if-ge v1, v6, :cond_1

    invoke-virtual {v4}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v1

    .line 54
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    .end local v0           #i:I
    .end local v3           #n:I
    .end local v4           #tex:Lcom/android/camera/ui/Texture;
    .end local v5           #value:F
    :cond_2
    iget-object v6, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomRatios:[F

    array-length v6, v6

    move v3, v6

    goto :goto_0

    .line 61
    .restart local v0       #i:I
    .restart local v3       #n:I
    :cond_3
    new-instance v6, Lcom/android/camera/ui/MeasureHelper;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/MeasureHelper;-><init>(Lcom/android/camera/ui/GLView;)V

    invoke-virtual {v6, v2, v1}, Lcom/android/camera/ui/MeasureHelper;->setPreferredContentSize(II)Lcom/android/camera/ui/MeasureHelper;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Lcom/android/camera/ui/MeasureHelper;->measure(II)V

    .line 64
    return-void
.end method

.method public overrideSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "settings"

    .prologue
    .line 104
    return-void
.end method

.method public reloadPreferences()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public setZoomIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 136
    iget v0, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomIndex:I

    if-ne v0, p1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomController:Lcom/android/camera/ui/ZoomController;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomController:Lcom/android/camera/ui/ZoomController;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomController;->setZoomIndex(I)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ZoomIndicator;->onZoomIndexChanged(I)V

    goto :goto_0
.end method

.method public setZoomListener(Lcom/android/camera/ui/ZoomController$ZoomListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomListener:Lcom/android/camera/ui/ZoomController$ZoomListener;

    .line 133
    return-void
.end method

.method public setZoomRatios([F)V
    .locals 0
    .parameter "ratios"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/camera/ui/ZoomIndicator;->mZoomRatios:[F

    .line 113
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomIndicator;->requestLayout()V

    .line 114
    return-void
.end method
