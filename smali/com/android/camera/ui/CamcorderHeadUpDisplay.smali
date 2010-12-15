.class public Lcom/android/camera/ui/CamcorderHeadUpDisplay;
.super Lcom/android/camera/ui/HeadUpDisplay;
.source "CamcorderHeadUpDisplay.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "CamcorderHeadUpDisplay"


# instance fields
.field private mOtherSettings:Lcom/android/camera/ui/OtherSettingsIndicator;

.field private mVideoQualitySettings:Lcom/android/camera/ui/BasicIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "context"
    .parameter "params"

    .prologue
    .line 34
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isVideoZoomSupported(Lcom/android/camera/hardware/Camera$Parameters;)Z

    move-result v0

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->disableZoom(Lcom/android/camera/hardware/Camera$Parameters;)Z

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/ui/HeadUpDisplay;-><init>(Landroid/content/Context;Lcom/android/camera/hardware/Camera$Parameters;ZZ)V

    .line 35
    return-void
.end method


# virtual methods
.method protected initializeIndicatorBar(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V
    .locals 4
    .parameter "context"
    .parameter "group"

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/HeadUpDisplay;->initializeIndicatorBar(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V

    .line 42
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_camera_video_focusmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "pref_camera_scenemode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "pref_camera_picturesize_key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "pref_camera_jpegquality_key"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "pref_camera_coloreffect_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "pref_camera_autoexposure_key"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "pref_camera_videosize_key"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "pref_camera_videoencoder_key"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "pref_camera_audioencoder_key"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "pref_camera_video_duration_key"

    aput-object v3, v1, v2

    invoke-static {p2, v1}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->getListPreferences(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)[Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 54
    .local v0, prefs:[Lcom/android/camera/ListPreference;
    new-instance v1, Lcom/android/camera/ui/OtherSettingsIndicator;

    invoke-direct {v1, p1, v0}, Lcom/android/camera/ui/OtherSettingsIndicator;-><init>(Landroid/content/Context;[Lcom/android/camera/ListPreference;)V

    iput-object v1, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mOtherSettings:Lcom/android/camera/ui/OtherSettingsIndicator;

    .line 55
    iget-object v1, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mOtherSettings:Lcom/android/camera/ui/OtherSettingsIndicator;

    new-instance v2, Lcom/android/camera/ui/CamcorderHeadUpDisplay$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/CamcorderHeadUpDisplay$1;-><init>(Lcom/android/camera/ui/CamcorderHeadUpDisplay;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/OtherSettingsIndicator;->setOnRestorePreferencesClickedRunner(Ljava/lang/Runnable;)V

    .line 62
    iget-object v1, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    iget-object v2, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mOtherSettings:Lcom/android/camera/ui/OtherSettingsIndicator;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/IndicatorBar;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 64
    new-instance v1, Lcom/android/camera/ui/SettingsIndicator;

    iget-object v2, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/camera/ui/SettingsIndicator;-><init>(Landroid/content/Context;Lcom/android/camera/hardware/Camera$Parameters;Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mSettingsIndicator:Lcom/android/camera/ui/SettingsIndicator;

    .line 65
    iget-object v1, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mSettingsIndicator:Lcom/android/camera/ui/SettingsIndicator;

    invoke-virtual {v1}, Lcom/android/camera/ui/SettingsIndicator;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    iget-object v2, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mSettingsIndicator:Lcom/android/camera/ui/SettingsIndicator;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/IndicatorBar;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 69
    :cond_0
    const-string v1, "pref_camera_whitebalance_key"

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->addIndicator(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Lcom/android/camera/ui/BasicIndicator;

    .line 70
    const-string v1, "pref_camera_video_flashmode_key"

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->addIndicator(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Lcom/android/camera/ui/BasicIndicator;

    .line 71
    const-string v1, "pref_video_quality_key"

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->addIndicator(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Lcom/android/camera/ui/BasicIndicator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mVideoQualitySettings:Lcom/android/camera/ui/BasicIndicator;

    .line 73
    iget-boolean v1, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mZoomSupported:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mDisableZoom:Z

    if-nez v1, :cond_1

    .line 74
    new-instance v1, Lcom/android/camera/ui/ZoomIndicator;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/ZoomIndicator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mZoomIndicator:Lcom/android/camera/ui/ZoomIndicator;

    .line 75
    iget-object v1, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    iget-object v2, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mZoomIndicator:Lcom/android/camera/ui/ZoomIndicator;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/IndicatorBar;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 77
    :cond_1
    return-void
.end method

.method public setVideoQualityControlsEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mVideoQualitySettings:Lcom/android/camera/ui/BasicIndicator;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->mVideoQualitySettings:Lcom/android/camera/ui/BasicIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BasicIndicator;->setEnabled(Z)V

    .line 83
    :cond_0
    return-void
.end method
