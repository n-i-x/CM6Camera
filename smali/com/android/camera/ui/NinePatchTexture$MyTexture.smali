.class Lcom/android/camera/ui/NinePatchTexture$MyTexture;
.super Lcom/android/camera/ui/CanvasTexture;
.source "NinePatchTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/NinePatchTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTexture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/NinePatchTexture;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/NinePatchTexture;II)V
    .locals 0
    .parameter
    .parameter "width"
    .parameter "height"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/camera/ui/NinePatchTexture$MyTexture;->this$0:Lcom/android/camera/ui/NinePatchTexture;

    .line 79
    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/CanvasTexture;-><init>(II)V

    .line 80
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "canvas"
    .parameter "backing"

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v1, p0, Lcom/android/camera/ui/NinePatchTexture$MyTexture;->this$0:Lcom/android/camera/ui/NinePatchTexture;

    invoke-virtual {v1}, Lcom/android/camera/ui/NinePatchTexture;->getNinePatch()Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    .line 85
    .local v0, npd:Landroid/graphics/drawable/NinePatchDrawable;
    iget v1, p0, Lcom/android/camera/ui/NinePatchTexture$MyTexture;->mWidth:I

    iget v2, p0, Lcom/android/camera/ui/NinePatchTexture$MyTexture;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 86
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 87
    return-void
.end method
