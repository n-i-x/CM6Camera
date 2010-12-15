.class public Lcom/android/camera/ui/SettingsIndicator;
.super Lcom/android/camera/ui/AbstractIndicator;
.source "SettingsIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SettingsIndicator$SettingsListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsIndicator"


# instance fields
.field private mBrightnessController:Lcom/android/camera/ui/SettingsController;

.field private mBrightnessValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mContrastController:Lcom/android/camera/ui/SettingsController;

.field private mContrastValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIcon:Lcom/android/camera/ui/ResourceTexture;

.field private mParameters:Lcom/android/camera/hardware/Camera$Parameters;

.field private mPopupContent:Lcom/android/camera/ui/LinearLayout;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSaturationController:Lcom/android/camera/ui/SettingsController;

.field private mSaturationValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSharpnessController:Lcom/android/camera/ui/SettingsController;

.field private mSharpnessValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/hardware/Camera$Parameters;Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "context"
    .parameter "params"
    .parameter "prefs"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AbstractIndicator;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/SettingsIndicator;->mBrightnessValues:Ljava/util/List;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/SettingsIndicator;->mContrastValues:Ljava/util/List;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/SettingsIndicator;->mSaturationValues:Ljava/util/List;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/SettingsIndicator;->mSharpnessValues:Ljava/util/List;

    .line 65
    iput-object p1, p0, Lcom/android/camera/ui/SettingsIndicator;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/camera/ui/SettingsIndicator;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    .line 67
    iput-object p3, p0, Lcom/android/camera/ui/SettingsIndicator;->mPreferences:Landroid/content/SharedPreferences;

    .line 69
    invoke-virtual {p2}, Lcom/android/camera/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    if-lez v1, :cond_0

    .line 70
    invoke-virtual {p2}, Lcom/android/camera/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    int-to-float v0, v1

    .local v0, i:F
    :goto_0
    invoke-virtual {p2}, Lcom/android/camera/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/camera/ui/SettingsIndicator;->mBrightnessValues:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {p2}, Lcom/android/camera/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0

    .line 76
    .end local v0           #i:F
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/SettingsIndicator;->mContrastValues:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/camera/hardware/Camera$Parameters;->getMaxContrast()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/camera/hardware/Camera$Parameters;->getDefaultContrast()I

    move-result v3

    const-string v4, "pref_camera_contrast_key"

    invoke-static {v1, v2, v3, v4, p3}, Lcom/android/camera/ui/SettingsIndicator;->setupSlider(Ljava/util/List;IILjava/lang/String;Landroid/content/SharedPreferences;)V

    .line 79
    iget-object v1, p0, Lcom/android/camera/ui/SettingsIndicator;->mSharpnessValues:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/camera/hardware/Camera$Parameters;->getMaxSharpness()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/camera/hardware/Camera$Parameters;->getDefaultSharpness()I

    move-result v3

    const-string v4, "pref_camera_sharpness_key"

    invoke-static {v1, v2, v3, v4, p3}, Lcom/android/camera/ui/SettingsIndicator;->setupSlider(Ljava/util/List;IILjava/lang/String;Landroid/content/SharedPreferences;)V

    .line 82
    iget-object v1, p0, Lcom/android/camera/ui/SettingsIndicator;->mSaturationValues:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/camera/hardware/Camera$Parameters;->getMaxSaturation()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/camera/hardware/Camera$Parameters;->getDefaultSaturation()I

    move-result v3

    const-string v4, "pref_camera_saturation_key"

    invoke-static {v1, v2, v3, v4, p3}, Lcom/android/camera/ui/SettingsIndicator;->setupSlider(Ljava/util/List;IILjava/lang/String;Landroid/content/SharedPreferences;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/SettingsIndicator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SettingsIndicator;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addSlider(Lcom/android/camera/ui/SettingsController;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter "controller"
    .parameter
    .parameter "defaultValue"
    .parameter "headerRes"
    .parameter "prefKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/SettingsController;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x3

    .line 106
    if-nez p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingsIndicator;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/GLRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    .local v0, context:Landroid/content/Context;
    new-instance p1, Lcom/android/camera/ui/SettingsController;

    .end local p1
    invoke-direct {p1, v0}, Lcom/android/camera/ui/SettingsController;-><init>(Landroid/content/Context;)V

    .line 109
    .restart local p1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/camera/ui/SettingsController;->setAvailableValues([Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1, v5, v5, v5, v5}, Lcom/android/camera/ui/SettingsController;->setPaddings(IIII)V

    .line 112
    new-instance v2, Lcom/android/camera/ui/LinearLayout;

    invoke-direct {v2}, Lcom/android/camera/ui/LinearLayout;-><init>()V

    .line 113
    .local v2, layout:Lcom/android/camera/ui/LinearLayout;
    new-instance v1, Lcom/android/camera/ui/GLOptionHeader;

    invoke-virtual {v0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/android/camera/ui/GLOptionHeader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    .local v1, header:Lcom/android/camera/ui/GLOptionHeader;
    new-instance v3, Lcom/android/camera/ui/NinePatchTexture;

    const v4, 0x7f020045

    invoke-direct {v3, v0, v4}, Lcom/android/camera/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/GLOptionHeader;->setBackground(Lcom/android/camera/ui/NinePatchTexture;)V

    .line 115
    invoke-virtual {v1, v5, v5, v5, v5}, Lcom/android/camera/ui/GLOptionHeader;->setPaddings(IIII)V

    .line 116
    invoke-virtual {v2, v1}, Lcom/android/camera/ui/LinearLayout;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 117
    invoke-virtual {v2, p1}, Lcom/android/camera/ui/LinearLayout;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 119
    iget-object v3, p0, Lcom/android/camera/ui/SettingsIndicator;->mPopupContent:Lcom/android/camera/ui/LinearLayout;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/LinearLayout;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 121
    iget-object v3, p0, Lcom/android/camera/ui/SettingsIndicator;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, p5, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lcom/android/camera/ui/SettingsIndicator;->setSliderValue(Lcom/android/camera/ui/SettingsController;Ljava/util/List;Ljava/lang/String;)V

    .line 123
    new-instance v3, Lcom/android/camera/ui/SettingsIndicator$1;

    invoke-direct {v3, p0, p5}, Lcom/android/camera/ui/SettingsIndicator$1;-><init>(Lcom/android/camera/ui/SettingsIndicator;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/android/camera/ui/SettingsController;->setValueListener(Lcom/android/camera/ui/SettingsController$ValueListener;)V

    .line 129
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #header:Lcom/android/camera/ui/GLOptionHeader;
    .end local v2           #layout:Lcom/android/camera/ui/LinearLayout;
    :cond_0
    return-void
.end method

.method private setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 156
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lcom/android/camera/ui/SettingsIndicator;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 158
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    return-void
.end method

.method private setSliderValue(Lcom/android/camera/ui/SettingsController;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .parameter "controller"
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/SettingsController;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    .local p2, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 182
    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/SettingsController;->setValueIndex(I)V

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingsIndicator;->invalidate()V

    .line 185
    return-void
.end method

.method private static setupSlider(Ljava/util/List;IILjava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter
    .parameter "maxValue"
    .parameter "defaultValue"
    .parameter "prefKey"
    .parameter "prefs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-lez p1, :cond_0

    .line 97
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, p1, :cond_0

    .line 98
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v0           #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method protected getIcon()Lcom/android/camera/ui/Texture;
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/SettingsIndicator;->mIcon:Lcom/android/camera/ui/ResourceTexture;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/android/camera/ui/ResourceTexture;

    iget-object v1, p0, Lcom/android/camera/ui/SettingsIndicator;->mContext:Landroid/content/Context;

    const v2, 0x7f020038

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/ui/SettingsIndicator;->mIcon:Lcom/android/camera/ui/ResourceTexture;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SettingsIndicator;->mIcon:Lcom/android/camera/ui/ResourceTexture;

    return-object v0
.end method

.method public getPopupContent()Lcom/android/camera/ui/GLView;
    .locals 6

    .prologue
    .line 134
    new-instance v0, Lcom/android/camera/ui/LinearLayout;

    invoke-direct {v0}, Lcom/android/camera/ui/LinearLayout;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingsIndicator;->mPopupContent:Lcom/android/camera/ui/LinearLayout;

    .line 135
    iget-object v0, p0, Lcom/android/camera/ui/SettingsIndicator;->mPopupContent:Lcom/android/camera/ui/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/LinearLayout;->setOrientation(I)V

    .line 137
    iget-object v1, p0, Lcom/android/camera/ui/SettingsIndicator;->mBrightnessController:Lcom/android/camera/ui/SettingsController;

    iget-object v2, p0, Lcom/android/camera/ui/SettingsIndicator;->mBrightnessValues:Ljava/util/List;

    const-string v3, "0.0"

    const v4, 0x7f0a007d

    const-string v5, "pref_camera_exposure_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/SettingsIndicator;->addSlider(Lcom/android/camera/ui/SettingsController;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/android/camera/ui/SettingsIndicator;->mContrastController:Lcom/android/camera/ui/SettingsController;

    iget-object v2, p0, Lcom/android/camera/ui/SettingsIndicator;->mContrastValues:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/ui/SettingsIndicator;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/hardware/Camera$Parameters;->getDefaultContrast()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a007b

    const-string v5, "pref_camera_contrast_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/SettingsIndicator;->addSlider(Lcom/android/camera/ui/SettingsController;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/android/camera/ui/SettingsIndicator;->mSaturationController:Lcom/android/camera/ui/SettingsController;

    iget-object v2, p0, Lcom/android/camera/ui/SettingsIndicator;->mSaturationValues:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/ui/SettingsIndicator;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/hardware/Camera$Parameters;->getDefaultSaturation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a007c

    const-string v5, "pref_camera_saturation_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/SettingsIndicator;->addSlider(Lcom/android/camera/ui/SettingsController;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/android/camera/ui/SettingsIndicator;->mSharpnessController:Lcom/android/camera/ui/SettingsController;

    iget-object v2, p0, Lcom/android/camera/ui/SettingsIndicator;->mSharpnessValues:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/ui/SettingsIndicator;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/hardware/Camera$Parameters;->getDefaultSharpness()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a007a

    const-string v5, "pref_camera_sharpness_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/SettingsIndicator;->addSlider(Lcom/android/camera/ui/SettingsController;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/camera/ui/SettingsIndicator;->mPopupContent:Lcom/android/camera/ui/LinearLayout;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/SettingsIndicator;->mBrightnessValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingsIndicator;->mContrastValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingsIndicator;->mSaturationValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingsIndicator;->mSharpnessValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

.method public overrideSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "settings"

    .prologue
    .line 165
    return-void
.end method

.method public reloadPreferences()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/SettingsIndicator;->mBrightnessController:Lcom/android/camera/ui/SettingsController;

    iget-object v1, p0, Lcom/android/camera/ui/SettingsIndicator;->mBrightnessValues:Ljava/util/List;

    const-string v2, "0.0"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/SettingsIndicator;->setSliderValue(Lcom/android/camera/ui/SettingsController;Ljava/util/List;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/SettingsIndicator;->mContrastController:Lcom/android/camera/ui/SettingsController;

    iget-object v1, p0, Lcom/android/camera/ui/SettingsIndicator;->mContrastValues:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/ui/SettingsIndicator;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v2}, Lcom/android/camera/hardware/Camera$Parameters;->getDefaultContrast()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/SettingsIndicator;->setSliderValue(Lcom/android/camera/ui/SettingsController;Ljava/util/List;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/SettingsIndicator;->mSaturationController:Lcom/android/camera/ui/SettingsController;

    iget-object v1, p0, Lcom/android/camera/ui/SettingsIndicator;->mSaturationValues:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/ui/SettingsIndicator;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v2}, Lcom/android/camera/hardware/Camera$Parameters;->getDefaultSaturation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/SettingsIndicator;->setSliderValue(Lcom/android/camera/ui/SettingsController;Ljava/util/List;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/SettingsIndicator;->mSharpnessController:Lcom/android/camera/ui/SettingsController;

    iget-object v1, p0, Lcom/android/camera/ui/SettingsIndicator;->mSharpnessValues:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/ui/SettingsIndicator;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-virtual {v2}, Lcom/android/camera/hardware/Camera$Parameters;->getDefaultSharpness()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/SettingsIndicator;->setSliderValue(Lcom/android/camera/ui/SettingsController;Ljava/util/List;Ljava/lang/String;)V

    .line 177
    return-void
.end method
