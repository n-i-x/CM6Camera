.class Lcom/android/camera/VideoCamera$8;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoCamera;->addBaseMenuItems(Landroid/view/Menu;)V
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
    .line 1371
    iput-object p1, p0, Lcom/android/camera/VideoCamera$8;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/camera/VideoCamera$8;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMainCamera()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$2300(Lcom/android/camera/VideoCamera;Z)Z

    .line 1374
    return-void
.end method
