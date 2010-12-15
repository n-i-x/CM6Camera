.class Lcom/android/camera/Camera$7$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera$7;->onZoomChanged(IFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/Camera$7;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/camera/Camera$7;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 971
    iput-object p1, p0, Lcom/android/camera/Camera$7$1;->this$1:Lcom/android/camera/Camera$7;

    iput p2, p0, Lcom/android/camera/Camera$7$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/camera/Camera$7$1;->this$1:Lcom/android/camera/Camera$7;

    iget-object v0, v0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/Camera$7$1;->val$index:I

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->onZoomValueChanged(I)V

    .line 974
    return-void
.end method
