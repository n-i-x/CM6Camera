.class Lcom/android/camera/ui/HeadUpDisplay$IndicatorBarListener;
.super Ljava/lang/Object;
.source "HeadUpDisplay.java"

# interfaces
.implements Lcom/android/camera/ui/IndicatorBar$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/HeadUpDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndicatorBarListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/HeadUpDisplay;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/HeadUpDisplay;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/camera/ui/HeadUpDisplay$IndicatorBarListener;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/HeadUpDisplay;Lcom/android/camera/ui/HeadUpDisplay$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HeadUpDisplay$IndicatorBarListener;-><init>(Lcom/android/camera/ui/HeadUpDisplay;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/android/camera/ui/GLView;I)V
    .locals 4
    .parameter "view"
    .parameter "position"

    .prologue
    .line 370
    move-object v0, p1

    check-cast v0, Lcom/android/camera/ui/AbstractIndicator;

    move-object v1, v0

    .line 371
    .local v1, indicator:Lcom/android/camera/ui/AbstractIndicator;
    iget-object v2, p0, Lcom/android/camera/ui/HeadUpDisplay$IndicatorBarListener;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-static {v2}, Lcom/android/camera/ui/HeadUpDisplay;->access$300(Lcom/android/camera/ui/HeadUpDisplay;)Lcom/android/camera/ui/PopupWindow;

    move-result-object v2

    if-nez v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/android/camera/ui/HeadUpDisplay$IndicatorBarListener;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v3, p0, Lcom/android/camera/ui/HeadUpDisplay$IndicatorBarListener;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v3}, Lcom/android/camera/ui/HeadUpDisplay;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/GLRootView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/HeadUpDisplay;->access$400(Lcom/android/camera/ui/HeadUpDisplay;Landroid/content/Context;)V

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/HeadUpDisplay$IndicatorBarListener;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-static {v2}, Lcom/android/camera/ui/HeadUpDisplay;->access$300(Lcom/android/camera/ui/HeadUpDisplay;)Lcom/android/camera/ui/PopupWindow;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/camera/ui/AbstractIndicator;->getPopupContent()Lcom/android/camera/ui/GLView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/PopupWindow;->setContent(Lcom/android/camera/ui/GLView;)V

    .line 376
    iget-object v2, p0, Lcom/android/camera/ui/HeadUpDisplay$IndicatorBarListener;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-static {v2}, Lcom/android/camera/ui/HeadUpDisplay;->access$300(Lcom/android/camera/ui/HeadUpDisplay;)Lcom/android/camera/ui/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/PopupWindow;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 377
    iget-object v2, p0, Lcom/android/camera/ui/HeadUpDisplay$IndicatorBarListener;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-static {v2, v1}, Lcom/android/camera/ui/HeadUpDisplay;->access$500(Lcom/android/camera/ui/HeadUpDisplay;Lcom/android/camera/ui/GLView;)V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/HeadUpDisplay$IndicatorBarListener;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-static {v2, v1}, Lcom/android/camera/ui/HeadUpDisplay;->access$600(Lcom/android/camera/ui/HeadUpDisplay;Lcom/android/camera/ui/GLView;)V

    goto :goto_0
.end method

.method public onNothingSelected()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay$IndicatorBarListener;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-static {v0}, Lcom/android/camera/ui/HeadUpDisplay;->access$700(Lcom/android/camera/ui/HeadUpDisplay;)V

    .line 385
    return-void
.end method
