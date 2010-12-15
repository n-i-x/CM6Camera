.class public abstract Lcom/android/camera/ui/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


# static fields
.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_LOADED:I = 0x1

.field public static final STATE_UNLOADED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Texture"

.field protected static final UNSPECIFIED:I = -0x1


# instance fields
.field protected mGL:Ljavax/microedition/khronos/opengles/GL11;

.field protected mHeight:I

.field protected mId:I

.field protected mState:I

.field private mTexCoordHeight:F

.field private mTexCoordWidth:F

.field protected mWidth:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/camera/ui/Texture;-><init>(Ljavax/microedition/khronos/opengles/GL11;II)V

    .line 57
    return-void
.end method

.method protected constructor <init>(Ljavax/microedition/khronos/opengles/GL11;II)V
    .locals 2
    .parameter "gl"
    .parameter "id"
    .parameter "state"

    .prologue
    const/4 v1, -0x1

    const/high16 v0, 0x3f80

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v1, p0, Lcom/android/camera/ui/Texture;->mWidth:I

    .line 44
    iput v1, p0, Lcom/android/camera/ui/Texture;->mHeight:I

    .line 46
    iput v0, p0, Lcom/android/camera/ui/Texture;->mTexCoordWidth:F

    .line 47
    iput v0, p0, Lcom/android/camera/ui/Texture;->mTexCoordHeight:F

    .line 50
    iput-object p1, p0, Lcom/android/camera/ui/Texture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 51
    iput p2, p0, Lcom/android/camera/ui/Texture;->mId:I

    .line 52
    iput p3, p0, Lcom/android/camera/ui/Texture;->mState:I

    .line 53
    return-void
.end method

