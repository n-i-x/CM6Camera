.class public abstract Lcom/android/camera/ui/CanvasTexture;
.super Lcom/android/camera/ui/Texture;
.source "CanvasTexture.java"


# instance fields
.field protected mCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/camera/ui/Texture;-><init>()V

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/CanvasTexture;->setSize(II)V

    .line 28
    return-void
.end method


# virtual methods
.method protected freeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 41
    return-void
.end method

.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 32
    iget v1, p0, Lcom/android/camera/ui/CanvasTexture;->mWidth:I

    iget v2, p0, Lcom/android/camera/ui/CanvasTexture;->mHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/ui/CanvasTexture;->generateGLCompatibleBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 33
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/camera/ui/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    .line 34
    iget-object v1, p0, Lcom/android/camera/ui/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/ui/CanvasTexture;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 35
    return-object v0
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
.end method
