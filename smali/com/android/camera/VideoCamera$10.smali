.class Lcom/android/camera/VideoCamera$10;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoCamera;->onRestorePreferencesClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1886
    iput-object p1, p0, Lcom/android/camera/VideoCamera$10;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/android/camera/VideoCamera$10;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v1, p0, Lcom/android/camera/VideoCamera$10;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v1, v1, Lcom/android/camera/VideoCamera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HeadUpDisplay;->restorePreferences(Lcom/android/camera/hardware/Camera$Parameters;)V

    .line 1889
    return-void
.end method
