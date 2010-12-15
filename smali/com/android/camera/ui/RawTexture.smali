.class public Lcom/android/camera/ui/RawTexture;
.super Lcom/android/camera/ui/Texture;
.source "RawTexture.java"


# direct methods
.method private constructor <init>(Ljavax/microedition/khronos/opengles/GL11;I)V
    .locals 1
    .parameter "gl"
    .parameter "id"

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/Texture;-><init>(Ljavax/microedition/khronos/opengles/GL11;II)V

    .line 27
    return-void
.end method

.method public static newInstance(Ljavax/microedition/khronos/opengles/GL11;)Lcom/android/camera/ui/RawTexture;
    .locals 5
    .parameter "gl"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 34
    new-array v1, v2, [I

    .line 35
    .local v1, textureId:[I
    invoke-interface {p0, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 36
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL11;->glGetError()I

    move-result v0

    .line 37
    .local v0, glError:I
    if-eqz v0, :cond_0

    .line 38
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GL_ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_0
    new-instance v2, Lcom/android/camera/ui/RawTexture;

    aget v3, v1, v3

    invoke-direct {v2, p0, v3}, Lcom/android/camera/ui/RawTexture;-><init>(Ljavax/microedition/khronos/opengles/GL11;I)V

    return-object v2
.end method


# virtual methods
.method protected bind(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 2
    .parameter "glRootView"
    .parameter "gl"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/RawTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v0, p2, :cond_0

    .line 56
    const/16 v0, 0xde1

    invoke-virtual {p0}, Lcom/android/camera/ui/RawTexture;->getId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 57
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected freeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBoundGL()Ljavax/microedition/khronos/opengles/GL11;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/RawTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    return-object v0
.end method
