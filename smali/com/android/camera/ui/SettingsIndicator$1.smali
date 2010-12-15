.class Lcom/android/camera/ui/SettingsIndicator$1;
.super Ljava/lang/Object;
.source "SettingsIndicator.java"

# interfaces
.implements Lcom/android/camera/ui/SettingsController$ValueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/SettingsIndicator;->addSlider(Lcom/android/camera/ui/SettingsController;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SettingsIndicator;

.field final synthetic val$prefKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SettingsIndicator;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/camera/ui/SettingsIndicator$1;->this$0:Lcom/android/camera/ui/SettingsIndicator;

    iput-object p2, p0, Lcom/android/camera/ui/SettingsIndicator$1;->val$prefKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(ILjava/lang/String;Z)V
    .locals 2
    .parameter "index"
    .parameter "value"
    .parameter "isMoving"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/SettingsIndicator$1;->this$0:Lcom/android/camera/ui/SettingsIndicator;

    iget-object v1, p0, Lcom/android/camera/ui/SettingsIndicator$1;->val$prefKey:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/camera/ui/SettingsIndicator;->access$000(Lcom/android/camera/ui/SettingsIndicator;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method
