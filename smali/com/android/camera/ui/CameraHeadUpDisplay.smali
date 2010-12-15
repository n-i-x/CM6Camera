.class public Lcom/android/camera/ui/CameraHeadUpDisplay;
.super Lcom/android/camera/ui/HeadUpDisplay;
.source "CameraHeadUpDisplay.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "CameraHeadUpDisplay"


# instance fields
.field private mGpsIndicator:Lcom/android/camera/ui/GpsIndicator;

.field private mOtherSettings:Lcom/android/camera/ui/OtherSettingsIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "context"
    .parameter "params"

    .prologue
    .line 35
    invoke-virtual {p2}, Lcom/android/camera/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/ui/HeadUpDisplay;-><init>(Landroid/content/Context;Lcom/android/camera/hardware/Camera$Parameters;ZZ)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/CameraHeadUpDisplay;)Lcom/android/camera/ui/GpsIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mGpsIndicator:Lcom/android/camera/ui/GpsIndicator;

    return-object v0
.end method


# virtual methods
.method protected initializeIndicatorBar(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V
    .locals 4
    .parameter "context"
    .parameter "group"

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/HeadUpDisplay;->initializeIndicatorBar(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V

    .line 43
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_camera_focusmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "pref_camera_scenemode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "pref_camera_coloreffect_key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "pref_camera_iso_key"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "pref_camera_lensshading_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "pref_camera_autoexposure_key"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "pref_camera_antibanding_key"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "pref_camera_stableshot_key"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "pref_camera_picturesize_key"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "pref_camera_jpegquality_key"

    aput-object v3, v1, v2

    invoke-static {p2, v1}, Lcom/android/camera/ui/CameraHeadUpDisplay;->getListPreferences(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)[Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 55
    .local v0, prefs:[Lcom/android/camera/ListPreference;
    new-instance v1, Lcom/android/camera/ui/OtherSettingsIndicator;

    invoke-direct {v1, p1, v0}, Lcom/android/camera/ui/OtherSettingsIndicator;-><init>(Landroid/content/Context;[Lcom/android/camera/ListPreference;)V

    iput-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mOtherSettings:Lcom/android/camera/ui/OtherSettingsIndicator;

    .line 56
    iget-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mOtherSettings:Lcom/android/camera/ui/OtherSettingsIndicator;

    new-instance v2, Lcom/android/camera/ui/CameraHeadUpDisplay$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/CameraHeadUpDisplay$1;-><init>(Lcom/android/camera/ui/CameraHeadUpDisplay;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/OtherSettingsIndicator;->setOnRestorePreferencesClickedRunner(Ljava/lang/Runnable;)V

    .line 63
    iget-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    iget-object v2, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mOtherSettings:Lcom/android/camera/ui/OtherSettingsIndicator;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/IndicatorBar;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 65
    new-instance v1, Lcom/android/camera/ui/SettingsIndicator;

    iget-object v2, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/camera/ui/SettingsIndicator;-><init>(Landroid/content/Context;Lcom/android/camera/hardware/Camera$Parameters;Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mSettingsIndicator:Lcom/android/camera/ui/SettingsIndicator;

    .line 66
    iget-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mSettingsIndicator:Lcom/android/camera/ui/SettingsIndicator;

    invoke-virtual {v1}, Lcom/android/camera/ui/SettingsIndicator;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    iget-object v2, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mSettingsIndicator:Lcom/android/camera/ui/SettingsIndicator;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/IndicatorBar;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 70
    :cond_0
    new-instance v2, Lcom/android/camera/ui/GpsIndicator;

    const-string v1, "pref_camera_recordlocation_key"

    invoke-virtual {p2, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/camera/ui/GpsIndicator;-><init>(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V

    iput-object v2, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mGpsIndicator:Lcom/android/camera/ui/GpsIndicator;

    .line 73
    iget-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    iget-object v2, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mGpsIndicator:Lcom/android/camera/ui/GpsIndicator;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/IndicatorBar;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 75
    const-string v1, "pref_camera_whitebalance_key"

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/ui/CameraHeadUpDisplay;->addIndicator(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Lcom/android/camera/ui/BasicIndicator;

    .line 76
    const-string v1, "pref_camera_flashmode_key"

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/ui/CameraHeadUpDisplay;->addIndicator(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Lcom/android/camera/ui/BasicIndicator;

    .line 78
    iget-boolean v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mZoomSupported:Z

    if-eqz v1, :cond_1

    .line 79
    new-instance v1, Lcom/android/camera/ui/ZoomIndicator;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/ZoomIndicator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mZoomIndicator:Lcom/android/camera/ui/ZoomIndicator;

    .line 80
    iget-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    iget-object v2, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mZoomIndicator:Lcom/android/camera/ui/ZoomIndicator;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/IndicatorBar;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 83
    :cond_1
    return-void
.end method

.method public setGpsHasSignal(Z)V
    .locals 2
    .parameter "hasSignal"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraHeadUpDisplay;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v0

    .line 87
    .local v0, root:Lcom/android/camera/ui/GLRootView;
    if-eqz v0, :cond_0

    .line 88
    new-instance v1, Lcom/android/camera/ui/CameraHeadUpDisplay$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/CameraHeadUpDisplay$2;-><init>(Lcom/android/camera/ui/CameraHeadUpDisplay;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraHeadUpDisplay;->mGpsIndicator:Lcom/android/camera/ui/GpsIndicator;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/GpsIndicator;->setHasSignal(Z)V

    goto :goto_0
.end method