.method private uploadToGL(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 9
    .parameter "gl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/ui/GLOutOfMemoryException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/android/camera/ui/Texture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 94
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 95
    .local v2, glError:I
    if-eqz v0, :cond_2

    .line 96
    new-array v3, v8, [I

    .line 100
    .local v3, textureId:[I
    const/4 v4, 0x4

    :try_start_0
    new-array v1, v4, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v1, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/camera/ui/Texture;->mHeight:I

    aput v5, v1, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/camera/ui/Texture;->mWidth:I

    aput v5, v1, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/android/camera/ui/Texture;->mHeight:I

    neg-int v5, v5

    aput v5, v1, v4

    .line 103
    .local v1, cropRect:[I
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {p1, v4, v3, v5}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 104
    const/16 v4, 0xde1

    const/4 v5, 0x0

    aget v5, v3, v5

    invoke-interface {p1, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 105
    const/16 v4, 0xde1

    const v5, 0x8b9d

    const/4 v6, 0x0

    invoke-interface {p1, v4, v5, v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 107
    const/16 v4, 0xde1

    const/16 v5, 0x2802

    const v6, 0x812f

    invoke-interface {p1, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 109
    const/16 v4, 0xde1

    const/16 v5, 0x2803

    const v6, 0x812f

    invoke-interface {p1, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 111
    const/16 v4, 0xde1

    const/16 v5, 0x2801

    const v6, 0x46180400

    invoke-interface {p1, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 113
    const/16 v4, 0xde1

    const/16 v5, 0x2800

    const v6, 0x46180400

    invoke-interface {p1, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 115
    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/Texture;->freeBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    const/16 v4, 0x505

    if-ne v2, v4, :cond_0

    .line 120
    new-instance v4, Lcom/android/camera/ui/GLOutOfMemoryException;

    invoke-direct {v4}, Lcom/android/camera/ui/GLOutOfMemoryException;-><init>()V

    throw v4

    .line 117
    .end local v1           #cropRect:[I
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/Texture;->freeBitmap(Landroid/graphics/Bitmap;)V

    throw v4

    .line 122
    .restart local v1       #cropRect:[I
    :cond_0
    if-eqz v2, :cond_1

    .line 123
    iput v7, p0, Lcom/android/camera/ui/Texture;->mId:I

    .line 124
    iput v7, p0, Lcom/android/camera/ui/Texture;->mState:I

    .line 125
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Texture upload fail, glError "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 129
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/Texture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 130
    aget v4, v3, v7

    iput v4, p0, Lcom/android/camera/ui/Texture;->mId:I

    .line 131
    iput v8, p0, Lcom/android/camera/ui/Texture;->mState:I

    .line 137
    return-void

    .line 134
    .end local v1           #cropRect:[I
    .end local v3           #textureId:[I
    :cond_2
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/camera/ui/Texture;->mState:I

    .line 135
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Texture load fail, no bitmap"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method protected bind(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 3
    .parameter "root"
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    .line 148
    iget v1, p0, Lcom/android/camera/ui/Texture;->mState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/Texture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eq v1, p2, :cond_1

    .line 149
    :cond_0
    iput v2, p0, Lcom/android/camera/ui/Texture;->mState:I

    .line 151
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/camera/ui/Texture;->uploadToGL(Ljavax/microedition/khronos/opengles/GL11;)V
    :try_end_0
    .catch Lcom/android/camera/ui/GLOutOfMemoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Lcom/android/camera/ui/GLOutOfMemoryException;
    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->handleLowMemory()V

    move v1, v2

    .line 154
    goto :goto_1

    .line 157
    .end local v0           #e:Lcom/android/camera/ui/GLOutOfMemoryException;
    :cond_1
    const/16 v1, 0xde1

    invoke-virtual {p0}, Lcom/android/camera/ui/Texture;->getId()I

    move-result v2

    invoke-interface {p2, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    goto :goto_0
.end method

.method public deleteFromGL()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    iget v0, p0, Lcom/android/camera/ui/Texture;->mState:I

    if-ne v0, v4, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/Texture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    new-array v1, v4, [I

    iget v2, p0, Lcom/android/camera/ui/Texture;->mId:I

    aput v2, v1, v3

    invoke-interface {v0, v4, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V

    .line 89
    :cond_0
    iput v3, p0, Lcom/android/camera/ui/Texture;->mState:I

    .line 90
    return-void
.end method

.method public draw(Lcom/android/camera/ui/GLRootView;II)V
    .locals 6
    .parameter "root"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 140
    iget v4, p0, Lcom/android/camera/ui/Texture;->mWidth:I

    iget v5, p0, Lcom/android/camera/ui/Texture;->mHeight:I

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/GLRootView;->drawTexture(Lcom/android/camera/ui/Texture;IIII)V

    .line 141
    return-void
.end method

.method public draw(Lcom/android/camera/ui/GLRootView;IIIIF)V
    .locals 7
    .parameter "root"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "alpha"

    .prologue
    .line 144
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/GLRootView;->drawTexture(Lcom/android/camera/ui/Texture;IIIIF)V

    .line 145
    return-void
.end method

.method protected abstract freeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected generateGLCompatibleBitmap(II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 177
    invoke-static {p1}, Lcom/android/camera/Util;->nextPowerOf2(I)I

    move-result v1

    .line 178
    .local v1, newWidth:I
    invoke-static {p2}, Lcom/android/camera/Util;->nextPowerOf2(I)I

    move-result v0

    .line 179
    .local v0, newHeight:I
    int-to-float v2, p1

    int-to-float v3, v1

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/Texture;->mTexCoordWidth:F

    .line 180
    int-to-float v2, p2

    int-to-float v3, v0

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/Texture;->mTexCoordHeight:F

    .line 181
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method protected abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/camera/ui/Texture;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/ui/Texture;->mId:I

    return v0
.end method

.method public getTextureCoords([FI)V
    .locals 4
    .parameter "coord"
    .parameter "offset"

    .prologue
    const/4 v3, 0x0

    .line 163
    iget v2, p0, Lcom/android/camera/ui/Texture;->mTexCoordWidth:F

    .line 164
    .local v2, w:F
    iget v0, p0, Lcom/android/camera/ui/Texture;->mTexCoordHeight:F

    .line 166
    .local v0, h:F
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, offset:I
    aput v3, p1, p2

    .line 167
    add-int/lit8 p2, v1, 0x1

    .end local v1           #offset:I
    .restart local p2
    aput v3, p1, v1

    .line 168
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #offset:I
    aput v2, p1, p2

    .line 169
    add-int/lit8 p2, v1, 0x1

    .end local v1           #offset:I
    .restart local p2
    aput v3, p1, v1

    .line 170
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #offset:I
    aput v3, p1, p2

    .line 171
    add-int/lit8 p2, v1, 0x1

    .end local v1           #offset:I
    .restart local p2
    aput v0, p1, v1

    .line 172
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #offset:I
    aput v2, p1, p2

    .line 173
    aput v0, p1, v1

    .line 174
    return-void
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/camera/ui/Texture;->mWidth:I

    return v0
.end method

.method protected setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/camera/ui/Texture;->mWidth:I

    .line 61
    iput p2, p0, Lcom/android/camera/ui/Texture;->mHeight:I

    .line 62
    return-void
.end method

.method protected setTexCoordSize(FF)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/camera/ui/Texture;->mTexCoordWidth:F

    .line 66
    iput p2, p0, Lcom/android/camera/ui/Texture;->mTexCoordHeight:F

    .line 67
    return-void
.end method
