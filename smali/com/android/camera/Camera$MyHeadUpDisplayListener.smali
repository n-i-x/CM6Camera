.class Lcom/android/camera/Camera$MyHeadUpDisplayListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/ui/HeadUpDisplay$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHeadUpDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 2147
    iput-object p1, p0, Lcom/android/camera/Camera$MyHeadUpDisplayListener;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2147
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$MyHeadUpDisplayListener;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onPopupWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 2168
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 2

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/android/camera/Camera$MyHeadUpDisplayListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/Camera$MyHeadUpDisplayListener$2;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$MyHeadUpDisplayListener$2;-><init>(Lcom/android/camera/Camera$MyHeadUpDisplayListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2165
    return-void
.end method

.method public onSharedPreferencesChanged()V
    .locals 2

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/android/camera/Camera$MyHeadUpDisplayListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/Camera$MyHeadUpDisplayListener$1;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$MyHeadUpDisplayListener$1;-><init>(Lcom/android/camera/Camera$MyHeadUpDisplayListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2157
    return-void
.end method
