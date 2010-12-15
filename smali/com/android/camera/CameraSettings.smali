.class public Lcom/android/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# static fields
.field public static final CAMERA_MODE:I = 0x0

.field public static final CURRENT_VERSION:I = 0x4

.field private static final DEFAULT_VIDEO_DURATION:I = 0x708

.field public static final DEFAULT_VIDEO_DURATION_VALUE:I = 0x1e

.field public static final DEFAULT_VIDEO_QUALITY_VALUE:Ljava/lang/String; = "high"

.field public static final EXPOSURE_DEFAULT_VALUE:Ljava/lang/String; = "0.0"

.field public static final HTC_CAM_MODE:Ljava/lang/String; = "cam-mode"

.field public static final KEY_ANTIBANDING:Ljava/lang/String; = "pref_camera_antibanding_key"

.field public static final KEY_AUDIO_ENCODER:Ljava/lang/String; = "pref_camera_audioencoder_key"

.field public static final KEY_AUTOEXPOSURE:Ljava/lang/String; = "pref_camera_autoexposure_key"

.field public static final KEY_BRIGHTNESS:Ljava/lang/String; = "pref_camera_brightness_key"

.field public static final KEY_COLOR_EFFECT:Ljava/lang/String; = "pref_camera_coloreffect_key"

.field public static final KEY_CONTRAST:Ljava/lang/String; = "pref_camera_contrast_key"

.field public static final KEY_EXPOSURE:Ljava/lang/String; = "pref_camera_exposure_key"

.field public static final KEY_FLASH_MODE:Ljava/lang/String; = "pref_camera_flashmode_key"

.field public static final KEY_FOCUS_MODE:Ljava/lang/String; = "pref_camera_focusmode_key"

.field public static final KEY_ISO:Ljava/lang/String; = "pref_camera_iso_key"

.field public static final KEY_JPEG_QUALITY:Ljava/lang/String; = "pref_camera_jpegquality_key"

.field public static final KEY_LENSSHADING:Ljava/lang/String; = "pref_camera_lensshading_key"

.field public static final KEY_PICTURE_SIZE:Ljava/lang/String; = "pref_camera_picturesize_key"

.field public static final KEY_QUICK_CAPTURE:Ljava/lang/String; = "pref_camera_quickcapture_key"

.field public static final KEY_RECORD_LOCATION:Ljava/lang/String; = "pref_camera_recordlocation_key"

.field public static final KEY_SATURATION:Ljava/lang/String; = "pref_camera_saturation_key"

.field public static final KEY_SCENE_MODE:Ljava/lang/String; = "pref_camera_scenemode_key"

.field public static final KEY_SHARPNESS:Ljava/lang/String; = "pref_camera_sharpness_key"

.field public static final KEY_STABLESHOT:Ljava/lang/String; = "pref_camera_stableshot_key"

.field public static final KEY_VERSION:Ljava/lang/String; = "pref_version_key"

.field public static final KEY_VIDEOCAMERA_FLASH_MODE:Ljava/lang/String; = "pref_camera_video_flashmode_key"

.field public static final KEY_VIDEOCAMERA_FOCUS_MODE:Ljava/lang/String; = "pref_camera_video_focusmode_key"

.field public static final KEY_VIDEO_DURATION:Ljava/lang/String; = "pref_camera_video_duration_key"

.field public static final KEY_VIDEO_ENCODER:Ljava/lang/String; = "pref_camera_videoencoder_key"

.field public static final KEY_VIDEO_QUALITY:Ljava/lang/String; = "pref_video_quality_key"

.field public static final KEY_VIDEO_SIZE:Ljava/lang/String; = "pref_camera_videosize_key"

.field public static final KEY_WHITE_BALANCE:Ljava/lang/String; = "pref_camera_whitebalance_key"

#the value of this static final field might be set in the static constructor
.field private static final MMS_VIDEO_DURATION:I = 0x0

.field private static final NOT_FOUND:I = -0x1

.field public static final QUICK_CAPTURE_OFF:Ljava/lang/String; = "off"

