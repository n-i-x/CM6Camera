.class public Lcom/android/camera/ui/NinePatchTexture;
.super Lcom/android/camera/ui/FrameTexture;
.source "NinePatchTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/NinePatchTexture$MyTexture;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDelegate:Lcom/android/camera/ui/NinePatchTexture$MyTexture;

.field private mLastHeight:I

.field private mLastWidth:I

.field private mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

.field private final mPaddings:Landroid/graphics/Rect;

.field private final mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    const/4 v0, -0x1

    .line 41
    invoke-direct {p0}, Lcom/android/camera/ui/FrameTexture;-><init>()V

    .line 36
    iput v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mLastWidth:I

    .line 37
    iput v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mLastHeight:I

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mPaddings:Landroid/graphics/Rect;

    .line 42
    iput-object p1, p0, Lcom/android/camera/ui/NinePatchTexture;->mContext:Landroid/content/Context;

    .line 43
    iput p2, p0, Lcom/android/camera/ui/NinePatchTexture;->mResId:I

    .line 44
    return-void
.end method


# virtual methods
.method protected bind(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 3
    .parameter "root"
    .parameter "gl"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mLastWidth:I

    iget v1, p0, Lcom/android/camera/ui/NinePatchTexture;->mWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mLastHeight:I

    iget v1, p0, Lcom/android/camera/ui/NinePatchTexture;->mHeight:I

    if-eq v0, v1, :cond_2

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mDelegate:Lcom/android/camera/ui/NinePatchTexture$MyTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mDelegate:Lcom/android/camera/ui/NinePatchTexture$MyTexture;

    invoke-virtual {v0}, Lcom/android/camera/ui/NinePatchTexture$MyTexture;->deleteFromGL()V

    .line 55
    :cond_1
    new-instance v0, Lcom/android/camera/ui/NinePatchTexture$MyTexture;

    iget v1, p0, Lcom/android/camera/ui/NinePatchTexture;->mWidth:I

    iget v2, p0, Lcom/android/camera/ui/NinePatchTexture;->mHeight:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/NinePatchTexture$MyTexture;-><init>(Lcom/android/camera/ui/NinePatchTexture;II)V

    iput-object v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mDelegate:Lcom/android/camera/ui/NinePatchTexture$MyTexture;

    .line 56
    iget v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mWidth:I

    iput v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mLastWidth:I

    .line 57
    iget v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mHeight:I

    iput v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mLastHeight:I

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mDelegate:Lcom/android/camera/ui/NinePatchTexture$MyTexture;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/NinePatchTexture$MyTexture;->bind(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    return v0
.end method

.method protected freeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mDelegate:Lcom/android/camera/ui/NinePatchTexture$MyTexture;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/NinePatchTexture$MyTexture;->freeBitmap(Landroid/graphics/Bitmap;)V

    .line 93
    return-void
.end method

.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mDelegate:Lcom/android/camera/ui/NinePatchTexture$MyTexture;

    invoke-virtual {v0}, Lcom/android/camera/ui/NinePatchTexture$MyTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/camera/ui/NinePatchTexture;->getNinePatch()Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/camera/ui/NinePatchTexture;->getNinePatch()Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method protected getNinePatch()Landroid/graphics/drawable/NinePatchDrawable;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/NinePatchTexture;->mResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/android/camera/ui/NinePatchTexture;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    return-object v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/NinePatchTexture;->getNinePatch()Landroid/graphics/drawable/NinePatchDrawable;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTextureCoords([FI)V
    .locals 1
    .parameter "coord"
    .parameter "offset"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/NinePatchTexture;->mDelegate:Lcom/android/camera/ui/NinePatchTexture$MyTexture;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/NinePatchTexture$MyTexture;->getTextureCoords([FI)V

    .line 65
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/FrameTexture;->setSize(II)V

    .line 49
    return-void
.end method
