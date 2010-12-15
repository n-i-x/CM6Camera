.class public Lcom/android/camera/ui/BasicIndicator;
.super Lcom/android/camera/ui/AbstractIndicator;
.source "BasicIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/BasicIndicator$MyListener;
    }
.end annotation


# instance fields
.field private final mIcon:[Lcom/android/camera/ui/ResourceTexture;

.field protected mIndex:I

.field private mModel:Lcom/android/camera/ui/PreferenceAdapter;

.field private mOverride:Ljava/lang/String;

.field private mPopupContent:Lcom/android/camera/ui/GLListView;

.field private final mPreference:Lcom/android/camera/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V
    .locals 1
    .parameter "context"
    .parameter "group"
    .parameter "preference"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AbstractIndicator;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p3, p0, Lcom/android/camera/ui/BasicIndicator;->mPreference:Lcom/android/camera/IconListPreference;

    .line 41
    invoke-virtual {p3}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/android/camera/ui/ResourceTexture;

    iput-object v0, p0, Lcom/android/camera/ui/BasicIndicator;->mIcon:[Lcom/android/camera/ui/ResourceTexture;

    .line 42
    invoke-virtual {p3}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BasicIndicator;->mIndex:I

    .line 43
    return-void
.end method

.method private updateContent(Ljava/lang/String;Z)V
    .locals 3
    .parameter "override"
    .parameter "reloadValue"

    .prologue
    .line 47
    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/BasicIndicator;->mOverride:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/android/camera/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/BasicIndicator;->mPreference:Lcom/android/camera/IconListPreference;

    .line 49
    .local v1, pref:Lcom/android/camera/IconListPreference;
    iput-object p1, p0, Lcom/android/camera/ui/BasicIndicator;->mOverride:Ljava/lang/String;

    .line 50
    if-nez p1, :cond_2

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 52
    .local v0, index:I
    iget v2, p0, Lcom/android/camera/ui/BasicIndicator;->mIndex:I

    if-eq v2, v0, :cond_0

    .line 53
    iput v0, p0, Lcom/android/camera/ui/BasicIndicator;->mIndex:I

    .line 54
    invoke-virtual {p0}, Lcom/android/camera/ui/BasicIndicator;->invalidate()V

    goto :goto_0

    .end local v0           #index:I
    :cond_2
    move-object v2, p1

    .line 50
    goto :goto_1
.end method


# virtual methods
.method protected getIcon()Lcom/android/camera/ui/ResourceTexture;
    .locals 5

    .prologue
    .line 110
    iget v2, p0, Lcom/android/camera/ui/BasicIndicator;->mIndex:I

    if-gez v2, :cond_1

    const/4 v2, 0x0

    move v1, v2

    .line 111
    .local v1, index:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/BasicIndicator;->mIcon:[Lcom/android/camera/ui/ResourceTexture;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/camera/ui/BasicIndicator;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/GLRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/android/camera/ui/BasicIndicator;->mIcon:[Lcom/android/camera/ui/ResourceTexture;

    new-instance v3, Lcom/android/camera/ui/ResourceTexture;

    iget-object v4, p0, Lcom/android/camera/ui/BasicIndicator;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v4

    aget v4, v4, v1

    invoke-direct {v3, v0, v4}, Lcom/android/camera/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    aput-object v3, v2, v1

    .line 116
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/BasicIndicator;->mIcon:[Lcom/android/camera/ui/ResourceTexture;

    aget-object v2, v2, v1

    return-object v2

    .line 110
    .end local v1           #index:I
    :cond_1
    iget v2, p0, Lcom/android/camera/ui/BasicIndicator;->mIndex:I

    move v1, v2

    goto :goto_0
.end method

.method protected bridge synthetic getIcon()Lcom/android/camera/ui/Texture;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/camera/ui/BasicIndicator;->getIcon()Lcom/android/camera/ui/ResourceTexture;

    move-result-object v0

    return-object v0
.end method

.method public getPopupContent()Lcom/android/camera/ui/GLView;
    .locals 4

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/camera/ui/BasicIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/android/camera/ui/BasicIndicator;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/android/camera/ui/GLListView;

    invoke-direct {v1, v0}, Lcom/android/camera/ui/GLListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/BasicIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    .line 76
    iget-object v1, p0, Lcom/android/camera/ui/BasicIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    new-instance v2, Lcom/android/camera/ui/NinePatchTexture;

    const v3, 0x7f020046

    invoke-direct {v2, v0, v3}, Lcom/android/camera/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/GLListView;->setHighLight(Lcom/android/camera/ui/NinePatchTexture;)V

    .line 78
    iget-object v1, p0, Lcom/android/camera/ui/BasicIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    new-instance v2, Lcom/android/camera/ui/NinePatchTexture;

    const v3, 0x7f020047

    invoke-direct {v2, v0, v3}, Lcom/android/camera/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/GLListView;->setScroller(Lcom/android/camera/ui/NinePatchTexture;)V

    .line 80
    new-instance v1, Lcom/android/camera/ui/PreferenceAdapter;

    iget-object v2, p0, Lcom/android/camera/ui/BasicIndicator;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-direct {v1, v0, v2}, Lcom/android/camera/ui/PreferenceAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/ListPreference;)V

    iput-object v1, p0, Lcom/android/camera/ui/BasicIndicator;->mModel:Lcom/android/camera/ui/PreferenceAdapter;

    .line 81
    iget-object v1, p0, Lcom/android/camera/ui/BasicIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    new-instance v2, Lcom/android/camera/ui/BasicIndicator$MyListener;

    iget-object v3, p0, Lcom/android/camera/ui/BasicIndicator;->mModel:Lcom/android/camera/ui/PreferenceAdapter;

    invoke-direct {v2, p0, v3}, Lcom/android/camera/ui/BasicIndicator$MyListener;-><init>(Lcom/android/camera/ui/BasicIndicator;Lcom/android/camera/ui/PreferenceAdapter;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/GLListView;->setOnItemSelectedListener(Lcom/android/camera/ui/GLListView$OnItemSelectedListener;)V

    .line 82
    iget-object v1, p0, Lcom/android/camera/ui/BasicIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    iget-object v2, p0, Lcom/android/camera/ui/BasicIndicator;->mModel:Lcom/android/camera/ui/PreferenceAdapter;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/GLListView;->setDataModel(Lcom/android/camera/ui/GLListView$Model;)V

    .line 84
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/BasicIndicator;->mModel:Lcom/android/camera/ui/PreferenceAdapter;

    iget-object v2, p0, Lcom/android/camera/ui/BasicIndicator;->mOverride:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PreferenceAdapter;->overrideSettings(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/camera/ui/BasicIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    return-object v1
.end method

.method protected onPreferenceChanged(I)V
    .locals 1
    .parameter "newIndex"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/ui/BasicIndicator;->mIndex:I

    if-ne p1, v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/BasicIndicator;->mIndex:I

    .line 91
    invoke-virtual {p0}, Lcom/android/camera/ui/BasicIndicator;->invalidate()V

    goto :goto_0
.end method

.method public overrideSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "settings"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/BasicIndicator;->mPreference:Lcom/android/camera/IconListPreference;

    .line 61
    .local v0, pref:Lcom/android/camera/IconListPreference;
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/camera/ui/BasicIndicator;->updateContent(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public reloadPreferences()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/BasicIndicator;->mModel:Lcom/android/camera/ui/PreferenceAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/BasicIndicator;->mModel:Lcom/android/camera/ui/PreferenceAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreferenceAdapter;->reload()V

    .line 68
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/BasicIndicator;->updateContent(Ljava/lang/String;Z)V

    .line 69
    return-void
.end method
