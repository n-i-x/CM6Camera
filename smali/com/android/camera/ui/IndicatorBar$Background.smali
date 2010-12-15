.class Lcom/android/camera/ui/IndicatorBar$Background;
.super Lcom/android/camera/ui/GLView;
.source "IndicatorBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/IndicatorBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Background"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/IndicatorBar;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/IndicatorBar;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/ui/IndicatorBar$Background;->this$0:Lcom/android/camera/ui/IndicatorBar;

    invoke-direct {p0}, Lcom/android/camera/ui/GLView;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/IndicatorBar;Lcom/android/camera/ui/IndicatorBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/ui/IndicatorBar$Background;-><init>(Lcom/android/camera/ui/IndicatorBar;)V

    return-void
.end method


# virtual methods
.method protected render(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 5
    .parameter "root"
    .parameter "gl"

    .prologue
    const/4 v4, 0x0

    .line 42
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorBar$Background;->this$0:Lcom/android/camera/ui/IndicatorBar;

    invoke-static {v1}, Lcom/android/camera/ui/IndicatorBar;->access$000(Lcom/android/camera/ui/IndicatorBar;)Lcom/android/camera/ui/NinePatchTexture;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorBar$Background;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorBar$Background;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/NinePatchTexture;->setSize(II)V

    .line 43
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorBar$Background;->this$0:Lcom/android/camera/ui/IndicatorBar;

    invoke-static {v1}, Lcom/android/camera/ui/IndicatorBar;->access$000(Lcom/android/camera/ui/IndicatorBar;)Lcom/android/camera/ui/NinePatchTexture;

    move-result-object v1

    invoke-virtual {v1, p1, v4, v4}, Lcom/android/camera/ui/NinePatchTexture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 45
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorBar$Background;->this$0:Lcom/android/camera/ui/IndicatorBar;

    invoke-static {v1}, Lcom/android/camera/ui/IndicatorBar;->access$100(Lcom/android/camera/ui/IndicatorBar;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorBar$Background;->this$0:Lcom/android/camera/ui/IndicatorBar;

    invoke-static {v1}, Lcom/android/camera/ui/IndicatorBar;->access$200(Lcom/android/camera/ui/IndicatorBar;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorBar$Background;->this$0:Lcom/android/camera/ui/IndicatorBar;

    invoke-static {v1}, Lcom/android/camera/ui/IndicatorBar;->access$300(Lcom/android/camera/ui/IndicatorBar;)Lcom/android/camera/ui/NinePatchTexture;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorBar$Background;->this$0:Lcom/android/camera/ui/IndicatorBar;

    iget-object v2, p0, Lcom/android/camera/ui/IndicatorBar$Background;->this$0:Lcom/android/camera/ui/IndicatorBar;

    invoke-static {v2}, Lcom/android/camera/ui/IndicatorBar;->access$200(Lcom/android/camera/ui/IndicatorBar;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/IndicatorBar;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v1

    iget-object v0, v1, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 49
    .local v0, bounds:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorBar$Background;->this$0:Lcom/android/camera/ui/IndicatorBar;

    invoke-static {v1}, Lcom/android/camera/ui/IndicatorBar;->access$300(Lcom/android/camera/ui/IndicatorBar;)Lcom/android/camera/ui/NinePatchTexture;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/NinePatchTexture;->setSize(II)V

    .line 50
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorBar$Background;->this$0:Lcom/android/camera/ui/IndicatorBar;

    invoke-static {v1}, Lcom/android/camera/ui/IndicatorBar;->access$300(Lcom/android/camera/ui/IndicatorBar;)Lcom/android/camera/ui/NinePatchTexture;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/camera/ui/NinePatchTexture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 52
    .end local v0           #bounds:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method
