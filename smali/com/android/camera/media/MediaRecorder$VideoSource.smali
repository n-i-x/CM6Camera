.class public final Lcom/android/camera/media/MediaRecorder$VideoSource;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VideoSource"
.end annotation


# static fields
.field public static final CAMERA:I = 0x1

.field public static final DEFAULT:I


# instance fields
.field final synthetic this$0:Lcom/android/camera/media/MediaRecorder;


# direct methods
.method private constructor <init>(Lcom/android/camera/media/MediaRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/camera/media/MediaRecorder$VideoSource;->this$0:Lcom/android/camera/media/MediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