.field public static final QUICK_CAPTURE_ON:Ljava/lang/String; = "on"

.field private static final TAG:Ljava/lang/String; = "CameraSettings"

.field public static final VIDEO_MODE:I = 0x1

.field private static final VIDEO_QUALITY_HIGH:Ljava/lang/String; = "high"

.field private static final VIDEO_QUALITY_MMS:Ljava/lang/String; = "mms"

.field private static final VIDEO_QUALITY_YOUTUBE:Ljava/lang/String; = "youtube"

.field private static final YOUTUBE_VIDEO_DURATION:I = 0x384


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mParameters:Lcom/android/camera/hardware/Camera$Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->duration:I

    sput v0, Lcom/android/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/camera/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "activity"
    .parameter "parameters"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/android/camera/CameraSettings;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    .line 102
    return-void
.end method

.method public static disableZoom(Lcom/android/camera/hardware/Camera$Parameters;)Z
    .locals 2
    .parameter "params"

    .prologue
    .line 436
    const-string v0, "auto"

    invoke-virtual {p0}, Lcom/android/camera/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dumpParameters(Lcom/android/camera/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/android/camera/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, paramList:[Ljava/lang/String;
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 452
    .local v1, sortedParams:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 453
    const-string v2, "CameraSettings"

    invoke-virtual {v1}, Ljava/util/TreeSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method private filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V
    .locals 3
    .parameter "group"
    .parameter "pref"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/PreferenceGroup;",
            "Lcom/android/camera/ListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p3, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 328
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 339
    :cond_1
    :goto_0
    return-void

    .line 332
    :cond_2
    invoke-virtual {p2, p3}, Lcom/android/camera/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 335
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p2, v0}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 337
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    goto :goto_0
.end method

.method public static getCamcorderProfile(Z)Landroid/media/CamcorderProfile;
    .locals 2
    .parameter "highQuality"

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, profile:I
    if-eqz p0, :cond_0

    .line 401
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 403
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v1

    return-object v1

    .line 401
    :cond_1
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0
.end method

.method public static getDefaultVideoQualityValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "high"

    return-object v0
.end method

.method public static getVideoQuality(Ljava/lang/String;)Z
    .locals 1
    .parameter "quality"

    .prologue
    .line 395
    const-string v0, "youtube"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "high"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getVidoeDurationInMillis(Ljava/lang/String;)I
    .locals 1
    .parameter "quality"

    .prologue
    .line 411
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    sget v0, Lcom/android/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    mul-int/lit16 v0, v0, 0x3e8

    .line 416
    :goto_0
    return v0

    .line 413
    :cond_0
    const-string v0, "youtube"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    const v0, 0xdbba0

    goto :goto_0

    .line 416
    :cond_1
    const v0, 0x1b7740

    goto :goto_0
.end method

.method public static hasTouchFocusSupport(Lcom/android/camera/hardware/Camera$Parameters;)Z
    .locals 1
    .parameter "parameters"

    .prologue
    .line 161
    const-string v0, "taking-picture-zoom"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initPreference(Lcom/android/camera/PreferenceGroup;)V
    .locals 33
    .parameter "group"

    .prologue
    .line 165
    const-string v30, "pref_video_quality_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v27

    .line 166
    .local v27, videoQuality:Lcom/android/camera/ListPreference;
    const-string v30, "pref_camera_videosize_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v28

    .line 167
    .local v28, videoSize:Lcom/android/camera/ListPreference;
    const-string v30, "pref_camera_picturesize_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v17

    .line 168
    .local v17, pictureSize:Lcom/android/camera/ListPreference;
    const-string v30, "pref_camera_whitebalance_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v29

    .line 169
    .local v29, whiteBalance:Lcom/android/camera/ListPreference;
    const-string v30, "pref_camera_coloreffect_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v8

    .line 170
    .local v8, colorEffect:Lcom/android/camera/ListPreference;
    const-string v30, "pref_camera_scenemode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v18

    .line 171
    .local v18, sceneMode:Lcom/android/camera/ListPreference;
    const-string v30, "pref_camera_flashmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v10

    .line 172
    .local v10, flashMode:Lcom/android/camera/ListPreference;
    const-string v30, "pref_camera_focusmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v11

    .line 173
    .local v11, focusMode:Lcom/android/camera/ListPreference;
    const-string v30, "pref_camera_video_flashmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v25

    .line 175
    .local v25, videoFlashMode:Lcom/android/camera/ListPreference;
    const-string v30, "pref_camera_video_focusmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v26

    .line 177
    .local v26, videoFocusMode:Lcom/android/camera/ListPreference;
    const-string v30, "pref_camera_iso_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v15

    .line 178
    .local v15, iso:Lcom/android/camera/ListPreference;
    const-string v30, "pref_camera_lensshading_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v16

    .line 179
    .local v16, lensShade:Lcom/android/camera/ListPreference;
    const-string v30, "pref_camera_antibanding_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 180
    .local v4, antiBanding:Lcom/android/camera/ListPreference;
    const-string v30, "pref_camera_autoexposure_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    .line 181
    .local v6, autoExposure:Lcom/android/camera/ListPreference;
    const-string v30, "pref_camera_videoencoder_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v24

    .line 182
    .local v24, videoEncoder:Lcom/android/camera/ListPreference;
    const-string v30, "pref_camera_audioencoder_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 186
    .local v5, audioEncoder:Lcom/android/camera/ListPreference;
    if-eqz v27, :cond_0

    .line 190
    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 191
    .local v9, entries:[Ljava/lang/CharSequence;
    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v22

    .line 192
    .local v22, values:[Ljava/lang/CharSequence;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move-object v0, v9

    array-length v0, v0

    move/from16 v30, v0

    move v0, v13

    move/from16 v1, v30

    if-ge v0, v1, :cond_0

    .line 193
    const-string v30, "mms"

    aget-object v31, v22, v13

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 194
    aget-object v30, v9, v13

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    const-string v31, "30"

    sget v32, Lcom/android/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v9, v13

    .line 202
    .end local v9           #entries:[Ljava/lang/CharSequence;
    .end local v13           #i:I
    .end local v22           #values:[Ljava/lang/CharSequence;
    :cond_0
    if-eqz v5, :cond_1

    .line 203
    new-instance v30, Ljava/util/ArrayList;

    sget-object v31, Lcom/android/camera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-virtual/range {v31 .. v31}, Lcom/android/camera/VideoCamera$DefaultHashMap;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 206
    :cond_1
    if-eqz v28, :cond_9

    if-eqz v24, :cond_9

    .line 207
    new-instance v30, Ljava/util/ArrayList;

    sget-object v31, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-virtual/range {v31 .. v31}, Lcom/android/camera/VideoCamera$DefaultHashMap;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 209
    sget-object v30, Lcom/android/camera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoCamera$DefaultHashMap;

    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/VideoCamera$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #audioEncoder:Lcom/android/camera/ListPreference;
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 210
    .local v19, selectedEncoder:I
    const/4 v7, 0x0

    .line 211
    .local v7, cap:Landroid/media/EncoderCapabilities$VideoEncoderCap;
    invoke-static {}, Landroid/media/EncoderCapabilities;->getVideoEncoders()Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/media/EncoderCapabilities$VideoEncoderCap;

    .line 212
    .local v23, vc:Landroid/media/EncoderCapabilities$VideoEncoderCap;
    move-object/from16 v0, v23

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 213
    move-object/from16 v7, v23

    .line 217
    .end local v23           #vc:Landroid/media/EncoderCapabilities$VideoEncoderCap;
    :cond_3
    if-nez v7, :cond_4

    .line 218
    const-string v30, "CameraSettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unknown encoder! "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_4
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v21, validSizesForEncoder:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/camera/hardware/Camera$Size;

    .line 223
    .local v20, size:Lcom/android/camera/hardware/Camera$Size;
    const-string v30, "main"

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/camera/CameraHolder;->getCameraNode()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_6

    .line 225
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/camera/hardware/Camera$Size;->width:I

    move/from16 v30, v0

    const/16 v31, 0x280

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/camera/hardware/Camera$Size;->height:I

    move/from16 v30, v0

    const/16 v31, 0x1e0

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_5

    .line 229
    :cond_6
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/camera/hardware/Camera$Size;->width:I

    move/from16 v30, v0

    move-object v0, v7

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/camera/hardware/Camera$Size;->height:I

    move/from16 v30, v0

    move-object v0, v7

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_5

    .line 230
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 192
    .end local v7           #cap:Landroid/media/EncoderCapabilities$VideoEncoderCap;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v19           #selectedEncoder:I
    .end local v20           #size:Lcom/android/camera/hardware/Camera$Size;
    .end local v21           #validSizesForEncoder:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/hardware/Camera$Size;>;"
    .restart local v5       #audioEncoder:Lcom/android/camera/ListPreference;
    .restart local v9       #entries:[Ljava/lang/CharSequence;
    .restart local v13       #i:I
    .restart local v22       #values:[Ljava/lang/CharSequence;
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 233
    .end local v5           #audioEncoder:Lcom/android/camera/ListPreference;
    .end local v9           #entries:[Ljava/lang/CharSequence;
    .end local v13           #i:I
    .end local v22           #values:[Ljava/lang/CharSequence;
    .restart local v7       #cap:Landroid/media/EncoderCapabilities$VideoEncoderCap;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v19       #selectedEncoder:I
    .restart local v21       #validSizesForEncoder:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/hardware/Camera$Size;>;"
    :cond_8
    invoke-static/range {v21 .. v21}, Lcom/android/camera/CameraSettings;->sizeListToStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 236
    .end local v7           #cap:Landroid/media/EncoderCapabilities$VideoEncoderCap;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v19           #selectedEncoder:I
    .end local v21           #validSizesForEncoder:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/hardware/Camera$Size;>;"
    :cond_9
    if-eqz v17, :cond_a

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/camera/CameraSettings;->sizeListToStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 240
    :cond_a
    if-eqz v29, :cond_b

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 244
    :cond_b
    if-eqz v8, :cond_c

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 248
    :cond_c
    if-eqz v18, :cond_d

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 252
    :cond_d
    if-eqz v10, :cond_e

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 256
    :cond_e
    if-eqz v11, :cond_10

    .line 257
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMainCamera()Z

    move-result v30

    if-eqz v30, :cond_18

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v12

    .line 259
    .local v12, focusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/CameraSettings;->hasTouchFocusSupport(Lcom/android/camera/hardware/Camera$Parameters;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 260
    const-string v30, "touch"

    move-object v0, v12

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_f
    const-string v30, "classic"

    move-object v0, v12

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 269
    .end local v12           #focusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    :goto_2
    if-eqz v26, :cond_12

    .line 270
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMainCamera()Z

    move-result v30

    if-eqz v30, :cond_19

    .line 271
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .restart local v12       #focusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v30, "auto"

    move-object v0, v12

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    const-string v30, "infinity"

    move-object v0, v12

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/CameraSettings;->hasTouchFocusSupport(Lcom/android/camera/hardware/Camera$Parameters;)Z

    move-result v30

    if-eqz v30, :cond_11

    .line 275
    const-string v30, "touch"

    move-object v0, v12

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 283
    .end local v12           #focusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_12
    :goto_3
    if-eqz v25, :cond_13

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 287
    :cond_13
    if-eqz v15, :cond_14

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 291
    :cond_14
    if-eqz v16, :cond_15

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedLensShadeModes()Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 295
    :cond_15
    if-eqz v4, :cond_16

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 299
    :cond_16
    if-eqz v6, :cond_17

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedAutoexposure()Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 303
    :cond_17
    return-void

    .line 266
    :cond_18
    invoke-virtual {v11}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 280
    :cond_19
    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    goto/16 :goto_3
.end method

.method public static initialCameraPictureSize(Landroid/content/Context;Lcom/android/camera/hardware/Camera$Parameters;)V
    .locals 8
    .parameter "context"
    .parameter "parameters"

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/android/camera/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 122
    .local v5, supported:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/hardware/Camera$Size;>;"
    if-nez v5, :cond_0

    .line 134
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 125
    .local v1, candidate:Ljava/lang/String;
    invoke-static {v1, v5, p1}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Lcom/android/camera/hardware/Camera$Parameters;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 126
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraHolder;->getCameraNode()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 128
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_camera_picturesize_key"

    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 123
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 133
    .end local v1           #candidate:Ljava/lang/String;
    :cond_2
    const-string v6, "CameraSettings"

    const-string v7, "No supported picture size found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static is720p(Lcom/android/camera/hardware/Camera$Parameters;)Z
    .locals 3
    .parameter "params"

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/android/camera/hardware/Camera$Parameters;->getPreviewSize()Lcom/android/camera/hardware/Camera$Size;

    move-result-object v0

    .line 446
    .local v0, size:Lcom/android/camera/hardware/Camera$Size;
    iget v1, v0, Lcom/android/camera/hardware/Camera$Size;->width:I

    const/16 v2, 0x500

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/camera/hardware/Camera$Size;->height:I

    const/16 v2, 0x2d0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMainCamera()Z
    .locals 2

    .prologue
    .line 407
    const-string v0, "main"

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraNode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVideoZoomSupported(Lcom/android/camera/hardware/Camera$Parameters;)Z
    .locals 2
    .parameter "params"

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/android/camera/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    .line 428
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 430
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->is720p(Lcom/android/camera/hardware/Camera$Parameters;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 432
    :cond_0
    :goto_0
    return v0

    .line 430
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private static removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z
    .locals 6
    .parameter "group"
    .parameter "key"

    .prologue
    const/4 v5, 0x1

    .line 306
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p0}, Lcom/android/camera/PreferenceGroup;->size()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 307
    invoke-virtual {p0, v2}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v1

    .line 308
    .local v1, child:Lcom/android/camera/CameraPreference;
    instance-of v4, v1, Lcom/android/camera/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 309
    move-object v0, v1

    check-cast v0, Lcom/android/camera/PreferenceGroup;

    move-object v4, v0

    invoke-static {v4, p1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 319
    .end local v1           #child:Lcom/android/camera/CameraPreference;
    :goto_1
    return v4

    .line 313
    .restart local v1       #child:Lcom/android/camera/CameraPreference;
    :cond_0
    instance-of v4, v1, Lcom/android/camera/ListPreference;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/android/camera/ListPreference;

    .end local v1           #child:Lcom/android/camera/CameraPreference;
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 315
    invoke-virtual {p0, v2}, Lcom/android/camera/PreferenceGroup;->removePreference(I)V

    move v4, v5

    .line 316
    goto :goto_1

    .line 306
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V
    .locals 0
    .parameter "group"
    .parameter "key"

    .prologue
    .line 138
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 139
    return-void
.end method

.method public static setCamMode(Lcom/android/camera/hardware/Camera$Parameters;I)V
    .locals 4
    .parameter "params"
    .parameter "mode"

    .prologue
    const-string v3, "cam-mode"

    .line 420
    const-string v0, "cam-mode"

    invoke-virtual {p0, v3}, Lcom/android/camera/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set cam-mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v0, "cam-mode"

    invoke-virtual {p0, v3, p1}, Lcom/android/camera/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 424
    :cond_0
    return-void
.end method

.method public static setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Lcom/android/camera/hardware/Camera$Parameters;)Z
    .locals 7
    .parameter "candidate"
    .parameter
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/hardware/Camera$Size;",
            ">;",
            "Lcom/android/camera/hardware/Camera$Parameters;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/hardware/Camera$Size;>;"
    const/4 v6, 0x0

    .line 143
    if-nez p1, :cond_0

    move v5, v6

    .line 156
    :goto_0
    return v5

    .line 146
    :cond_0
    const/16 v5, 0x78

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 147
    .local v2, index:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    move v5, v6

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 149
    .local v4, width:I
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 150
    .local v0, height:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/hardware/Camera$Size;

    .line 151
    .local v3, size:Lcom/android/camera/hardware/Camera$Size;
    iget v5, v3, Lcom/android/camera/hardware/Camera$Size;->width:I

    if-ne v5, v4, :cond_2

    iget v5, v3, Lcom/android/camera/hardware/Camera$Size;->height:I

    if-ne v5, v0, :cond_2

    .line 152
    invoke-virtual {p2, v4, v0}, Lcom/android/camera/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 153
    const/4 v5, 0x1

    goto :goto_0

    .end local v3           #size:Lcom/android/camera/hardware/Camera$Size;
    :cond_3
    move v5, v6

    .line 156
    goto :goto_0
.end method

.method private static sizeListToStringList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/hardware/Camera$Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/hardware/Camera$Size;

    .line 344
    .local v2, size:Lcom/android/camera/hardware/Camera$Size;
    const-string v3, "%dx%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v2, Lcom/android/camera/hardware/Camera$Size;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v2, Lcom/android/camera/hardware/Camera$Size;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    .end local v2           #size:Lcom/android/camera/hardware/Camera$Size;
    :cond_0
    return-object v1
.end method

.method public static upgradePreferences(Landroid/content/SharedPreferences;)V
    .locals 11
    .parameter "pref"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const-string v10, "pref_version_key"

    const-string v9, "pref_camera_recordlocation_key"

    const-string v8, "pref_camera_jpegquality_key"

    .line 352
    :try_start_0
    const-string v4, "pref_version_key"

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 356
    .local v3, version:I
    :goto_0
    if-ne v3, v7, :cond_0

    .line 392
    :goto_1
    return-void

    .line 353
    .end local v3           #version:I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 354
    .local v1, ex:Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3       #version:I
    goto :goto_0

    .line 358
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 359
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez v3, :cond_1

    .line 362
    const/4 v3, 0x1

    .line 364
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 366
    const-string v4, "pref_camera_jpegquality_key"

    const-string v4, "85"

    invoke-interface {p0, v8, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, quality:Ljava/lang/String;
    const-string v4, "65"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 368
    const-string v2, "normal"

    .line 374
    :goto_2
    const-string v4, "pref_camera_jpegquality_key"

    invoke-interface {v0, v8, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 375
    const/4 v3, 0x2

    .line 377
    .end local v2           #quality:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 378
    const-string v4, "pref_camera_recordlocation_key"

    const-string v4, "pref_camera_recordlocation_key"

    invoke-interface {p0, v9, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "on"

    :goto_3
    invoke-interface {v0, v9, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 382
    const/4 v3, 0x3

    .line 384
    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 387
    const-string v4, "pref_camera_videoquality_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 388
    const-string v4, "pref_camera_video_duration_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 390
    :cond_4
    const-string v4, "pref_version_key"

    invoke-interface {v0, v10, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 391
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 369
    .restart local v2       #quality:Ljava/lang/String;
    :cond_5
    const-string v4, "75"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 370
    const-string v2, "fine"

    goto :goto_2

    .line 372
    :cond_6
    const-string v2, "superfine"

    goto :goto_2

    .line 378
    .end local v2           #quality:Ljava/lang/String;
    :cond_7
    const-string v4, "none"

    goto :goto_3
.end method

.method public static useLegacyAF(Lcom/android/camera/hardware/Camera$Parameters;)Z
    .locals 2
    .parameter "params"

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/camera/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;
    .locals 3
    .parameter "preferenceRes"

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/android/camera/PreferenceInflater;

    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/camera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 110
    .local v1, inflater:Lcom/android/camera/PreferenceInflater;
    invoke-virtual {v1, p1}, Lcom/android/camera/PreferenceInflater;->inflate(I)Lcom/android/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreferenceGroup;

    .line 112
    .local v0, group:Lcom/android/camera/PreferenceGroup;
    invoke-direct {p0, v0}, Lcom/android/camera/CameraSettings;->initPreference(Lcom/android/camera/PreferenceGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-object v0

    .line 109
    .end local v0           #group:Lcom/android/camera/PreferenceGroup;
    .end local v1           #inflater:Lcom/android/camera/PreferenceInflater;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
