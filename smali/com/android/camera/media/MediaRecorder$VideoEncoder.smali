.class public final Lcom/android/camera/media/MediaRecorder$VideoEncoder;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VideoEncoder"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final H263:I = 0x1

.field public static final H264:I = 0x2

.field public static final MPEG_4_SP:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/camera/media/MediaRecorder;


# direct methods
.method private constructor <init>(Lcom/android/camera/media/MediaRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/camera/media/MediaRecorder$VideoEncoder;->this$0:Lcom/android/camera/media/MediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
