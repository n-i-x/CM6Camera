.class Lcom/android/camera/Camera$6;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->overrideHudSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;

.field final synthetic val$flashMode:Ljava/lang/String;

.field final synthetic val$focusMode:Ljava/lang/String;

.field final synthetic val$whiteBalance:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 931
    iput-object p1, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    iput-object p2, p0, Lcom/android/camera/Camera$6;->val$flashMode:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/Camera$6;->val$whiteBalance:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/Camera$6;->val$focusMode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 933
    iget-object v0, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "pref_camera_flashmode_key"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/camera/Camera$6;->val$flashMode:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HeadUpDisplay;->overrideSettings([Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "pref_camera_whitebalance_key"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/camera/Camera$6;->val$whiteBalance:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HeadUpDisplay;->overrideSettings([Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "pref_camera_focusmode_key"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/camera/Camera$6;->val$focusMode:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HeadUpDisplay;->overrideSettings([Ljava/lang/String;)V

    .line 939
    return-void
.end method
