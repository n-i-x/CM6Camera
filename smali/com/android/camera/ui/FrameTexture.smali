.class public abstract Lcom/android/camera/ui/FrameTexture;
.super Lcom/android/camera/ui/Texture;
.source "FrameTexture.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/camera/ui/Texture;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL11;II)V
    .locals 0
    .parameter "gl"
    .parameter "id"
    .parameter "state"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/Texture;-><init>(Ljavax/microedition/khronos/opengles/GL11;II)V

    .line 30
    return-void
.end method


# virtual methods
.method public abstract getPaddings()Landroid/graphics/Rect;
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/Texture;->setSize(II)V

    .line 35
    return-void
.end method
