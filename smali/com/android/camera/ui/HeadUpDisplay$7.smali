.class Lcom/android/camera/ui/HeadUpDisplay$7;
.super Ljava/lang/Object;
.source "HeadUpDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/HeadUpDisplay;->restorePreferences(Lcom/android/camera/hardware/Camera$Parameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/HeadUpDisplay;

.field final synthetic val$param:Lcom/android/camera/hardware/Camera$Parameters;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/HeadUpDisplay;Lcom/android/camera/hardware/Camera$Parameters;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/camera/ui/HeadUpDisplay$7;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iput-object p2, p0, Lcom/android/camera/ui/HeadUpDisplay$7;->val$param:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 416
    iget-object v3, p0, Lcom/android/camera/ui/HeadUpDisplay$7;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-static {v3}, Lcom/android/camera/ui/HeadUpDisplay;->access$900(Lcom/android/camera/ui/HeadUpDisplay;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    move-result-object v2

    .line 421
    .local v2, l:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    iget-object v3, p0, Lcom/android/camera/ui/HeadUpDisplay$7;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v3, v3, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 422
    iget-object v3, p0, Lcom/android/camera/ui/HeadUpDisplay$7;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v3}, Lcom/android/camera/ui/HeadUpDisplay;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/GLRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 423
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/camera/ui/HeadUpDisplay$7;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v3, v3, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPrefs:Landroid/content/SharedPreferences;

    monitor-enter v3

    .line 424
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/ui/HeadUpDisplay$7;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v4, v4, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 425
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 426
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 427
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    iget-object v3, p0, Lcom/android/camera/ui/HeadUpDisplay$7;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v3, v3, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->upgradePreferences(Landroid/content/SharedPreferences;)V

    .line 429
    iget-object v3, p0, Lcom/android/camera/ui/HeadUpDisplay$7;->val$param:Lcom/android/camera/hardware/Camera$Parameters;

    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Lcom/android/camera/hardware/Camera$Parameters;)V

    .line 430
    iget-object v3, p0, Lcom/android/camera/ui/HeadUpDisplay$7;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    invoke-virtual {v3}, Lcom/android/camera/ui/HeadUpDisplay;->reloadPreferences()V

    .line 431
    iget-object v3, p0, Lcom/android/camera/ui/HeadUpDisplay$7;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v3, v3, Lcom/android/camera/ui/HeadUpDisplay;->mListener:Lcom/android/camera/ui/HeadUpDisplay$Listener;

    if-eqz v3, :cond_0

    .line 432
    iget-object v3, p0, Lcom/android/camera/ui/HeadUpDisplay$7;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v3, v3, Lcom/android/camera/ui/HeadUpDisplay;->mListener:Lcom/android/camera/ui/HeadUpDisplay$Listener;

    invoke-interface {v3}, Lcom/android/camera/ui/HeadUpDisplay$Listener;->onSharedPreferencesChanged()V

    .line 434
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/HeadUpDisplay$7;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v3, v3, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 435
    return-void

    .line 427
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
