.class public Lcom/android/camera/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# static fields
.field public static final CANNOT_STAT_ERROR:I = -0x2

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final INCLUDE_ALL:I = -0x1

.field public static final INCLUDE_CROP_MENU:I = 0x8

.field public static final INCLUDE_DELETE_MENU:I = 0x10

.field public static final INCLUDE_DETAILS_MENU:I = 0x40

.field public static final INCLUDE_ROTATE_MENU:I = 0x20

.field public static final INCLUDE_SET_MENU:I = 0x4

.field public static final INCLUDE_SHARE_MENU:I = 0x2

.field public static final INCLUDE_SHOWMAP_MENU:I = 0x80

.field public static final INCLUDE_VIEWPLAY_MENU:I = 0x1

.field public static final INVALID_LATLNG:F = 255.0f

.field public static final JPEG_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field public static final MENU_IMAGE_SHARE:I = 0x1

.field public static final MENU_IMAGE_SHOWMAP:I = 0x2

.field private static final NO_ANIMATION:I = 0x0

.field public static final NO_STORAGE_ERROR:I = -0x1

.field public static final POSITION_CAMERA_SETTING:I = 0xf

.field public static final POSITION_CAPTURE_PICTURE:I = 0x4

.field public static final POSITION_CAPTURE_VIDEO:I = 0x5

.field public static final POSITION_DETAILS:I = 0xb

.field public static final POSITION_GALLERY_SETTING:I = 0x10

.field public static final POSITION_GOTO_GALLERY:I = 0x2

.field public static final POSITION_IMAGE_CROP:I = 0x9

.field public static final POSITION_IMAGE_ROTATE:I = 0x7

.field public static final POSITION_IMAGE_SET:I = 0xa

.field public static final POSITION_IMAGE_SHARE:I = 0x6

.field public static final POSITION_IMAGE_TOSS:I = 0x8

.field public static final POSITION_MULTISELECT:I = 0xe

.field public static final POSITION_SHOWMAP:I = 0xc

.field public static final POSITION_SLIDESHOW:I = 0xd

.field public static final POSITION_SWITCH_CAMERA_DEVICE:I = 0x11

.field public static final POSITION_SWITCH_CAMERA_MODE:I = 0x1

.field public static final POSITION_VIEWPLAY:I = 0x3

.field public static final RESULT_COMMON_MENU_CROP:I = 0x1ea

.field private static final TAG:Ljava/lang/String; = "MenuHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addSwitchDeviceMenuItem(Landroid/view/Menu;Ljava/lang/Runnable;)V
    .locals 5
    .parameter "menu"
    .parameter "r"

    .prologue
    const/16 v4, 0x11

    .line 141
    const-string v2, "secondary"

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraNode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0a009b

    move v0, v2

    .line 144
    .local v0, id:I
    :goto_0
    const/4 v2, 0x0

    invoke-interface {p0, v2, v4, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/camera/MenuHelper$3;

    invoke-direct {v3, p1}, Lcom/android/camera/MenuHelper$3;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    .line 152
    .local v1, item:Landroid/view/MenuItem;
    const v2, 0x108004d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 153
    return-void

    .line 141
    .end local v0           #id:I
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_0
    const v2, 0x7f0a009c

    move v0, v2

    goto :goto_0
.end method

.method static addSwitchModeMenuItem(Landroid/view/Menu;ZLjava/lang/Runnable;)V
    .locals 5
    .parameter "menu"
    .parameter "switchToVideo"
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    .line 123
    if-eqz p1, :cond_0

    const v3, 0x7f0a009a

    move v2, v3

    .line 126
    .local v2, labelId:I
    :goto_0
    if-eqz p1, :cond_1

    const v3, 0x7f020020

    move v0, v3

    .line 129
    .local v0, iconId:I
    :goto_1
    const/4 v3, 0x1

    invoke-interface {p0, v4, v4, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Lcom/android/camera/MenuHelper$2;

    invoke-direct {v4, p2}, Lcom/android/camera/MenuHelper$2;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    .line 137
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 138
    return-void

    .line 123
    .end local v0           #iconId:I
    .end local v1           #item:Landroid/view/MenuItem;
    .end local v2           #labelId:I
    :cond_0
    const v3, 0x7f0a0099

    move v2, v3

    goto :goto_0

    .line 126
    .restart local v2       #labelId:I
    :cond_1
    const v3, 0x1080037

    move v0, v3

    goto :goto_1
.end method

.method public static calculatePicturesRemaining()I
    .locals 7

    .prologue
    .line 211
    :try_start_0
    invoke-static {}, Lcom/android/camera/ImageManager;->hasStorage()Z

    move-result v5

    if-nez v5, :cond_0

    .line 212
    const/4 v5, -0x1

    .line 226
    :goto_0
    return v5

    .line 214
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, storageDirectory:Ljava/lang/String;
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 217
    .local v3, stat:Landroid/os/StatFs;
    const v0, 0x16e360

    .line 218
    .local v0, PICTURE_BYTES:I
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const v6, 0x49b71b00

    div-float v2, v5, v6

    .line 220
    .local v2, remaining:F
    float-to-int v5, v2

    goto :goto_0

    .line 222
    .end local v0           #PICTURE_BYTES:I
    .end local v2           #remaining:F
    .end local v3           #stat:Landroid/os/StatFs;
    .end local v4           #storageDirectory:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 226
    .local v1, ex:Ljava/lang/Exception;
    const/4 v5, -0x2

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 92
    if-eqz p0, :cond_0

    .line 94
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static confirmAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "action"

    .prologue
    .line 103
    new-instance v0, Lcom/android/camera/MenuHelper$1;

    invoke-direct {v0, p3}, Lcom/android/camera/MenuHelper$1;-><init>(Ljava/lang/Runnable;)V

    .line 111
    .local v0, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 119
    return-void
.end method

.method public static gotoCameraImageGallery(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 183
    const v0, 0x7f0a0004

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/camera/MenuHelper;->gotoGallery(Landroid/app/Activity;II)V

    .line 185
    return-void
.end method

.method public static gotoCameraMode(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 178
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-static {p0, v0}, Lcom/android/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public static gotoCameraVideoGallery(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 188
    const v0, 0x7f0a0005

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera/MenuHelper;->gotoGallery(Landroid/app/Activity;II)V

    .line 190
    return-void
.end method

.method private static gotoGallery(Landroid/app/Activity;II)V
    .locals 6
    .parameter "activity"
    .parameter "windowTitleId"
    .parameter "mediaTypes"

    .prologue
    .line 194
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "bucketId"

    sget-object v5, Lcom/android/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 197
    .local v2, target:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 198
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    const-string v3, "windowTitle"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v3, "mediaTypes"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "MenuHelper"

    const-string v4, "Could not start gallery activity"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static gotoVideoMode(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 174
    const-string v0, "android.media.action.VIDEO_CAMERA"

    invoke-static {p0, v0}, Lcom/android/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private static startCameraActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "action"

    .prologue
    const/4 v2, 0x0

    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->keep()V

    .line 169
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 170
    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 171
    return-void
.end method

.method static updateSwitchDeviceMenuItem(Landroid/view/Menu;Z)V
    .locals 2
    .parameter "menu"
    .parameter "switchToSecondary"

    .prologue
    .line 156
    const/16 v1, 0x11

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 157
    .local v0, item:Landroid/view/MenuItem;
    if-eqz p1, :cond_0

    const v1, 0x7f0a009c

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 158
    return-void

    .line 157
    :cond_0
    const v1, 0x7f0a009b

    goto :goto_0
.end method
