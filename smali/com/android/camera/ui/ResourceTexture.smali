.class public Lcom/android/camera/ui/ResourceTexture;
.super Lcom/android/camera/ui/Texture;
.source "ResourceTexture.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private final mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/camera/ui/Texture;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/camera/ui/ResourceTexture;->mContext:Landroid/content/Context;

    .line 35
    iput p2, p0, Lcom/android/camera/ui/ResourceTexture;->mResId:I

    .line 36
    return-void
.end method


# virtual methods
.method protected freeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/ResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->Assert(Z)V

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 76
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 40
    iget-object v2, p0, Lcom/android/camera/ui/ResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/ResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 52
    :goto_0
    return-object v2

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/ResourceTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/ResourceTexture;->mResId:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/ResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 42
    iget-object v2, p0, Lcom/android/camera/ui/ResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ui/ResourceTexture;->setSize(II)V

    .line 44
    iget v2, p0, Lcom/android/camera/ui/ResourceTexture;->mWidth:I

    invoke-static {v2}, Lcom/android/camera/Util;->isPowerOf2(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/ui/ResourceTexture;->mHeight:I

    invoke-static {v2}, Lcom/android/camera/Util;->isPowerOf2(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/ResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/ResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 47
    .local v1, oldBitmap:Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/android/camera/ui/ResourceTexture;->mWidth:I

    iget v3, p0, Lcom/android/camera/ui/ResourceTexture;->mHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ui/ResourceTexture;->generateGLCompatibleBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/ResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 48
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/camera/ui/ResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 50
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 52
    iget-object v2, p0, Lcom/android/camera/ui/ResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 57
    iget v0, p0, Lcom/android/camera/ui/ResourceTexture;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/camera/ui/ResourceTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 60
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ResourceTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/ui/ResourceTexture;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/camera/ui/ResourceTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 68
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ResourceTexture;->mWidth:I

    return v0
.end method
