.class public Lcom/android/camera/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ImageManager$1;,
        Lcom/android/camera/ImageManager$EmptyImageList;,
        Lcom/android/camera/ImageManager$DataLocation;,
        Lcom/android/camera/ImageManager$ImageListParam;
    }
.end annotation


# static fields
.field public static final CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String; = null

.field public static final CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String; = null

.field public static final INCLUDE_IMAGES:I = 0x1

.field public static final INCLUDE_VIDEOS:I = 0x4

.field public static final SORT_ASCENDING:I = 0x1

.field public static final SORT_DESCENDING:I = 0x2

.field private static final STORAGE_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "ImageManager"

.field private static final VIDEO_STORAGE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    .line 58
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/android/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/ImageManager;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;
    .locals 5
    .parameter "cr"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "directory"
    .parameter "filename"
    .parameter "source"
    .parameter "jpegData"
    .parameter "degree"

    .prologue
    .line 194
    const/4 v2, 0x0

    .line 195
    .local v2, outputStream:Ljava/io/OutputStream;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, filePath:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 199
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    invoke-direct {v0, p5, p6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v0, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    .end local v2           #outputStream:Ljava/io/OutputStream;
    .local v3, outputStream:Ljava/io/OutputStream;
    if-eqz p7, :cond_2

    .line 202
    :try_start_1
    sget-object p8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .end local p8
    const/16 v0, 0x4b

    invoke-virtual {p7, p8, v0, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 203
    .end local v0           #file:Ljava/io/File;
    const/4 p7, 0x0

    const/4 p8, 0x0

    aput p8, p9, p7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 215
    .end local p7
    :goto_0
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 219
    new-instance p7, Ljava/io/File;

    invoke-direct {p7, p5, p6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p7}, Ljava/io/File;->length()J

    move-result-wide p7

    .line 221
    .local p7, size:J
    new-instance p5, Landroid/content/ContentValues;

    .end local p5
    const/16 v0, 0x9

    invoke-direct {p5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 222
    .local p5, values:Landroid/content/ContentValues;
    const-string v0, "title"

    invoke-virtual {p5, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string p1, "_display_name"

    .end local p1
    invoke-virtual {p5, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string p1, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .end local p2
    invoke-virtual {p5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 229
    const-string p1, "mime_type"

    const-string p2, "image/jpeg"

    invoke-virtual {p5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string p1, "orientation"

    const/4 p2, 0x0

    aget p2, p9, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    const-string p1, "_data"

    invoke-virtual {p5, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string p1, "_size"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    if-eqz p4, :cond_1

    .line 235
    const-string p1, "latitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 236
    const-string p1, "longitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 239
    :cond_1
    sget-object p1, Lcom/android/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, p5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .end local p0
    move-object p1, p0

    move-object p0, v3

    .end local v3           #outputStream:Ljava/io/OutputStream;
    .end local p5           #values:Landroid/content/ContentValues;
    .end local p7           #size:J
    .local p0, outputStream:Ljava/io/OutputStream;
    :goto_1
    return-object p1

    .line 205
    .restart local v0       #file:Ljava/io/File;
    .restart local v3       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1
    .restart local p2
    .local p5, directory:Ljava/lang/String;
    .local p7, source:Landroid/graphics/Bitmap;
    .restart local p8
    :cond_2
    :try_start_2
    invoke-virtual {v3, p8}, Ljava/io/OutputStream;->write([B)V

    .line 206
    const/4 p7, 0x0

    invoke-static {v1}, Lcom/android/camera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    .end local p7           #source:Landroid/graphics/Bitmap;
    move-result p8

    .end local p8
    aput p8, p9, p7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 208
    .end local v0           #file:Ljava/io/File;
    :catch_0
    move-exception p0

    move-object p1, v3

    .line 209
    .end local v3           #outputStream:Ljava/io/OutputStream;
    .local p0, ex:Ljava/io/FileNotFoundException;
    .local p1, outputStream:Ljava/io/OutputStream;
    :goto_2
    :try_start_3
    const-string p2, "ImageManager"

    .end local p2
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 210
    const/4 p0, 0x0

    .line 215
    .end local p0           #ex:Ljava/io/FileNotFoundException;
    invoke-static {p1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, p1

    .end local p1           #outputStream:Ljava/io/OutputStream;
    .local v4, outputStream:Ljava/io/OutputStream;
    move-object p1, p0

    move-object p0, v4

    .end local v4           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_1

    .line 211
    .restart local v2       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p2
    .restart local p7       #source:Landroid/graphics/Bitmap;
    .restart local p8
    :catch_1
    move-exception p0

    move-object p1, v2

    .line 212
    .end local v2           #outputStream:Ljava/io/OutputStream;
    .end local p7           #source:Landroid/graphics/Bitmap;
    .end local p8
    .local p0, ex:Ljava/io/IOException;
    .local p1, outputStream:Ljava/io/OutputStream;
    :goto_3
    :try_start_4
    const-string p2, "ImageManager"

    .end local p2
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 213
    const/4 p0, 0x0

    .line 215
    .end local p0           #ex:Ljava/io/IOException;
    invoke-static {p1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, p1

    .end local p1           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    move-object p1, p0

    move-object p0, v4

    .end local v4           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_1

    .restart local v2       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p2
    .restart local p7       #source:Landroid/graphics/Bitmap;
    .restart local p8
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    .end local v2           #outputStream:Ljava/io/OutputStream;
    .end local p1           #title:Ljava/lang/String;
    .end local p2
    .end local p7           #source:Landroid/graphics/Bitmap;
    .end local p8
    .local p0, outputStream:Ljava/io/OutputStream;
    :goto_4
    invoke-static {p0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p1

    .restart local v3       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #title:Ljava/lang/String;
    .restart local p2
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    .end local v3           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_4

    .end local p0           #outputStream:Ljava/io/OutputStream;
    .end local p2
    .local p1, outputStream:Ljava/io/OutputStream;
    :catchall_2
    move-exception p0

    move-object v4, p0

    move-object p0, p1

    .end local p1           #outputStream:Ljava/io/OutputStream;
    .restart local p0       #outputStream:Ljava/io/OutputStream;
    move-object p1, v4

    goto :goto_4

    .line 211
    .restart local v3       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p2
    :catch_2
    move-exception p0

    move-object p1, v3

    .end local v3           #outputStream:Ljava/io/OutputStream;
    .local p1, outputStream:Ljava/io/OutputStream;
    goto :goto_3

    .line 208
    .restart local v2       #outputStream:Ljava/io/OutputStream;
    .local p1, title:Ljava/lang/String;
    .restart local p7       #source:Landroid/graphics/Bitmap;
    .restart local p8
    :catch_3
    move-exception p0

    move-object p1, v2

    .end local v2           #outputStream:Ljava/io/OutputStream;
    .local p1, outputStream:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method private static checkFsWritable()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/DCIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 365
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v6

    .line 381
    :goto_0
    return v4

    .line 369
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, ".probe"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .local v3, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 373
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 375
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v6

    .line 376
    goto :goto_0

    .line 378
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    const/4 v4, 0x1

    goto :goto_0

    .line 380
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, ex:Ljava/io/IOException;
    move v4, v6

    .line 381
    goto :goto_0
.end method

.method public static ensureOSXCompatibleFolder()V
    .locals 4

    .prologue
    .line 149
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/100ANDRO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, nnnAAAAA:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create NNNAAAAA file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    return-void
.end method

.method public static getBucketId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 8
    .parameter "filepath"

    .prologue
    const/4 v7, -0x1

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, degree:I
    const/4 v2, 0x0

    .line 246
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 250
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 251
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 253
    .local v4, orientation:I
    if-eq v4, v7, :cond_0

    .line 255
    packed-switch v4, :pswitch_data_0

    .line 269
    .end local v4           #orientation:I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 247
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 248
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 257
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v4       #orientation:I
    :pswitch_1
    const/16 v0, 0x5a

    .line 258
    goto :goto_1

    .line 260
    :pswitch_2
    const/16 v0, 0xb4

    .line 261
    goto :goto_1

    .line 263
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 255
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getImageListParam(Lcom/android/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/android/camera/ImageManager$ImageListParam;
    .locals 1
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 342
    new-instance v0, Lcom/android/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/android/camera/ImageManager$ImageListParam;-><init>()V

    .line 343
    .local v0, param:Lcom/android/camera/ImageManager$ImageListParam;
    iput-object p0, v0, Lcom/android/camera/ImageManager$ImageListParam;->mLocation:Lcom/android/camera/ImageManager$DataLocation;

    .line 344
    iput p1, v0, Lcom/android/camera/ImageManager$ImageListParam;->mInclusion:I

    .line 345
    iput p2, v0, Lcom/android/camera/ImageManager$ImageListParam;->mSort:I

    .line 346
    iput-object p3, v0, Lcom/android/camera/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 347
    return-object v0
.end method

.method public static getLastImageThumbPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails/image_last_thumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastVideoThumbPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails/video_last_thumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTempJpegPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.tempjpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasStorage()Z
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/ImageManager;->hasStorage(Z)Z

    move-result v0

    return v0
.end method

.method public static hasStorage(Z)Z
    .locals 4
    .parameter "requireWriteAccess"

    .prologue
    const/4 v3, 0x1

    .line 390
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    if-eqz p0, :cond_0

    .line 394
    invoke-static {}, Lcom/android/camera/ImageManager;->checkFsWritable()Z

    move-result v1

    .local v1, writable:Z
    move v2, v1

    .line 403
    .end local v1           #writable:Z
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 397
    goto :goto_0

    .line 399
    :cond_1
    if-nez p0, :cond_2

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 401
    goto :goto_0

    .line 403
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .locals 10
    .parameter "cr"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 422
    const/4 v7, 0x0

    .line 423
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/ImageManager;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 426
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 427
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 428
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 429
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 431
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 434
    :cond_1
    return v7
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/android/camera/gallery/IImageList;
    .locals 2
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 352
    invoke-static {p1, p2, p3, p4}, Lcom/android/camera/ImageManager;->getImageListParam(Lcom/android/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/android/camera/ImageManager$ImageListParam;

    move-result-object v0

    .line 354
    .local v0, param:Lcom/android/camera/ImageManager$ImageListParam;
    invoke-static {p0, v0}, Lcom/android/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$ImageListParam;)Lcom/android/camera/gallery/IImageList;

    move-result-object v1

    return-object v1
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$ImageListParam;)Lcom/android/camera/gallery/IImageList;
    .locals 14
    .parameter "cr"
    .parameter "param"

    .prologue
    const/4 v13, 0x0

    .line 275
    iget-object v7, p1, Lcom/android/camera/ImageManager$ImageListParam;->mLocation:Lcom/android/camera/ImageManager$DataLocation;

    .line 276
    .local v7, location:Lcom/android/camera/ImageManager$DataLocation;
    iget v2, p1, Lcom/android/camera/ImageManager$ImageListParam;->mInclusion:I

    .line 277
    .local v2, inclusion:I
    iget v8, p1, Lcom/android/camera/ImageManager$ImageListParam;->mSort:I

    .line 278
    .local v8, sort:I
    iget-object v0, p1, Lcom/android/camera/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 279
    .local v0, bucketId:Ljava/lang/String;
    iget-boolean v3, p1, Lcom/android/camera/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    .line 281
    .local v3, isEmptyImageList:Z
    if-nez v3, :cond_0

    if-nez p0, :cond_1

    .line 282
    :cond_0
    new-instance v11, Lcom/android/camera/ImageManager$EmptyImageList;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/android/camera/ImageManager$EmptyImageList;-><init>(Lcom/android/camera/ImageManager$1;)V

    .line 324
    .end local p0
    :goto_0
    return-object v11

    .line 286
    .restart local p0
    :cond_1
    invoke-static {v13}, Lcom/android/camera/ImageManager;->hasStorage(Z)Z

    move-result v1

    .line 289
    .local v1, haveSdCard:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v5, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/gallery/BaseImageList;>;"
    if-eqz v1, :cond_3

    sget-object v11, Lcom/android/camera/ImageManager$DataLocation;->INTERNAL:Lcom/android/camera/ImageManager$DataLocation;

    if-eq v7, v11, :cond_3

    .line 292
    and-int/lit8 v11, v2, 0x1

    if-eqz v11, :cond_2

    .line 293
    new-instance v11, Lcom/android/camera/gallery/ImageList;

    sget-object v12, Lcom/android/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    invoke-direct {v11, p0, v12, v8, v0}, Lcom/android/camera/gallery/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_2
    and-int/lit8 v11, v2, 0x4

    if-eqz v11, :cond_3

    .line 296
    new-instance v11, Lcom/android/camera/gallery/VideoList;

    sget-object v12, Lcom/android/camera/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    invoke-direct {v11, p0, v12, v8, v0}, Lcom/android/camera/gallery/VideoList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_3
    sget-object v11, Lcom/android/camera/ImageManager$DataLocation;->INTERNAL:Lcom/android/camera/ImageManager$DataLocation;

    if-eq v7, v11, :cond_4

    sget-object v11, Lcom/android/camera/ImageManager$DataLocation;->ALL:Lcom/android/camera/ImageManager$DataLocation;

    if-ne v7, v11, :cond_5

    .line 300
    :cond_4
    and-int/lit8 v11, v2, 0x1

    if-eqz v11, :cond_5

    .line 301
    new-instance v11, Lcom/android/camera/gallery/ImageList;

    sget-object v12, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v11, p0, v12, v8, v0}, Lcom/android/camera/gallery/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 309
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/camera/gallery/BaseImageList;>;"
    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 310
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/gallery/BaseImageList;

    .line 311
    .local v9, sublist:Lcom/android/camera/gallery/BaseImageList;
    invoke-virtual {v9}, Lcom/android/camera/gallery/BaseImageList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 312
    invoke-virtual {v9}, Lcom/android/camera/gallery/BaseImageList;->close()V

    .line 313
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 317
    .end local v9           #sublist:Lcom/android/camera/gallery/BaseImageList;
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 318
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/gallery/BaseImageList;

    .local v6, list:Lcom/android/camera/gallery/BaseImageList;
    move-object v11, v6

    .line 319
    goto :goto_0

    .line 322
    .end local v6           #list:Lcom/android/camera/gallery/BaseImageList;
    :cond_8
    new-instance v10, Lcom/android/camera/gallery/ImageListUber;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/camera/gallery/IImageList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/camera/gallery/IImageList;

    invoke-direct {v10, p0, v8}, Lcom/android/camera/gallery/ImageListUber;-><init>([Lcom/android/camera/gallery/IImageList;I)V

    .local v10, uber:Lcom/android/camera/gallery/ImageListUber;
    move-object v11, v10

    .line 324
    goto :goto_0
.end method

.method private static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v1, 0x0

    .line 410
    if-nez p0, :cond_0

    .line 416
    :goto_0
    return-object v1

    .line 413
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method

.method public static roundOrientation(I)I
    .locals 3
    .parameter "orientationInput"

    .prologue
    .line 159
    move v0, p0

    .line 161
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 165
    :cond_0
    rem-int/lit16 v0, v0, 0x168

    .line 167
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_1

    .line 168
    const/4 v1, 0x0

    .line 179
    .local v1, retVal:I
    :goto_0
    return v1

    .line 169
    .end local v1           #retVal:I
    :cond_1
    const/16 v2, 0x87

    if-ge v0, v2, :cond_2

    .line 170
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_0

    .line 171
    .end local v1           #retVal:I
    :cond_2
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_3

    .line 172
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_0

    .line 173
    .end local v1           #retVal:I
    :cond_3
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_4

    .line 174
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_0

    .line 176
    .end local v1           #retVal:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_0
.end method
