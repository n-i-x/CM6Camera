.class public Lcom/android/camera/ui/GLRootView;
.super Landroid/opengl/GLSurfaceView;
.source "GLRootView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GLRootView$TouchEventHandler;
    }
.end annotation


# static fields
.field private static final FLAG_INITIALIZED:I = 0x1

.field private static final FLAG_NEED_LAYOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GLRootView"

.field private static final VERTEX_BUFFER_SIZE:I = 0x8

.field private static sPixelDensity:F


# instance fields
.field private final ENABLE_FPS_TEST:Z

.field private mAnimationTime:J

.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mContentView:Lcom/android/camera/ui/GLView;

.field private final mCoordBuffer:[F

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFirstHeight:I

.field private mFirstWidth:I

.field private mFlags:I

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private final mFreeTransform:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/view/animation/Transformation;",
            ">;"
        }
    .end annotation
.end field

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mGLThread:Ljava/lang/Thread;

.field private mIsQueueActive:Z

.field private mLastAlpha:F

.field private final mLooper:Landroid/os/Looper;

.field private final mMatrixValues:[F

.field private final mPointBuffer:[F

.field private mTexCoordBuffer:Ljava/nio/ByteBuffer;

.field private final mTransformStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/view/animation/Transformation;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransformation:Landroid/view/animation/Transformation;

.field private mVertexBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/high16 v0, -0x4080

    sput v0, Lcom/android/camera/ui/GLRootView;->sPixelDensity:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/GLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-boolean v0, p0, Lcom/android/camera/ui/GLRootView;->ENABLE_FPS_TEST:Z

    .line 56
    iput v0, p0, Lcom/android/camera/ui/GLRootView;->mFrameCount:I

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ui/GLRootView;->mFrameCountingStart:J

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mFreeTransform:Ljava/util/Stack;

    .line 75
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    .line 76
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mTransformStack:Ljava/util/Stack;

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GLRootView;->mLastAlpha:F

    .line 81
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mMatrixValues:[F

    .line 83
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mCoordBuffer:[F

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mPointBuffer:[F

    .line 89
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/GLRootView;->mFlags:I

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/GLRootView;->mIsQueueActive:Z

    .line 108
    invoke-direct {p0}, Lcom/android/camera/ui/GLRootView;->initialize()V

    .line 109
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mLooper:Landroid/os/Looper;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/GLRootView;)Lcom/android/camera/ui/GLView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mContentView:Lcom/android/camera/ui/GLView;

    return-object v0
.end method

.method public static declared-synchronized dpToPixel(Landroid/content/Context;F)F
    .locals 4
    .parameter "context"
    .parameter "dp"

    .prologue
    .line 125
    const-class v1, Lcom/android/camera/ui/GLRootView;

    monitor-enter v1

    :try_start_0
    sget v2, Lcom/android/camera/ui/GLRootView;->sPixelDensity:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 126
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 127
    .local v0, metrics:Landroid/util/DisplayMetrics;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 129
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/android/camera/ui/GLRootView;->sPixelDensity:F

    .line 131
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    sget v2, Lcom/android/camera/ui/GLRootView;->sPixelDensity:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float/2addr v2, p1

    monitor-exit v1

    return v2

    .line 125
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static dpToPixel(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "dp"

    .prologue
    .line 135
    int-to-float v0, p1

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;F)F

    move-result v0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private drawRect(IIII[FF)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "matrix"
    .parameter "alpha"

    .prologue
    const/4 v4, 0x0

    .line 331
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 332
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 333
    invoke-direct {p0, p6}, Lcom/android/camera/ui/GLRootView;->setAlphaValue(F)V

    .line 334
    invoke-static {p5}, Lcom/android/camera/ui/GLRootView;->toGLMatrix([F)[F

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glMultMatrixf([FI)V

    .line 335
    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    .line 336
    int-to-float v1, p3

    int-to-float v2, p4

    const/high16 v3, 0x3f80

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glScalef(FFF)V

    .line 337
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 338
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 339
    return-void
.end method

.method private initialize()V
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 177
    iget v0, p0, Lcom/android/camera/ui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/GLRootView;->mFlags:I

    .line 178
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f08

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v5

    .line 179
    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/GLRootView;->setEGLConfigChooser(IIIIII)V

    .line 183
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GLRootView;->setZOrderOnTop(Z)V

    .line 186
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/GLRootView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 188
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mVertexBuffer:Ljava/nio/ByteBuffer;

    .line 191
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mVertexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 194
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    .line 197
    return-void

    .line 181
    :cond_0
    const/4 v6, 0x4

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/GLRootView;->setEGLConfigChooser(IIIIII)V

    goto :goto_0

    .line 191
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private static isMatrixRotatedOrFlipped([F)Z
    .locals 4
    .parameter "matrix"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 421
    aget v0, p0, v3

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    aget v0, p0, v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    aget v0, p0, v2

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    aget v0, p0, v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private declared-synchronized layoutContentPane()V
    .locals 5

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/android/camera/ui/GLRootView;->mFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/android/camera/ui/GLRootView;->mFlags:I

    .line 229
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->getWidth()I

    move-result v1

    .line 230
    .local v1, width:I
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->getHeight()I

    move-result v0

    .line 231
    .local v0, height:I
    const-string v2, "GLRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layout content pane "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v2, p0, Lcom/android/camera/ui/GLRootView;->mContentView:Lcom/android/camera/ui/GLView;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 233
    iget-object v2, p0, Lcom/android/camera/ui/GLRootView;->mContentView:Lcom/android/camera/ui/GLView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/android/camera/ui/GLView;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_0
    monitor-exit p0

    return-void

    .line 228
    .end local v0           #height:I
    .end local v1           #width:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private mapPoints(Landroid/graphics/Matrix;IIII)[F
    .locals 3
    .parameter "matrix"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mPointBuffer:[F

    .line 349
    .local v0, point:[F
    const/4 v1, 0x0

    int-to-float v2, p2

    aput v2, v0, v1

    const/4 v1, 0x1

    int-to-float v2, p3

    aput v2, v0, v1

    const/4 v1, 0x2

    int-to-float v2, p4

    aput v2, v0, v1

    const/4 v1, 0x3

    int-to-float v2, p5

    aput v2, v0, v1

    .line 350
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 351
    return-object v0
.end method

.method private setAlphaValue(F)V
    .locals 4
    .parameter "alpha"

    .prologue
    const/16 v3, 0x2300

    const/16 v2, 0x2200

    .line 309
    iget v1, p0, Lcom/android/camera/ui/GLRootView;->mLastAlpha:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 321
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 312
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iput p1, p0, Lcom/android/camera/ui/GLRootView;->mLastAlpha:F

    .line 313
    const v1, 0x3f733333

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    .line 314
    const v1, 0x45f00800

    invoke-interface {v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    goto :goto_0

    .line 317
    :cond_1
    const/high16 v1, 0x4604

    invoke-interface {v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 319
    invoke-interface {v0, p1, p1, p1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    goto :goto_0
.end method

.method private static toGLMatrix([F)[F
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 382
    const/16 v0, 0xf

    const/16 v1, 0x8

    aget v1, p0, v1

    aput v1, p0, v0

    const/16 v0, 0xd

    aget v1, p0, v6

    aput v1, p0, v0

    aget v0, p0, v5

    aput v0, p0, v6

    aget v0, p0, v2

    aput v0, p0, v5

    .line 383
    const/16 v0, 0xc

    aget v1, p0, v4

    aput v1, p0, v0

    aget v0, p0, v3

    aput v0, p0, v2

    const/4 v0, 0x6

    aget v0, p0, v0

    aput v0, p0, v3

    .line 384
    const/4 v0, 0x6

    const/16 v1, 0x8

    const/16 v2, 0x9

    const/4 v3, 0x0

    aput v3, p0, v2

    aput v3, p0, v1

    aput v3, p0, v0

    aput v3, p0, v4

    .line 385
    const/16 v0, 0xa

    const/high16 v1, 0x3f80

    aput v1, p0, v0

    .line 386
    return-object p0
.end method


# virtual methods
.method public clearClip()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 378
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->getHeight()I

    move-result v2

    invoke-interface {v0, v3, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    .line 379
    return-void
.end method

.method public clipRect(IIII)V
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 355
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    add-int v3, p2, p4

    add-int v4, p1, p3

    move-object v0, p0

    move v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/GLRootView;->mapPoints(Landroid/graphics/Matrix;IIII)[F

    move-result-object v6

    .line 360
    .local v6, point:[F
    aget v0, v6, v7

    aget v1, v6, v9

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 361
    aget v0, v6, v9

    float-to-int p1, v0

    .line 362
    aget v0, v6, v7

    float-to-int v0, v0

    sub-int p3, v0, p1

    .line 367
    :goto_0
    aget v0, v6, v8

    aget v1, v6, v10

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 368
    aget v0, v6, v10

    float-to-int p2, v0

    .line 369
    aget v0, v6, v8

    float-to-int v0, v0

    sub-int p4, v0, p2

    .line 374
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    .line 375
    return-void

    .line 364
    :cond_0
    aget v0, v6, v7

    float-to-int p1, v0

    .line 365
    aget v0, v6, v9

    float-to-int v0, v0

    sub-int p3, v0, p1

    goto :goto_0

    .line 371
    :cond_1
    aget v0, v6, v8

    float-to-int p2, v0

    .line 372
    aget v0, v6, v10

    float-to-int v0, v0

    sub-int p4, v0, p2

    goto :goto_1
.end method

.method public copyTexture2D(Lcom/android/camera/ui/RawTexture;IIII)V
    .locals 17
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/ui/GLOutOfMemoryException;
        }
    .end annotation

    .prologue
    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 507
    .local v4, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mMatrixValues:[F

    move-object v3, v0

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mMatrixValues:[F

    move-object v3, v0

    invoke-static {v3}, Lcom/android/camera/ui/GLRootView;->isMatrixRotatedOrFlipped([F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 510
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "cannot support rotated matrix"

    .end local v4           #matrix:Landroid/graphics/Matrix;
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 512
    .restart local v4       #matrix:Landroid/graphics/Matrix;
    :cond_0
    add-int v6, p3, p5

    add-int v7, p2, p4

    move-object/from16 v3, p0

    move/from16 v5, p2

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/ui/GLRootView;->mapPoints(Landroid/graphics/Matrix;IIII)[F

    move-result-object v16

    .line 513
    .local v16, points:[F
    const/4 v3, 0x0

    aget v3, v16, v3

    move v0, v3

    float-to-int v0, v0

    move/from16 p2, v0

    .line 514
    const/4 v3, 0x1

    aget v3, v16, v3

    move v0, v3

    float-to-int v0, v0

    move/from16 p3, v0

    .line 515
    const/4 v3, 0x2

    aget v3, v16, v3

    float-to-int v3, v3

    sub-int p4, v3, p2

    .line 516
    const/4 v3, 0x3

    aget v3, v16, v3

    float-to-int v3, v3

    sub-int p5, v3, p3

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object v5, v0

    .line 519
    .local v5, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-static/range {p4 .. p4}, Lcom/android/camera/Util;->nextPowerOf2(I)I

    move-result v11

    .line 520
    .local v11, newWidth:I
    invoke-static/range {p5 .. p5}, Lcom/android/camera/Util;->nextPowerOf2(I)I

    move-result v12

    .line 521
    .local v12, newHeight:I
    const/4 v15, 0x0

    .line 523
    .local v15, glError:I
    const/16 v3, 0xde1

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ui/RawTexture;->getId()I

    move-result v4

    .end local v4           #matrix:Landroid/graphics/Matrix;
    invoke-interface {v5, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 525
    const/4 v3, 0x4

    new-array v14, v3, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v14, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v14, v3

    const/4 v3, 0x2

    aput p4, v14, v3

    const/4 v3, 0x3

    aput p5, v14, v3

    .line 526
    .local v14, cropRect:[I
    const/16 v3, 0xde1

    const v4, 0x8b9d

    const/4 v6, 0x0

    invoke-interface {v5, v3, v4, v14, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 528
    const/16 v3, 0xde1

    const/16 v4, 0x2802

    const v6, 0x812f

    invoke-interface {v5, v3, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 530
    const/16 v3, 0xde1

    const/16 v4, 0x2803

    const v6, 0x812f

    invoke-interface {v5, v3, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 532
    const/16 v3, 0xde1

    const/16 v4, 0x2801

    const v6, 0x46180400

    invoke-interface {v5, v3, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 534
    const/16 v3, 0xde1

    const/16 v4, 0x2800

    const v6, 0x46180400

    invoke-interface {v5, v3, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 536
    const/16 v6, 0xde1

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/4 v13, 0x0

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-interface/range {v5 .. v13}, Ljavax/microedition/khronos/opengles/GL11;->glCopyTexImage2D(IIIIIIII)V

    .line 538
    invoke-interface {v5}, Ljavax/microedition/khronos/opengles/GL11;->glGetError()I

    move-result v15

    .line 540
    const/16 v3, 0x505

    if-ne v15, v3, :cond_1

    .line 541
    new-instance v3, Lcom/android/camera/ui/GLOutOfMemoryException;

    invoke-direct {v3}, Lcom/android/camera/ui/GLOutOfMemoryException;-><init>()V

    throw v3

    .line 544
    :cond_1
    if-eqz v15, :cond_2

    .line 545
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Texture copy fail, glError "

    .end local v5           #gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 549
    .restart local v5       #gl:Ljavax/microedition/khronos/opengles/GL11;
    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RawTexture;->setSize(II)V

    .line 550
    move/from16 v0, p4

    int-to-float v0, v0

    move v3, v0

    int-to-float v4, v11

    div-float/2addr v3, v4

    move/from16 v0, p5

    int-to-float v0, v0

    move v4, v0

    int-to-float v5, v12

    div-float/2addr v4, v5

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RawTexture;->setTexCoordSize(FF)V

    .line 552
    .end local v5           #gl:Ljavax/microedition/khronos/opengles/GL11;
    return-void
.end method

.method public currentAnimationTimeMillis()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/android/camera/ui/GLRootView;->mAnimationTime:J

    return-wide v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 469
    iget-boolean v2, p0, Lcom/android/camera/ui/GLRootView;->mIsQueueActive:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 474
    .end local p0
    :goto_0
    return v2

    .line 470
    .restart local p0
    :cond_0
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/android/camera/ui/GLRootView$TouchEventHandler;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/ui/GLRootView$TouchEventHandler;-><init>(Lcom/android/camera/ui/GLRootView;Landroid/view/MotionEvent;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 472
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GLRootView;->queueEventOrThrowException(Ljava/lang/Runnable;)V

    .line 474
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 475
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 476
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public drawRect(IIII)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 324
    iget-object v5, p0, Lcom/android/camera/ui/GLRootView;->mMatrixValues:[F

    .line 325
    .local v5, matrix:[F
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 326
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/GLRootView;->drawRect(IIII[FF)V

    .line 327
    return-void
.end method

.method public drawRect(IIIIF)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "alpha"

    .prologue
    .line 342
    iget-object v5, p0, Lcom/android/camera/ui/GLRootView;->mMatrixValues:[F

    .line 343
    .local v5, matrix:[F
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->getValues([F)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 344
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/GLRootView;->drawRect(IIII[FF)V

    .line 345
    return-void
.end method

.method public drawTexture(Lcom/android/camera/ui/Texture;IIII)V
    .locals 7
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/GLRootView;->drawTexture(Lcom/android/camera/ui/Texture;IIIIF)V

    .line 428
    return-void
.end method

.method public drawTexture(Lcom/android/camera/ui/Texture;IIIIF)V
    .locals 9
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "alpha"

    .prologue
    const/4 v6, 0x0

    .line 392
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1, p0, v0}, Lcom/android/camera/ui/Texture;->bind(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot bind"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_0
    if-lez p4, :cond_1

    if-gtz p5, :cond_2

    .line 418
    :cond_1
    :goto_0
    return-void

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 398
    .local v1, matrix:Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mMatrixValues:[F

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 402
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mMatrixValues:[F

    invoke-static {v0}, Lcom/android/camera/ui/GLRootView;->isMatrixRotatedOrFlipped([F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 403
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mCoordBuffer:[F

    invoke-virtual {p1, v0, v6}, Lcom/android/camera/ui/Texture;->getTextureCoords([FI)V

    .line 404
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/ui/GLRootView;->mCoordBuffer:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 405
    iget-object v5, p0, Lcom/android/camera/ui/GLRootView;->mMatrixValues:[F

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/GLRootView;->drawRect(IIII[FF)V

    goto :goto_0

    .line 408
    :cond_3
    add-int v3, p3, p5

    add-int v4, p2, p4

    move-object v0, p0

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/GLRootView;->mapPoints(Landroid/graphics/Matrix;IIII)[F

    move-result-object v8

    .line 409
    .local v8, points:[F
    aget v0, v8, v6

    float-to-int p2, v0

    .line 410
    const/4 v0, 0x1

    aget v0, v8, v0

    float-to-int p3, v0

    .line 411
    const/4 v0, 0x2

    aget v0, v8, v0

    float-to-int v0, v0

    sub-int p4, v0, p2

    .line 412
    const/4 v0, 0x3

    aget v0, v8, v0

    float-to-int v0, v0

    sub-int p5, v0, p3

    .line 413
    if-lez p4, :cond_1

    if-lez p5, :cond_1

    .line 414
    invoke-direct {p0, p6}, Lcom/android/camera/ui/GLRootView;->setAlphaValue(F)V

    .line 415
    iget-object v2, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v2, Ljavax/microedition/khronos/opengles/GL11Ext;

    move v3, p2

    move v4, p3

    move v5, v6

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    goto :goto_0
.end method

.method public freeTransformation(Landroid/view/animation/Transformation;)V
    .locals 1
    .parameter "freeTransformation"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mFreeTransform:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public getContentPane()Lcom/android/camera/ui/GLView;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mContentView:Lcom/android/camera/ui/GLView;

    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 497
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/GLRootView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method protected getTimerLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getTransformation()Landroid/view/animation/Transformation;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method handleLowMemory()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public obtainTransformation()Landroid/view/animation/Transformation;
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/camera/ui/GLRootView;->mFreeTransform:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/camera/ui/GLRootView;->mFreeTransform:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Transformation;

    .line 141
    .local v0, t:Landroid/view/animation/Transformation;
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    move-object v1, v0

    .line 144
    .end local v0           #t:Landroid/view/animation/Transformation;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 563
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 564
    .local v0, var:Landroid/os/ConditionVariable;
    monitor-enter p0

    .line 565
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLRootView;->mIsQueueActive:Z

    .line 566
    new-instance v1, Lcom/android/camera/ui/GLRootView$1;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/ui/GLRootView$1;-><init>(Lcom/android/camera/ui/GLRootView;Landroid/os/ConditionVariable;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    .line 571
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 575
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 576
    return-void

    .line 571
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    const/4 v6, 0x1

    .line 445
    iget v4, p0, Lcom/android/camera/ui/GLRootView;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/GLRootView;->layoutContentPane()V

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->clearClip()V

    .line 447
    const/16 v4, 0x4400

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 448
    const/16 v4, 0xbe2

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 449
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f08

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 450
    invoke-interface {p1, v6, v6}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 455
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/GLRootView;->mAnimationTime:J

    .line 456
    iget-object v4, p0, Lcom/android/camera/ui/GLRootView;->mContentView:Lcom/android/camera/ui/GLView;

    if-eqz v4, :cond_1

    .line 457
    iget-object v4, p0, Lcom/android/camera/ui/GLRootView;->mContentView:Lcom/android/camera/ui/GLView;

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .end local p1
    invoke-virtual {v4, p0, p1}, Lcom/android/camera/ui/GLView;->render(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 459
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 460
    .local v2, now:J
    iget-object v4, p0, Lcom/android/camera/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 461
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    goto :goto_1

    .line 452
    .end local v0           #animation:Landroid/view/animation/Animation;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #now:J
    .restart local p1
    :cond_2
    const/16 v4, 0x303

    invoke-interface {p1, v6, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    goto :goto_0

    .line 463
    .end local p1
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #now:J
    :cond_3
    iget-object v4, p0, Lcom/android/camera/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 464
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 240
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->requestLayoutContentPane()V

    .line 241
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 8
    .parameter "gl1"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 292
    const-string v3, "GLRootView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSurfaceChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", gl10: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 295
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL11;
    iput-object v1, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 296
    invoke-interface {v1, v7, v7, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    .line 298
    const/16 v3, 0x1701

    invoke-interface {v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 299
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 301
    int-to-float v3, p2

    int-to-float v4, p3

    invoke-static {v1, v6, v3, v6, v4}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 302
    iget-object v3, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 303
    .local v2, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 304
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 305
    const/high16 v3, 0x3f80

    const/high16 v4, -0x4080

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 306
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 9
    .parameter "gl1"
    .parameter "config"

    .prologue
    const/16 v8, 0x1406

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 248
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 249
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v2, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v2, :cond_0

    .line 251
    const-string v2, "GLRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLObject has changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    iput-object v1, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 256
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/GLRootView;->setRenderMode(I)V

    .line 262
    const/4 v2, -0x4

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 263
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/GLRootView;->mGLThread:Ljava/lang/Thread;

    .line 266
    const/16 v2, 0xb50

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 269
    const/16 v2, 0xbe2

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 270
    const/16 v2, 0xc11

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 271
    const/16 v2, 0xb90

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 272
    const v2, 0x8074

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 273
    const v2, 0x8078

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 274
    const/16 v2, 0xde1

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 276
    const/16 v2, 0x2300

    const/16 v3, 0x2200

    const v4, 0x45f00800

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 280
    invoke-interface {v1, v5, v5, v5, v5}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 281
    invoke-interface {v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glClearStencil(I)V

    .line 282
    iget-object v2, p0, Lcom/android/camera/ui/GLRootView;->mVertexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v7, v8, v6, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 283
    iget-object v2, p0, Lcom/android/camera/ui/GLRootView;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v7, v8, v6, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 284
    return-void
.end method

.method public popTransform()V
    .locals 2

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/camera/ui/GLRootView;->mTransformStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Transformation;

    .line 164
    .local v0, trans:Landroid/view/animation/Transformation;
    iget-object v1, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GLRootView;->freeTransformation(Landroid/view/animation/Transformation;)V

    .line 166
    return-void
.end method

.method public pushTransform()Landroid/view/animation/Transformation;
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->obtainTransformation()Landroid/view/animation/Transformation;

    move-result-object v0

    .line 157
    .local v0, trans:Landroid/view/animation/Transformation;
    iget-object v1, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 158
    iget-object v1, p0, Lcom/android/camera/ui/GLRootView;->mTransformStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v1, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    return-object v1
.end method

.method public declared-synchronized queueEventOrThrowException(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 555
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/ui/GLRootView;->mIsQueueActive:Z

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GLThread has exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 558
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    monitor-exit p0

    return-void
.end method

.method registerLaunchedAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public declared-synchronized requestLayoutContentPane()V
    .locals 1

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mContentView:Lcom/android/camera/ui/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/GLRootView;->mFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 221
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/camera/ui/GLRootView;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 223
    iget v0, p0, Lcom/android/camera/ui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/GLRootView;->mFlags:I

    .line 224
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->requestRender()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public runInGLThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 169
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/GLRootView;->mGLThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 170
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setContentPane(Lcom/android/camera/ui/GLView;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/ui/GLRootView;->mContentView:Lcom/android/camera/ui/GLView;

    .line 201
    invoke-virtual {p1, p0}, Lcom/android/camera/ui/GLView;->onAttachToRoot(Lcom/android/camera/ui/GLRootView;)V

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/GLView;->onAddToParent(Lcom/android/camera/ui/GLView;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->requestLayoutContentPane()V

    .line 206
    return-void
.end method
