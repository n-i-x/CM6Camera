.class Lcom/android/camera/Camera$12;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->onRestorePreferencesClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 2173
    iput-object p1, p0, Lcom/android/camera/Camera$12;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2175
    iget-object v0, p0, Lcom/android/camera/Camera$12;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v1, p0, Lcom/android/camera/Camera$12;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/Camera;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HeadUpDisplay;->restorePreferences(Lcom/android/camera/hardware/Camera$Parameters;)V

    .line 2176
    return-void
.end method
