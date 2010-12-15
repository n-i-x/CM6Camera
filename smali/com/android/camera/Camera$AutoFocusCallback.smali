.class final Lcom/android/camera/Camera$AutoFocusCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1369
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$AutoFocusCallback;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLcom/android/camera/hardware/Camera;)V
    .locals 8
    .parameter "focused"
    .parameter "camera"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    .line 1373
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/camera/Camera;->access$5302(Lcom/android/camera/Camera;J)J

    .line 1374
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$5300(Lcom/android/camera/Camera;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/Camera;->access$5400(Lcom/android/camera/Camera;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/camera/Camera;->mAutoFocusTime:J

    .line 1375
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<PROFILE> mAutoFocusTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v3, v3, Lcom/android/camera/Camera;->mAutoFocusTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$5100(Lcom/android/camera/Camera;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1380
    if-eqz p1, :cond_1

    .line 1381
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1, v6}, Lcom/android/camera/Camera;->access$5102(Lcom/android/camera/Camera;I)I

    .line 1385
    :goto_0
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$2700(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageCapture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera$ImageCapture;->onSnap()V

    .line 1404
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$5200(Lcom/android/camera/Camera;)V

    .line 1405
    return-void

    .line 1383
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1, v7}, Lcom/android/camera/Camera;->access$5102(Lcom/android/camera/Camera;I)I

    goto :goto_0

    .line 1386
    :cond_2
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$5100(Lcom/android/camera/Camera;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 1389
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    iget-boolean v1, v1, Lcom/android/camera/Camera;->classicAutoMode:Z

    if-nez v1, :cond_3

    const-string v1, "macro"

    iget-object v2, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1390
    :cond_3
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$5500(Lcom/android/camera/Camera;)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 1391
    .local v0, tg:Landroid/media/ToneGenerator;
    if-eqz v0, :cond_4

    .line 1392
    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 1395
    .end local v0           #tg:Landroid/media/ToneGenerator;
    :cond_4
    if-eqz p1, :cond_5

    .line 1396
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1, v6}, Lcom/android/camera/Camera;->access$5102(Lcom/android/camera/Camera;I)I

    goto :goto_1

    .line 1398
    :cond_5
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1, v7}, Lcom/android/camera/Camera;->access$5102(Lcom/android/camera/Camera;I)I

    goto :goto_1

    .line 1400
    :cond_6
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$5100(Lcom/android/camera/Camera;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1
.end method
