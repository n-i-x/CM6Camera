.class Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener$3;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;->onPopupWindowVisibilityChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1871
    iput-object p1, p0, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener$3;->this$1:Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;

    iput p2, p0, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener$3;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener$3;->this$1:Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;

    iget-object v0, v0, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;->this$0:Lcom/android/camera/VideoCamera;

    iget v1, p0, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener$3;->val$visibility:I

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$2700(Lcom/android/camera/VideoCamera;I)V

    .line 1874
    return-void
.end method
