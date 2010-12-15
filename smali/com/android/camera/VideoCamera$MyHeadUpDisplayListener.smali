.class Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Lcom/android/camera/ui/HeadUpDisplay$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHeadUpDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1853
    iput-object p1, p0, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1853
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;-><init>(Lcom/android/camera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onPopupWindowVisibilityChanged(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1900(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener$3;-><init>(Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1876
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 2

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1900(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener$2;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener$2;-><init>(Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1868
    return-void
.end method

.method public onSharedPreferencesChanged()V
    .locals 2

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1900(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener$1;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener$1;-><init>(Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1860
    return-void
.end method
