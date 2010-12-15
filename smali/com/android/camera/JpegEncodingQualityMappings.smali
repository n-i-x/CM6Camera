.class Lcom/android/camera/JpegEncodingQualityMappings;
.super Ljava/lang/Object;
.source "Camera.java"


# static fields
.field private static final DEFAULT_QUALITY:I = 0x55

.field private static final TAG:Ljava/lang/String; = "JpegEncodingQualityMappings"

.field private static mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/JpegEncodingQualityMappings;->mHashMap:Ljava/util/HashMap;

    .line 2274
    sget-object v0, Lcom/android/camera/JpegEncodingQualityMappings;->mHashMap:Ljava/util/HashMap;

    const-string v1, "normal"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2275
    sget-object v0, Lcom/android/camera/JpegEncodingQualityMappings;->mHashMap:Ljava/util/HashMap;

    const-string v1, "fine"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2276
    sget-object v0, Lcom/android/camera/JpegEncodingQualityMappings;->mHashMap:Ljava/util/HashMap;

    const-string v1, "superfine"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2277
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 2267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQualityNumber(Ljava/lang/String;)I
    .locals 4
    .parameter "jpegQuality"

    .prologue
    .line 2282
    sget-object v1, Lcom/android/camera/JpegEncodingQualityMappings;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2283
    .local v0, quality:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 2284
    const-string v1, "JpegEncodingQualityMappings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Jpeg quality: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    const/16 v1, 0x55

    .line 2287
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v1

    goto :goto_0
.end method
