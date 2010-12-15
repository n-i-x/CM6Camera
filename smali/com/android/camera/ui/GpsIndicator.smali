.class public Lcom/android/camera/ui/GpsIndicator;
.super Lcom/android/camera/ui/BasicIndicator;
.source "GpsIndicator.java"


# static fields
.field private static final GPS_ON_INDEX:I = 0x1


# instance fields
.field private mHasSignal:Z

.field private mNoSignalIcon:Lcom/android/camera/ui/ResourceTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V
    .locals 1
    .parameter "context"
    .parameter "group"
    .parameter "preference"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/BasicIndicator;-><init>(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/GpsIndicator;->mHasSignal:Z

    .line 35
    return-void
.end method


# virtual methods
.method protected getIcon()Lcom/android/camera/ui/ResourceTexture;
    .locals 3

    .prologue
    .line 39
    iget v1, p0, Lcom/android/camera/ui/GpsIndicator;->mIndex:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/ui/GpsIndicator;->mHasSignal:Z

    if-nez v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/android/camera/ui/GpsIndicator;->mNoSignalIcon:Lcom/android/camera/ui/ResourceTexture;

    if-nez v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/android/camera/ui/GpsIndicator;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/android/camera/ui/ResourceTexture;

    const v2, 0x7f020032

    invoke-direct {v1, v0, v2}, Lcom/android/camera/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/camera/ui/GpsIndicator;->mNoSignalIcon:Lcom/android/camera/ui/ResourceTexture;

    .line 45
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/GpsIndicator;->mNoSignalIcon:Lcom/android/camera/ui/ResourceTexture;

    .line 47
    :goto_0
    return-object v1

    :cond_1
    invoke-super {p0}, Lcom/android/camera/ui/BasicIndicator;->getIcon()Lcom/android/camera/ui/ResourceTexture;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic getIcon()Lcom/android/camera/ui/Texture;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/camera/ui/GpsIndicator;->getIcon()Lcom/android/camera/ui/ResourceTexture;

    move-result-object v0

    return-object v0
.end method

.method protected onPreferenceChanged(I)V
    .locals 1
    .parameter "newIndex"

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/GpsIndicator;->mHasSignal:Z

    .line 59
    invoke-super {p0, p1}, Lcom/android/camera/ui/BasicIndicator;->onPreferenceChanged(I)V

    .line 60
    return-void
.end method

.method public setHasSignal(Z)V
    .locals 1
    .parameter "hasSignal"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/camera/ui/GpsIndicator;->mHasSignal:Z

    if-ne v0, p1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/GpsIndicator;->mHasSignal:Z

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/ui/GpsIndicator;->invalidate()V

    goto :goto_0
.end method
