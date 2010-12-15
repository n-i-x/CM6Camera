.class Lcom/android/camera/ui/CameraHeadUpDisplay$2;
.super Ljava/lang/Object;
.source "CameraHeadUpDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CameraHeadUpDisplay;->setGpsHasSignal(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CameraHeadUpDisplay;

.field final synthetic val$hasSignal:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CameraHeadUpDisplay;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay$2;->this$0:Lcom/android/camera/ui/CameraHeadUpDisplay;

    iput-boolean p2, p0, Lcom/android/camera/ui/CameraHeadUpDisplay$2;->val$hasSignal:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/CameraHeadUpDisplay$2;->this$0:Lcom/android/camera/ui/CameraHeadUpDisplay;

    invoke-static {v0}, Lcom/android/camera/ui/CameraHeadUpDisplay;->access$000(Lcom/android/camera/ui/CameraHeadUpDisplay;)Lcom/android/camera/ui/GpsIndicator;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay$2;->val$hasSignal:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GpsIndicator;->setHasSignal(Z)V

    .line 91
    return-void
.end method
