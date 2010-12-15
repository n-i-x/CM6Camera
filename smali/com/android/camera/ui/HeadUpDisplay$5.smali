.class Lcom/android/camera/ui/HeadUpDisplay$5;
.super Ljava/lang/Object;
.source "HeadUpDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/HeadUpDisplay;->overrideSettings([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/HeadUpDisplay;

.field final synthetic val$keyvalues:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/HeadUpDisplay;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/camera/ui/HeadUpDisplay$5;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iput-object p2, p0, Lcom/android/camera/ui/HeadUpDisplay$5;->val$keyvalues:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 171
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/camera/ui/HeadUpDisplay$5;->val$keyvalues:[Ljava/lang/String;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/camera/ui/HeadUpDisplay$5;->this$0:Lcom/android/camera/ui/HeadUpDisplay;

    iget-object v2, v2, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    iget-object v3, p0, Lcom/android/camera/ui/HeadUpDisplay$5;->val$keyvalues:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/camera/ui/HeadUpDisplay$5;->val$keyvalues:[Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/IndicatorBar;->overrideSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method
