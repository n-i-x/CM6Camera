.class public Lcom/android/camera/ui/GLOptionHeader;
.super Lcom/android/camera/ui/GLView;
.source "GLOptionHeader.java"


# static fields
.field private static final FONT_COLOR:I = -0x686869

.field private static final FONT_SIZE:F = 10.0f

.field private static final HORIZONTAL_PADDINGS:I = 0x4

.field private static final VERTICAL_PADDINGS:I = 0x2

.field private static sHorizontalPaddings:I

.field private static sVerticalPaddings:I


# instance fields
.field private mBackground:Lcom/android/camera/ui/NinePatchTexture;

.field private final mTitle:Lcom/android/camera/ui/StringTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/ui/GLOptionHeader;->sHorizontalPaddings:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "title"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/ui/GLView;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/android/camera/ui/GLOptionHeader;->initializeStaticVariables(Landroid/content/Context;)V

    .line 48
    const/high16 v1, 0x4120

    invoke-static {p1, v1}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;F)F

    move-result v0

    .line 49
    .local v0, fontSize:F
    const v1, -0x686869

    invoke-static {p2, v0, v1}, Lcom/android/camera/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/camera/ui/StringTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/GLOptionHeader;->mTitle:Lcom/android/camera/ui/StringTexture;

    .line 50
    new-instance v1, Lcom/android/camera/ui/NinePatchTexture;

    const v2, 0x7f020045

    invoke-direct {v1, p1, v2}, Lcom/android/camera/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GLOptionHeader;->setBackground(Lcom/android/camera/ui/NinePatchTexture;)V

    .line 52
    sget v1, Lcom/android/camera/ui/GLOptionHeader;->sHorizontalPaddings:I

    sget v2, Lcom/android/camera/ui/GLOptionHeader;->sVerticalPaddings:I

    sget v3, Lcom/android/camera/ui/GLOptionHeader;->sHorizontalPaddings:I

    sget v4, Lcom/android/camera/ui/GLOptionHeader;->sVerticalPaddings:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/camera/ui/GLOptionHeader;->setPaddings(IIII)V

    .line 54
    return-void
.end method

.method private static initializeStaticVariables(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    sget v0, Lcom/android/camera/ui/GLOptionHeader;->sHorizontalPaddings:I

    if-ltz v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/GLOptionHeader;->sHorizontalPaddings:I

    .line 42
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/GLOptionHeader;->sVerticalPaddings:I

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 64
    new-instance v0, Lcom/android/camera/ui/MeasureHelper;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/MeasureHelper;-><init>(Lcom/android/camera/ui/GLView;)V

    iget-object v1, p0, Lcom/android/camera/ui/GLOptionHeader;->mTitle:Lcom/android/camera/ui/StringTexture;

    invoke-virtual {v1}, Lcom/android/camera/ui/StringTexture;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/GLOptionHeader;->mTitle:Lcom/android/camera/ui/StringTexture;

    invoke-virtual {v2}, Lcom/android/camera/ui/StringTexture;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/MeasureHelper;->setPreferredContentSize(II)Lcom/android/camera/ui/MeasureHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/MeasureHelper;->measure(II)V

    .line 67
    return-void
.end method

.method protected render(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 5
    .parameter "root"
    .parameter "gl"

    .prologue
    const/4 v4, 0x0

    .line 71
    iget-object v1, p0, Lcom/android/camera/ui/GLOptionHeader;->mBackground:Lcom/android/camera/ui/NinePatchTexture;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/camera/ui/GLOptionHeader;->mBackground:Lcom/android/camera/ui/NinePatchTexture;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLOptionHeader;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/ui/GLOptionHeader;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/NinePatchTexture;->setSize(II)V

    .line 73
    iget-object v1, p0, Lcom/android/camera/ui/GLOptionHeader;->mBackground:Lcom/android/camera/ui/NinePatchTexture;

    invoke-virtual {v1, p1, v4, v4}, Lcom/android/camera/ui/NinePatchTexture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GLOptionHeader;->mPaddings:Landroid/graphics/Rect;

    .line 76
    .local v0, p:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/camera/ui/GLOptionHeader;->mTitle:Lcom/android/camera/ui/StringTexture;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/camera/ui/StringTexture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 77
    return-void
.end method

.method public setBackground(Lcom/android/camera/ui/NinePatchTexture;)V
    .locals 1
    .parameter "background"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/GLOptionHeader;->mBackground:Lcom/android/camera/ui/NinePatchTexture;

    if-ne v0, p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/GLOptionHeader;->mBackground:Lcom/android/camera/ui/NinePatchTexture;

    .line 59
    invoke-virtual {p0}, Lcom/android/camera/ui/GLOptionHeader;->invalidate()V

    goto :goto_0
.end method
