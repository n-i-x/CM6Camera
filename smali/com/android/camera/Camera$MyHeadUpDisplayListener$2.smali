.class Lcom/android/camera/Camera$MyHeadUpDisplayListener$2;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera$MyHeadUpDisplayListener;->onRestorePreferencesClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/Camera$MyHeadUpDisplayListener;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera$MyHeadUpDisplayListener;)V
    .locals 0
    .parameter

    .prologue
    .line 2160
    iput-object p1, p0, Lcom/android/camera/Camera$MyHeadUpDisplayListener$2;->this$1:Lcom/android/camera/Camera$MyHeadUpDisplayListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/android/camera/Camera$MyHeadUpDisplayListener$2;->this$1:Lcom/android/camera/Camera$MyHeadUpDisplayListener;

    iget-object v0, v0, Lcom/android/camera/Camera$MyHeadUpDisplayListener;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->onRestorePreferencesClicked()V

    .line 2163
    return-void
.end method
