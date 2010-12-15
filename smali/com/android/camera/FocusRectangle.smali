.class public Lcom/android/camera/FocusRectangle;
.super Landroid/view/View;
.source "FocusRectangle.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FocusRectangle"


# instance fields
.field private xActual:I

.field private yActual:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method private setDrawable(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/android/camera/FocusRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/FocusRectangle;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/FocusRectangle;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    return-void
.end method

.method public getTouchIndexX()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/camera/FocusRectangle;->xActual:I

    return v0
.end method

.method public getTouchIndexY()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/FocusRectangle;->yActual:I

    return v0
.end method

.method public setPosition(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 40
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 41
    iput p1, p0, Lcom/android/camera/FocusRectangle;->xActual:I

    .line 42
    iput p2, p0, Lcom/android/camera/FocusRectangle;->yActual:I

    .line 43
    invoke-virtual {p0}, Lcom/android/camera/FocusRectangle;->getWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 44
    .local v0, size:I
    sub-int v1, p1, v0

    sub-int v2, p2, v0

    add-int v3, p1, v0

    add-int v4, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/camera/FocusRectangle;->layout(IIII)V

    .line 46
    .end local v0           #size:I
    :cond_0
    return-void
.end method

.method public showFail()V
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f02004a

    invoke-direct {p0, v0}, Lcom/android/camera/FocusRectangle;->setDrawable(I)V

    .line 33
    return-void
.end method

.method public showStart()V
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f02004b

    invoke-direct {p0, v0}, Lcom/android/camera/FocusRectangle;->setDrawable(I)V

    .line 25
    return-void
.end method

.method public showSuccess()V
    .locals 1

    .prologue
    .line 28
    const v0, 0x7f02004a

    invoke-direct {p0, v0}, Lcom/android/camera/FocusRectangle;->setDrawable(I)V

    .line 29
    return-void
.end method
