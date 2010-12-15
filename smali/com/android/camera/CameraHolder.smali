.class public Lcom/android/camera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraHolder$MyHandler;
    }
.end annotation


# static fields
.field private static final RELEASE_CAMERA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraHolder"

.field private static sHolder:Lcom/android/camera/CameraHolder;


# instance fields
.field private mCameraDevice:Lcom/android/camera/hardware/Camera;

.field private mCameraNode:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mKeepBeforeTime:J

.field private mParameters:Lcom/android/camera/hardware/Camera$Parameters;

.field private mSwitchingMode:Z

.field private mUsers:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J

    .line 50
    iput v3, p0, Lcom/android/camera/CameraHolder;->mUsers:I

    .line 51
    const-string v1, "main"

    iput-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraNode:Ljava/lang/String;

    .line 52
    iput-boolean v3, p0, Lcom/android/camera/CameraHolder;->mSwitchingMode:Z

    .line 93
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraHolder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 95
    new-instance v1, Lcom/android/camera/CameraHolder$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/CameraHolder$MyHandler;-><init>(Lcom/android/camera/CameraHolder;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/CameraHolder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/camera/CameraHolder;->mUsers:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/CameraHolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/CameraHolder;->releaseCamera()V

    return-void
.end method

.method public static declared-synchronized instance()Lcom/android/camera/CameraHolder;
    .locals 2

    .prologue
    .line 63
    const-class v0, Lcom/android/camera/CameraHolder;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Lcom/android/camera/CameraHolder;

    invoke-direct {v1}, Lcom/android/camera/CameraHolder;-><init>()V

    sput-object v1, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;

    .line 66
    :cond_0
    sget-object v1, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized releaseCamera()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 158
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/android/camera/CameraHolder;->mUsers:I

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/android/camera/Util;->Assert(Z)V

    .line 159
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/android/camera/Util;->Assert(Z)V

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 161
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 162
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :goto_2
    monitor-exit p0

    return-void

    .end local v0           #now:J
    :cond_0
    move v2, v4

    .line 158
    goto :goto_0

    :cond_1
    move v2, v4

    .line 159
    goto :goto_1

    .line 166
    .restart local v0       #now:J
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v2}, Lcom/android/camera/hardware/Camera;->release()V

    .line 167
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/hardware/Camera;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 158
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized getCameraDevice()Lcom/android/camera/hardware/Camera;
    .locals 1

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->Assert(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCameraNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraNode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keep()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 174
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraHolder;->mUsers:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/CameraHolder;->mUsers:I

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->Assert(Z)V

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open()Lcom/android/camera/hardware/Camera;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "CameraHolder"

    .line 100
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/camera/CameraHolder;->mUsers:I

    if-nez v1, :cond_2

    move v1, v3

    :goto_0
    invoke-static {v1}, Lcom/android/camera/Util;->Assert(Z)V

    .line 101
    iget-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/CameraHolder;->mSwitchingMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 103
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v1}, Lcom/android/camera/hardware/Camera;->release()V

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraNode:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/hardware/Camera;->open(Ljava/lang/String;)Lcom/android/camera/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/CameraHolder;->mSwitchingMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v1}, Lcom/android/camera/hardware/Camera;->getParameters()Lcom/android/camera/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraHolder;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    .line 122
    :goto_1
    iget v1, p0, Lcom/android/camera/CameraHolder;->mUsers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/CameraHolder;->mUsers:I

    .line 123
    iget-object v1, p0, Lcom/android/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J

    .line 125
    iget-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/hardware/Camera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_2
    move v1, v2

    .line 100
    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 109
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v1, "CameraHolder"

    const-string v2, "fail to connect Camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    new-instance v1, Lcom/android/camera/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/android/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 115
    :cond_3
    :try_start_4
    iget-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v1}, Lcom/android/camera/hardware/Camera;->reconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 120
    :try_start_5
    iget-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/Camera;->setParameters(Lcom/android/camera/hardware/Camera$Parameters;)V

    goto :goto_1

    .line 116
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 117
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CameraHolder"

    const-string v2, "reconnect failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v1, Lcom/android/camera/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/android/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 146
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraHolder;->mUsers:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->Assert(Z)V

    .line 147
    iget v0, p0, Lcom/android/camera/CameraHolder;->mUsers:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CameraHolder;->mUsers:I

    .line 148
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/hardware/Camera;

    invoke-virtual {v0}, Lcom/android/camera/hardware/Camera;->stopPreview()V

    .line 149
    invoke-direct {p0}, Lcom/android/camera/CameraHolder;->releaseCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCameraNode(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraNode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraHolder;->mSwitchingMode:Z

    .line 183
    :cond_0
    if-nez p1, :cond_1

    const-string v0, "main"

    :goto_0
    iput-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraNode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    :cond_1
    move-object v0, p1

    .line 183
    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tryOpen()Lcom/android/camera/hardware/Camera;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 134
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/camera/CameraHolder;->mUsers:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CameraHolder;->open()Lcom/android/camera/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 141
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    move-object v1, v3

    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 138
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    :try_start_1
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0       #e:Lcom/android/camera/CameraHardwareException;
    :cond_1
    move-object v1, v3

    .line 141
    goto :goto_0
.end method
