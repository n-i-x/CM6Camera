.class Lcom/android/camera/ui/OtherSettingsIndicator$UberAdapter;
.super Ljava/lang/Object;
.source "OtherSettingsIndicator.java"

# interfaces
.implements Lcom/android/camera/ui/GLListView$Model;
.implements Lcom/android/camera/ui/GLListView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/OtherSettingsIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UberAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/OtherSettingsIndicator;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/OtherSettingsIndicator;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/ui/OtherSettingsIndicator$UberAdapter;->this$0:Lcom/android/camera/ui/OtherSettingsIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/OtherSettingsIndicator;Lcom/android/camera/ui/OtherSettingsIndicator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/camera/ui/OtherSettingsIndicator$UberAdapter;-><init>(Lcom/android/camera/ui/OtherSettingsIndicator;)V

    return-void
.end method


# virtual methods
.method public getView(I)Lcom/android/camera/ui/GLView;
    .locals 5
    .parameter "index"

    .prologue
    .line 115
    iget-object v4, p0, Lcom/android/camera/ui/OtherSettingsIndicator$UberAdapter;->this$0:Lcom/android/camera/ui/OtherSettingsIndicator;

    invoke-static {v4}, Lcom/android/camera/ui/OtherSettingsIndicator;->access$100(Lcom/android/camera/ui/OtherSettingsIndicator;)[Lcom/android/camera/ui/GLListView$Model;

    move-result-object v1

    .local v1, arr$:[Lcom/android/camera/ui/GLListView$Model;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 116
    .local v0, adapter:Lcom/android/camera/ui/GLListView$Model;
    invoke-interface {v0}, Lcom/android/camera/ui/GLListView$Model;->size()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 117
    invoke-interface {v0, p1}, Lcom/android/camera/ui/GLListView$Model;->getView(I)Lcom/android/camera/ui/GLView;

    move-result-object v4

    .line 121
    .end local v0           #adapter:Lcom/android/camera/ui/GLListView$Model;
    :goto_1
    return-object v4

    .line 119
    .restart local v0       #adapter:Lcom/android/camera/ui/GLListView$Model;
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/ui/GLListView$Model;->size()I

    move-result v4

    sub-int/2addr p1, v4

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v0           #adapter:Lcom/android/camera/ui/GLListView$Model;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isSelectable(I)Z
    .locals 5
    .parameter "index"

    .prologue
    .line 125
    iget-object v4, p0, Lcom/android/camera/ui/OtherSettingsIndicator$UberAdapter;->this$0:Lcom/android/camera/ui/OtherSettingsIndicator;

    invoke-static {v4}, Lcom/android/camera/ui/OtherSettingsIndicator;->access$100(Lcom/android/camera/ui/OtherSettingsIndicator;)[Lcom/android/camera/ui/GLListView$Model;

    move-result-object v1

    .local v1, arr$:[Lcom/android/camera/ui/GLListView$Model;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 126
    .local v0, adapter:Lcom/android/camera/ui/GLListView$Model;
    invoke-interface {v0}, Lcom/android/camera/ui/GLListView$Model;->size()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 127
    invoke-interface {v0, p1}, Lcom/android/camera/ui/GLListView$Model;->isSelectable(I)Z

    move-result v4

    .line 131
    .end local v0           #adapter:Lcom/android/camera/ui/GLListView$Model;
    :goto_1
    return v4

    .line 129
    .restart local v0       #adapter:Lcom/android/camera/ui/GLListView$Model;
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/ui/GLListView$Model;->size()I

    move-result v4

    sub-int/2addr p1, v4

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v0           #adapter:Lcom/android/camera/ui/GLListView$Model;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public onItemSelected(Lcom/android/camera/ui/GLView;I)V
    .locals 5
    .parameter "view"
    .parameter "position"

    .prologue
    .line 143
    iget-object v4, p0, Lcom/android/camera/ui/OtherSettingsIndicator$UberAdapter;->this$0:Lcom/android/camera/ui/OtherSettingsIndicator;

    invoke-static {v4}, Lcom/android/camera/ui/OtherSettingsIndicator;->access$100(Lcom/android/camera/ui/OtherSettingsIndicator;)[Lcom/android/camera/ui/GLListView$Model;

    move-result-object v1

    .local v1, arr$:[Lcom/android/camera/ui/GLListView$Model;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 144
    .local v0, adapter:Lcom/android/camera/ui/GLListView$Model;
    invoke-interface {v0}, Lcom/android/camera/ui/GLListView$Model;->size()I

    move-result v4

    if-ge p2, v4, :cond_1

    .line 145
    check-cast v0, Lcom/android/camera/ui/GLListView$OnItemSelectedListener;

    .end local v0           #adapter:Lcom/android/camera/ui/GLListView$Model;
    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/GLListView$OnItemSelectedListener;->onItemSelected(Lcom/android/camera/ui/GLView;I)V

    .line 151
    :cond_0
    return-void

    .line 149
    .restart local v0       #adapter:Lcom/android/camera/ui/GLListView$Model;
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/ui/GLListView$Model;->size()I

    move-result v4

    sub-int/2addr p2, v4

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 135
    const/4 v4, 0x0

    .line 136
    .local v4, size:I
    iget-object v5, p0, Lcom/android/camera/ui/OtherSettingsIndicator$UberAdapter;->this$0:Lcom/android/camera/ui/OtherSettingsIndicator;

    invoke-static {v5}, Lcom/android/camera/ui/OtherSettingsIndicator;->access$100(Lcom/android/camera/ui/OtherSettingsIndicator;)[Lcom/android/camera/ui/GLListView$Model;

    move-result-object v1

    .local v1, arr$:[Lcom/android/camera/ui/GLListView$Model;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 137
    .local v0, adapter:Lcom/android/camera/ui/GLListView$Model;
    invoke-interface {v0}, Lcom/android/camera/ui/GLListView$Model;->size()I

    move-result v5

    add-int/2addr v4, v5

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v0           #adapter:Lcom/android/camera/ui/GLListView$Model;
    :cond_0
    return v4
.end method
