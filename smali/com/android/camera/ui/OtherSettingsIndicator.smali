.class public Lcom/android/camera/ui/OtherSettingsIndicator;
.super Lcom/android/camera/ui/AbstractIndicator;
.source "OtherSettingsIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/OtherSettingsIndicator$1;,
        Lcom/android/camera/ui/OtherSettingsIndicator$RestoreSettingsModel;,
        Lcom/android/camera/ui/OtherSettingsIndicator$UberAdapter;
    }
.end annotation


# instance fields
.field private final mAdapters:[Lcom/android/camera/ui/GLListView$Model;

.field private mIcon:Lcom/android/camera/ui/ResourceTexture;

.field private mOnRestorePrefsClickedRunner:Ljava/lang/Runnable;

.field private final mOverrides:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupContent:Lcom/android/camera/ui/GLListView;

.field private final mPreference:[Lcom/android/camera/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/android/camera/ListPreference;)V
    .locals 1
    .parameter "context"
    .parameter "preference"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AbstractIndicator;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mOverrides:Ljava/util/HashMap;

    .line 38
    iput-object p2, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mPreference:[Lcom/android/camera/ListPreference;

    .line 40
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/android/camera/ui/GLListView$Model;

    iput-object v0, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mAdapters:[Lcom/android/camera/ui/GLListView$Model;

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/OtherSettingsIndicator;)[Lcom/android/camera/ui/GLListView$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mAdapters:[Lcom/android/camera/ui/GLListView$Model;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/OtherSettingsIndicator;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mOnRestorePrefsClickedRunner:Ljava/lang/Runnable;

    return-object v0
.end method

.method private buildUberAdapter()Lcom/android/camera/ui/OtherSettingsIndicator$UberAdapter;
    .locals 8

    .prologue
    .line 81
    iget-object v5, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mPreference:[Lcom/android/camera/ListPreference;

    .line 82
    .local v5, prefs:[Lcom/android/camera/ListPreference;
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mAdapters:[Lcom/android/camera/ui/GLListView$Model;

    .line 83
    .local v0, adapters:[Lcom/android/camera/ui/GLListView$Model;
    invoke-virtual {p0}, Lcom/android/camera/ui/OtherSettingsIndicator;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/GLRootView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 84
    .local v1, context:Landroid/content/Context;
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, v5

    .local v3, n:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 85
    new-instance v6, Lcom/android/camera/ui/PreferenceAdapter;

    aget-object v7, v5, v2

    invoke-direct {v6, v1, v7}, Lcom/android/camera/ui/PreferenceAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/ListPreference;)V

    aput-object v6, v0, v2

    .line 86
    iget-object v6, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mOverrides:Ljava/util/HashMap;

    aget-object v7, v5, v2

    invoke-virtual {v7}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 87
    .local v4, override:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 88
    aget-object v6, v0, v2

    check-cast v6, Lcom/android/camera/ui/PreferenceAdapter;

    invoke-virtual {v6, v4}, Lcom/android/camera/ui/PreferenceAdapter;->overrideSettings(Ljava/lang/String;)V

    .line 84
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v4           #override:Ljava/lang/String;
    :cond_1
    array-length v6, v5

    new-instance v7, Lcom/android/camera/ui/OtherSettingsIndicator$RestoreSettingsModel;

    invoke-direct {v7, p0, v1}, Lcom/android/camera/ui/OtherSettingsIndicator$RestoreSettingsModel;-><init>(Lcom/android/camera/ui/OtherSettingsIndicator;Landroid/content/Context;)V

    aput-object v7, v0, v6

    .line 92
    new-instance v6, Lcom/android/camera/ui/OtherSettingsIndicator$UberAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/camera/ui/OtherSettingsIndicator$UberAdapter;-><init>(Lcom/android/camera/ui/OtherSettingsIndicator;Lcom/android/camera/ui/OtherSettingsIndicator$1;)V

    return-object v6
.end method


# virtual methods
.method protected getIcon()Lcom/android/camera/ui/ResourceTexture;
    .locals 3

    .prologue
    .line 45
    iget-object v1, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mIcon:Lcom/android/camera/ui/ResourceTexture;

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/android/camera/ui/OtherSettingsIndicator;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 47
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/android/camera/ui/ResourceTexture;

    const v2, 0x7f020037

    invoke-direct {v1, v0, v2}, Lcom/android/camera/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mIcon:Lcom/android/camera/ui/ResourceTexture;

    .line 50
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mIcon:Lcom/android/camera/ui/ResourceTexture;

    return-object v1
.end method

.method protected bridge synthetic getIcon()Lcom/android/camera/ui/Texture;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/camera/ui/OtherSettingsIndicator;->getIcon()Lcom/android/camera/ui/ResourceTexture;

    move-result-object v0

    return-object v0
.end method

.method public getPopupContent()Lcom/android/camera/ui/GLView;
    .locals 5

    .prologue
    .line 97
    iget-object v2, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    if-nez v2, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/ui/OtherSettingsIndicator;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/GLRootView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 99
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/android/camera/ui/GLListView;

    invoke-direct {v2, v1}, Lcom/android/camera/ui/GLListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    .line 100
    iget-object v2, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    new-instance v3, Lcom/android/camera/ui/NinePatchTexture;

    const v4, 0x7f020046

    invoke-direct {v3, v1, v4}, Lcom/android/camera/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/GLListView;->setHighLight(Lcom/android/camera/ui/NinePatchTexture;)V

    .line 102
    iget-object v2, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    new-instance v3, Lcom/android/camera/ui/NinePatchTexture;

    const v4, 0x7f020047

    invoke-direct {v3, v1, v4}, Lcom/android/camera/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/GLListView;->setScroller(Lcom/android/camera/ui/NinePatchTexture;)V

    .line 104
    invoke-direct {p0}, Lcom/android/camera/ui/OtherSettingsIndicator;->buildUberAdapter()Lcom/android/camera/ui/OtherSettingsIndicator$UberAdapter;

    move-result-object v0

    .line 105
    .local v0, adapter:Lcom/android/camera/ui/OtherSettingsIndicator$UberAdapter;
    iget-object v2, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/GLListView;->setOnItemSelectedListener(Lcom/android/camera/ui/GLListView$OnItemSelectedListener;)V

    .line 106
    iget-object v2, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/GLListView;->setDataModel(Lcom/android/camera/ui/GLListView$Model;)V

    .line 108
    .end local v0           #adapter:Lcom/android/camera/ui/OtherSettingsIndicator$UberAdapter;
    .end local v1           #context:Landroid/content/Context;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    return-object v2
.end method

.method public overrideSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 65
    if-nez p2, :cond_0

    .line 66
    iget-object v3, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mOverrides:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    if-eqz v3, :cond_2

    .line 71
    iget-object v2, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mPreference:[Lcom/android/camera/ListPreference;

    .line 72
    .local v2, prefs:[Lcom/android/camera/ListPreference;
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, v2

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 73
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #prefs:[Lcom/android/camera/ListPreference;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mOverrides:Ljava/util/HashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    .restart local v0       #i:I
    .restart local v1       #n:I
    .restart local v2       #prefs:[Lcom/android/camera/ListPreference;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mAdapters:[Lcom/android/camera/ui/GLListView$Model;

    aget-object p0, v3, v0

    .end local p0
    check-cast p0, Lcom/android/camera/ui/PreferenceAdapter;

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/PreferenceAdapter;->overrideSettings(Ljava/lang/String;)V

    .line 78
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #prefs:[Lcom/android/camera/ListPreference;
    :cond_2
    return-void
.end method

.method public reloadPreferences()V
    .locals 4

    .prologue
    .line 55
    iget-object v3, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    if-eqz v3, :cond_0

    .line 56
    iget-object v2, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mPreference:[Lcom/android/camera/ListPreference;

    .line 57
    .local v2, prefs:[Lcom/android/camera/ListPreference;
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 58
    iget-object v3, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mAdapters:[Lcom/android/camera/ui/GLListView$Model;

    aget-object v3, v3, v0

    check-cast v3, Lcom/android/camera/ui/PreferenceAdapter;

    invoke-virtual {v3}, Lcom/android/camera/ui/PreferenceAdapter;->reload()V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #prefs:[Lcom/android/camera/ListPreference;
    :cond_0
    return-void
.end method

.method public setOnRestorePreferencesClickedRunner(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/camera/ui/OtherSettingsIndicator;->mOnRestorePrefsClickedRunner:Ljava/lang/Runnable;

    .line 187
    return-void
.end method
