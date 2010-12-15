.class public Lcom/android/camera/ThumbnailController;
.super Ljava/lang/Object;
.source "ThumbnailController.java"


# static fields
.field private static final BUFSIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "ThumbnailController"


# instance fields
.field private final mButton:Landroid/widget/ImageView;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mResources:Landroid/content/res/Resources;

.field private mShouldAnimateThumb:Z

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/widget/ImageView;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "resources"
    .parameter "button"
    .parameter "contentResolver"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/camera/ThumbnailController;->mResources:Landroid/content/res/Resources;

    .line 64
    iput-object p2, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    .line 65
    iput-object p3, p0, Lcom/android/camera/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    .line 66
    return-void
.end method

.method private updateThumb(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "original"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 163
    if-nez p1, :cond_0

    .line 164
    iput-object v3, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    .line 165
    iput-object v3, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 187
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ThumbnailController;->getThumbnailWidth()I

    move-result v2

    .line 170
    .local v2, miniThumbWidth:I
    invoke-virtual {p0}, Lcom/android/camera/ThumbnailController;->getThumbnailHeight()I

    move-result v1

    .line 171
    .local v1, miniThumbHeight:I
    invoke-static {p1, v2, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    .line 174
    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 175
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 176
    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/camera/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget-object v6, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v7

    .line 177
    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v3, v7

    .line 178
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iput-boolean v8, p0, Lcom/android/camera/ThumbnailController;->mShouldAnimateThumb:Z

    .line 186
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 180
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    aput-object v4, v3, v8

    .line 181
    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/camera/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget-object v6, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v7

    .line 182
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v4, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/android/camera/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 183
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 184
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    iput-boolean v7, p0, Lcom/android/camera/ThumbnailController;->mShouldAnimateThumb:Z

    goto :goto_1
.end method


# virtual methods
.method public getThumbnailHeight()I
    .locals 4

    .prologue
    .line 156
    iget-object v2, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 157
    .local v1, param:Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    sub-int v0, v2, v3

    .line 159
    .local v0, miniThumbHeight:I
    return v0
.end method

.method public getThumbnailWidth()I
    .locals 4

    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 150
    .local v1, param:Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .line 152
    .local v0, miniThumbWidth:I
    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isUriValid()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 190
    iget-object v2, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    move v2, v5

    .line 204
    :goto_0
    return v2

    .line 194
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 196
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 197
    const-string v2, "ThumbnailController"

    const-string v3, "Fail to open URI."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 198
    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    const/4 v2, 0x1

    goto :goto_0

    .line 201
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/io/IOException;
    move v2, v5

    .line 202
    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;)Z
    .locals 10
    .parameter "filePath"

    .prologue
    .line 115
    const/4 v5, 0x0

    .line 116
    .local v5, f:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 117
    .local v0, b:Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 119
    .local v2, d:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v5           #f:Ljava/io/FileInputStream;
    .local v6, f:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v9, 0x1000

    invoke-direct {v1, v6, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    .end local v0           #b:Ljava/io/BufferedInputStream;
    .local v1, b:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 122
    .end local v2           #d:Ljava/io/DataInputStream;
    .local v3, d:Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 123
    .local v8, uri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 124
    .local v7, thumb:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v8, v7}, Lcom/android/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 125
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 129
    invoke-static {v6}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v1}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 131
    invoke-static {v3}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 133
    const/4 v9, 0x1

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataInputStream;
    .restart local v2       #d:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .end local v7           #thumb:Landroid/graphics/Bitmap;
    .end local v8           #uri:Landroid/net/Uri;
    .restart local v5       #f:Ljava/io/FileInputStream;
    :goto_0
    return v9

    .line 126
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 127
    .local v4, e:Ljava/io/IOException;
    :goto_1
    const/4 v9, 0x0

    .line 129
    invoke-static {v5}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v0}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 131
    invoke-static {v2}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 129
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_2
    invoke-static {v5}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v0}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 131
    invoke-static {v2}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .line 129
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v2           #d:Ljava/io/DataInputStream;
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v3       #d:Ljava/io/DataInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v9

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataInputStream;
    .restart local v2       #d:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_2

    .line 126
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catch_1
    move-exception v9

    move-object v4, v9

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catch_2
    move-exception v9

    move-object v4, v9

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v2           #d:Ljava/io/DataInputStream;
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v3       #d:Ljava/io/DataInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catch_3
    move-exception v9

    move-object v4, v9

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataInputStream;
    .restart local v2       #d:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "uri"
    .parameter "original"

    .prologue
    .line 71
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 72
    :cond_0
    const/4 p1, 0x0

    .line 73
    const/4 p2, 0x0

    .line 75
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    .line 76
    invoke-direct {p0, p2}, Lcom/android/camera/ThumbnailController;->updateThumb(Landroid/graphics/Bitmap;)V

    .line 77
    return-void
.end method

.method public storeData(Ljava/lang/String;)Z
    .locals 11
    .parameter "filePath"

    .prologue
    const/4 v10, 0x0

    .line 88
    iget-object v7, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    if-nez v7, :cond_0

    move v7, v10

    .line 109
    :goto_0
    return v7

    .line 92
    :cond_0
    const/4 v5, 0x0

    .line 93
    .local v5, f:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 94
    .local v0, b:Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 96
    .local v2, d:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v5           #f:Ljava/io/FileOutputStream;
    .local v6, f:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x1000

    invoke-direct {v1, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .local v1, b:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 99
    .end local v2           #d:Ljava/io/DataOutputStream;
    .local v3, d:Ljava/io/DataOutputStream;
    :try_start_3
    iget-object v7, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 100
    iget-object v7, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v7, v8, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 101
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 105
    invoke-static {v6}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 106
    invoke-static {v1}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 107
    invoke-static {v3}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 109
    const/4 v7, 0x1

    goto :goto_0

    .line 102
    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .end local v3           #d:Ljava/io/DataOutputStream;
    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 105
    .local v4, e:Ljava/io/IOException;
    :goto_1
    invoke-static {v5}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 106
    invoke-static {v0}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 107
    invoke-static {v2}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    move v7, v10

    goto :goto_0

    .line 105
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    invoke-static {v5}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 106
    invoke-static {v0}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 107
    invoke-static {v2}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v7

    .line 105
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v7

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 102
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    move-object v4, v7

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    move-object v4, v7

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v7

    move-object v4, v7

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public updateDisplayIfNeeded()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ThumbnailController;->mShouldAnimateThumb:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ThumbnailController;->mShouldAnimateThumb:Z

    goto :goto_0
.end method
