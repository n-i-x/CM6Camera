.class Lcom/android/camera/VideoCamera$4;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoCamera;->overrideHudSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;

.field final synthetic val$audioEncoder:Ljava/lang/String;

.field final synthetic val$videoDuration:Ljava/lang/String;

.field final synthetic val$videoEncoder:Ljava/lang/String;

.field final synthetic val$videoSize:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/camera/VideoCamera$4;->this$0:Lcom/android/camera/VideoCamera;

    iput-object p2, p0, Lcom/android/camera/VideoCamera$4;->val$videoEncoder:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/VideoCamera$4;->val$audioEncoder:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/VideoCamera$4;->val$videoDuration:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/camera/VideoCamera$4;->val$videoSize:Ljava/lang/String;

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

    .line 537
    iget-object v0, p0, Lcom/android/camera/VideoCamera$4;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "pref_camera_videoencoder_key"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/camera/VideoCamera$4;->val$videoEncoder:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HeadUpDisplay;->overrideSettings([Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/android/camera/VideoCamera$4;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "pref_camera_audioencoder_key"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/camera/VideoCamera$4;->val$audioEncoder:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HeadUpDisplay;->overrideSettings([Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/android/camera/VideoCamera$4;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "pref_camera_video_duration_key"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/camera/VideoCamera$4;->val$videoDuration:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HeadUpDisplay;->overrideSettings([Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/android/camera/VideoCamera$4;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/HeadUpDisplay;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "pref_camera_videosize_key"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/camera/VideoCamera$4;->val$videoSize:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HeadUpDisplay;->overrideSettings([Ljava/lang/String;)V

    .line 545
    return-void
.end method
