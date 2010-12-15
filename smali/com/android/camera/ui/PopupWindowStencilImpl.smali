.class public Lcom/android/camera/ui/PopupWindowStencilImpl;
.super Lcom/android/camera/ui/PopupWindow;
.source "PopupWindowStencilImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/camera/ui/PopupWindow;-><init>()V

    return-void
.end method


# virtual methods
.method protected renderBackground(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 13
    .parameter "rootView"
    .parameter "gl"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/16 v10, 0x1e00

    .line 27
    invoke-virtual {p0}, Lcom/android/camera/ui/PopupWindowStencilImpl;->getWidth()I

    move-result v6

    .line 28
    .local v6, width:I
    invoke-virtual {p0}, Lcom/android/camera/ui/PopupWindowStencilImpl;->getHeight()I

    move-result v4

    .line 29
    .local v4, height:I
    iget-object v7, p0, Lcom/android/camera/ui/PopupWindowStencilImpl;->mAnchor:Lcom/android/camera/ui/Texture;

    invoke-virtual {v7}, Lcom/android/camera/ui/Texture;->getWidth()I

    move-result v1

    .line 30
    .local v1, aWidth:I
    iget-object v7, p0, Lcom/android/camera/ui/PopupWindowStencilImpl;->mAnchor:Lcom/android/camera/ui/Texture;

    invoke-virtual {v7}, Lcom/android/camera/ui/Texture;->getHeight()I

    move-result v0

    .line 32
    .local v0, aHeight:I
    iget-object v5, p0, Lcom/android/camera/ui/PopupWindowStencilImpl;->mPaddings:Landroid/graphics/Rect;

    .line 33
    .local v5, p:Landroid/graphics/Rect;
    sub-int v2, v6, v1

    .line 34
    .local v2, aXoffset:I
    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/camera/ui/PopupWindowStencilImpl;->mAnchorPosition:I

    div-int/lit8 v9, v0, 0x2

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 35
    .local v3, aYoffset:I
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v7, v0

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 37
    iget-object v7, p0, Lcom/android/camera/ui/PopupWindowStencilImpl;->mAnchor:Lcom/android/camera/ui/Texture;

    if-eqz v7, :cond_0

    .line 38
    const/16 v7, 0x1e01

    invoke-interface {p2, v10, v10, v7}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    .line 39
    const/16 v7, 0x207

    invoke-interface {p2, v7, v11, v11}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    .line 40
    iget-object v7, p0, Lcom/android/camera/ui/PopupWindowStencilImpl;->mAnchor:Lcom/android/camera/ui/Texture;

    invoke-virtual {v7, p1, v2, v3}, Lcom/android/camera/ui/Texture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 41
    const/16 v7, 0x205

    invoke-interface {p2, v7, v11, v11}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    .line 42
    invoke-interface {p2, v10, v10, v10}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    .line 45
    :cond_0
    iget-object v7, p0, Lcom/android/camera/ui/PopupWindowStencilImpl;->mBackground:Lcom/android/camera/ui/FrameTexture;

    if-eqz v7, :cond_1

    .line 46
    iget-object v7, p0, Lcom/android/camera/ui/PopupWindowStencilImpl;->mBackground:Lcom/android/camera/ui/FrameTexture;

    sub-int v8, v6, v1

    iget v9, p0, Lcom/android/camera/ui/PopupWindowStencilImpl;->mAnchorOffset:I

    add-int/2addr v8, v9

    invoke-virtual {v7, v8, v4}, Lcom/android/camera/ui/FrameTexture;->setSize(II)V

    .line 47
    iget-object v7, p0, Lcom/android/camera/ui/PopupWindowStencilImpl;->mBackground:Lcom/android/camera/ui/FrameTexture;

    invoke-virtual {v7, p1, v12, v12}, Lcom/android/camera/ui/FrameTexture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 49
    :cond_1
    return-void
.end method
