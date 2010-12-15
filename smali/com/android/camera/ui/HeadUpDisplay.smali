.class public Lcom/android/camera/ui/HeadUpDisplay;
.super Lcom/android/camera/ui/GLView;
.source "HeadUpDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/HeadUpDisplay$IndicatorBarListener;,
        Lcom/android/camera/ui/HeadUpDisplay$Listener;
    }
.end annotation


# static fields
.field private static final DEACTIVATE_INDICATOR_BAR:I = 0x1

.field private static final DESELECT_INDICATOR:I = 0x0

.field private static final INDICATOR_BAR_RIGHT_MARGIN:I = 0xa

.field private static final INDICATOR_BAR_TIMEOUT:I = 0x157c

.field private static final MAX_HEIGHT_RATIO:F = 0.8f

.field private static final MAX_WIDTH_RATIO:F = 0.8f

.field private static final POPUP_TRIANGLE_OFFSET:I = 0x10

.field private static final POPUP_WINDOW_OVERLAP:I = 0x14

.field private static final POPUP_WINDOW_TIMEOUT:I = 0x1388

.field protected static final TAG:Ljava/lang/String; = "HeadUpDisplay"

.field private static sIndicatorBarRightMargin:I

.field private static sPopupTriangleOffset:I

.field private static sPopupWindowOverlap:I


# instance fields
.field private mAnchorView:Lcom/android/camera/ui/GLView;

.field private final mCollapse:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeactivateIndicatorBar:Ljava/lang/Runnable;

.field private final mDeselectIndicator:Ljava/lang/Runnable;

.field protected mDisableZoom:Z

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field protected mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

.field protected mListener:Lcom/android/camera/ui/HeadUpDisplay$Listener;

.field private mOrientation:I

.field protected mParameters:Lcom/android/camera/hardware/Camera$Parameters;

.field private mPopupWindow:Lcom/android/camera/ui/PopupWindow;

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field protected mSettingsIndicator:Lcom/android/camera/ui/SettingsIndicator;

.field private final mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field protected mSharedPrefs:Landroid/content/SharedPreferences;

.field protected mZoomIndicator:Lcom/android/camera/ui/ZoomIndicator;

.field protected mZoomSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/ui/HeadUpDisplay;->sIndicatorBarRightMargin:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/hardware/Camera$Parameters;ZZ)V
    .locals 1
    .parameter "context"
    .parameter "params"
    .parameter "zoomSupported"
    .parameter "disableZoom"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/camera/ui/GLView;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mOrientation:I

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mEnabled:Z

    .line 95
    new-instance v0, Lcom/android/camera/ui/HeadUpDisplay$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HeadUpDisplay$1;-><init>(Lcom/android/camera/ui/HeadUpDisplay;)V

    iput-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 141
    new-instance v0, Lcom/android/camera/ui/HeadUpDisplay$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HeadUpDisplay$3;-><init>(Lcom/android/camera/ui/HeadUpDisplay;)V

    iput-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mDeselectIndicator:Ljava/lang/Runnable;

    .line 147
    new-instance v0, Lcom/android/camera/ui/HeadUpDisplay$4;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HeadUpDisplay$4;-><init>(Lcom/android/camera/ui/HeadUpDisplay;)V

    iput-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mDeactivateIndicatorBar:Ljava/lang/Runnable;

    .line 388
    new-instance v0, Lcom/android/camera/ui/HeadUpDisplay$6;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HeadUpDisplay$6;-><init>(Lcom/android/camera/ui/HeadUpDisplay;)V

    iput-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mCollapse:Ljava/util/concurrent/Callable;

    .line 106
    iput-boolean p3, p0, Lcom/android/camera/ui/HeadUpDisplay;->mZoomSupported:Z

    .line 107
    iput-boolean p4, p0, Lcom/android/camera/ui/HeadUpDisplay;->mDisableZoom:Z

    .line 108
    iput-object p2, p0, Lcom/android/camera/ui/HeadUpDisplay;->mParameters:Lcom/android/camera/hardware/Camera$Parameters;

    .line 109
    invoke-static {p1}, Lcom/android/camera/ui/HeadUpDisplay;->initializeStaticVariables(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/HeadUpDisplay;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mDeselectIndicator:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/HeadUpDisplay;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mDeactivateIndicatorBar:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/HeadUpDisplay;)Lcom/android/camera/ui/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/HeadUpDisplay;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HeadUpDisplay;->initializePopupWindow(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/ui/HeadUpDisplay;Lcom/android/camera/ui/GLView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HeadUpDisplay;->layoutPopupWindow(Lcom/android/camera/ui/GLView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/ui/HeadUpDisplay;Lcom/android/camera/ui/GLView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HeadUpDisplay;->showPopupWindow(Lcom/android/camera/ui/GLView;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/ui/HeadUpDisplay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/ui/HeadUpDisplay;->hidePopupWindow()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/ui/HeadUpDisplay;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/HeadUpDisplay;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-object v0
.end method

.method protected static varargs getListPreferences(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)[Lcom/android/camera/ListPreference;
    .locals 7
    .parameter "group"
    .parameter "prefKeys"

    .prologue
    .line 333
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/ListPreference;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 335
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 336
    .local v5, pref:Lcom/android/camera/ListPreference;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_0

    .line 337
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v2           #key:Ljava/lang/String;
    .end local v5           #pref:Lcom/android/camera/ListPreference;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/camera/ListPreference;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/camera/ListPreference;

    return-object p0
.end method

.method private hidePopupWindow()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    invoke-virtual {v0}, Lcom/android/camera/ui/PopupWindow;->popoff()V

    .line 255
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 257
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mListener:Lcom/android/camera/ui/HeadUpDisplay$Listener;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mListener:Lcom/android/camera/ui/HeadUpDisplay$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/HeadUpDisplay$Listener;->onPopupWindowVisibilityChanged(I)V

    .line 260
    :cond_0
    return-void
.end method

.method private initializePopupWindow(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 290
    new-instance v0, Lcom/android/camera/ui/PopupWindowStencilImpl;

    invoke-direct {v0}, Lcom/android/camera/ui/PopupWindowStencilImpl;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    .line 291
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    new-instance v1, Lcom/android/camera/ui/NinePatchTexture;

    const v2, 0x7f020042

    invoke-direct {v1, p1, v2}, Lcom/android/camera/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PopupWindow;->setBackground(Lcom/android/camera/ui/FrameTexture;)V

    .line 293
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    new-instance v1, Lcom/android/camera/ui/ResourceTexture;

    const v2, 0x7f020043

    invoke-direct {v1, p1, v2}, Lcom/android/camera/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/android/camera/ui/HeadUpDisplay;->sPopupTriangleOffset:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/PopupWindow;->setAnchor(Lcom/android/camera/ui/Texture;I)V

    .line 295
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PopupWindow;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    iget v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PopupWindow;->setOrientation(I)V

    .line 297
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HeadUpDisplay;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 298
    return-void
.end method

.method private static initializeStaticVariables(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 134
    sget v0, Lcom/android/camera/ui/HeadUpDisplay;->sIndicatorBarRightMargin:I

    if-ltz v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/HeadUpDisplay;->sIndicatorBarRightMargin:I

    .line 137
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/HeadUpDisplay;->sPopupWindowOverlap:I

    .line 138
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/HeadUpDisplay;->sPopupTriangleOffset:I

    goto :goto_0
.end method

.method private layoutPopupWindow(Lcom/android/camera/ui/GLView;)V
    .locals 14
    .parameter "anchorView"

    .prologue
    const/4 v13, 0x0

    const/high16 v12, -0x8000

    const v11, 0x3f4ccccd

    const-wide/high16 v9, 0x3fe0

    .line 215
    iput-object p1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mAnchorView:Lcom/android/camera/ui/GLView;

    .line 216
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 217
    .local v3, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v3}, Lcom/android/camera/ui/HeadUpDisplay;->getBoundsOf(Lcom/android/camera/ui/GLView;Landroid/graphics/Rect;)Z

    .line 219
    iget v7, v3, Landroid/graphics/Rect;->left:I

    sget v8, Lcom/android/camera/ui/HeadUpDisplay;->sPopupWindowOverlap:I

    add-int v0, v7, v8

    .line 220
    .local v0, anchorX:I
    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    div-int/lit8 v1, v7, 0x2

    .line 222
    .local v1, anchorY:I
    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v11

    float-to-double v7, v7

    add-double/2addr v7, v9

    double-to-int v4, v7

    .line 223
    .local v4, width:I
    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v11

    float-to-double v7, v7

    add-double/2addr v7, v9

    double-to-int v2, v7

    .line 225
    .local v2, height:I
    iget-object v7, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/ui/PopupWindow;->measure(II)V

    .line 229
    iget-object v7, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    invoke-virtual {v7}, Lcom/android/camera/ui/PopupWindow;->getMeasuredWidth()I

    move-result v4

    .line 230
    iget-object v7, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    invoke-virtual {v7}, Lcom/android/camera/ui/PopupWindow;->getMeasuredHeight()I

    move-result v2

    .line 232
    sub-int v7, v0, v4

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 233
    .local v5, xoffset:I
    div-int/lit8 v7, v2, 0x2

    sub-int v7, v1, v7

    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 235
    .local v6, yoffset:I
    add-int v7, v6, v2

    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->getHeight()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->getHeight()I

    move-result v7

    sub-int v6, v7, v2

    .line 238
    :cond_0
    iget-object v7, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    sub-int v8, v1, v6

    invoke-virtual {v7, v8}, Lcom/android/camera/ui/PopupWindow;->setAnchorPosition(I)V

    .line 239
    iget-object v7, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    add-int v8, v5, v4

    add-int v9, v6, v2

    invoke-virtual {v7, v5, v6, v8, v9}, Lcom/android/camera/ui/PopupWindow;->layout(IIII)V

    .line 241
    return-void
.end method

.method private scheduleDeactiviateIndicatorBar()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 263
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 264
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 266
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x157c

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 269
    return-void
.end method

.method private showPopupWindow(Lcom/android/camera/ui/GLView;)V
    .locals 2
    .parameter "anchorView"

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HeadUpDisplay;->layoutPopupWindow(Lcom/android/camera/ui/GLView;)V

    .line 245
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    invoke-virtual {v0}, Lcom/android/camera/ui/PopupWindow;->popup()V

    .line 246
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 248
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mListener:Lcom/android/camera/ui/HeadUpDisplay$Listener;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mListener:Lcom/android/camera/ui/HeadUpDisplay$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/ui/HeadUpDisplay$Listener;->onPopupWindowVisibilityChanged(I)V

    .line 251
    :cond_0
    return-void
.end method


# virtual methods
.method protected addIndicator(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Lcom/android/camera/ui/BasicIndicator;
    .locals 3
    .parameter "context"
    .parameter "group"
    .parameter "key"

    .prologue
    .line 345
    invoke-virtual {p2, p3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 347
    .local v0, iconPref:Lcom/android/camera/IconListPreference;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 350
    :goto_0
    return-object v2

    .line 348
    :cond_0
    new-instance v1, Lcom/android/camera/ui/BasicIndicator;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/camera/ui/BasicIndicator;-><init>(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V

    .line 349
    .local v1, indicator:Lcom/android/camera/ui/BasicIndicator;
    iget-object v2, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/IndicatorBar;->addComponent(Lcom/android/camera/ui/GLView;)V

    move-object v2, v1

    .line 350
    goto :goto_0
.end method

.method public collapse()Z
    .locals 3

    .prologue
    .line 400
    new-instance v1, Ljava/util/concurrent/FutureTask;

    iget-object v2, p0, Lcom/android/camera/ui/HeadUpDisplay;->mCollapse:Ljava/util/concurrent/Callable;

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 401
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/GLRootView;->runInGLThread(Ljava/lang/Runnable;)V

    .line 403
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 404
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 405
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public deactivateIndicatorBar()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorBar;->setActivated(Z)V

    goto :goto_0
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/camera/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/android/camera/ui/HeadUpDisplay;->scheduleDeactiviateIndicatorBar()V

    .line 304
    const/4 v0, 0x1

    .line 306
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V
    .locals 2
    .parameter "context"
    .parameter "preferenceGroup"

    .prologue
    .line 206
    iput-object p2, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 207
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraNode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 208
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/HeadUpDisplay;->initializeIndicatorBar(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V

    .line 211
    return-void
.end method

.method protected initializeIndicatorBar(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V
    .locals 3
    .parameter "context"
    .parameter "group"

    .prologue
    .line 355
    new-instance v0, Lcom/android/camera/ui/IndicatorBar;

    invoke-direct {v0}, Lcom/android/camera/ui/IndicatorBar;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    .line 357
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    new-instance v1, Lcom/android/camera/ui/NinePatchTexture;

    const v2, 0x7f020035

    invoke-direct {v1, p1, v2}, Lcom/android/camera/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorBar;->setBackground(Lcom/android/camera/ui/NinePatchTexture;)V

    .line 359
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    new-instance v1, Lcom/android/camera/ui/NinePatchTexture;

    const v2, 0x7f020036

    invoke-direct {v1, p1, v2}, Lcom/android/camera/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorBar;->setHighlight(Lcom/android/camera/ui/NinePatchTexture;)V

    .line 361
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HeadUpDisplay;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 362
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    new-instance v1, Lcom/android/camera/ui/HeadUpDisplay$IndicatorBarListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/HeadUpDisplay$IndicatorBarListener;-><init>(Lcom/android/camera/ui/HeadUpDisplay;Lcom/android/camera/ui/HeadUpDisplay$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorBar;->setOnItemSelectedListener(Lcom/android/camera/ui/IndicatorBar$OnItemSelectedListener;)V

    .line 363
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorBar;->isActivated()Z

    move-result v0

    return v0
.end method

.method protected onAttachToRoot(Lcom/android/camera/ui/GLRootView;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/android/camera/ui/GLView;->onAttachToRoot(Lcom/android/camera/ui/GLRootView;)V

    .line 115
    new-instance v0, Lcom/android/camera/ui/HeadUpDisplay$2;

    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->getTimerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/HeadUpDisplay$2;-><init>(Lcom/android/camera/ui/HeadUpDisplay;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mHandler:Landroid/os/Handler;

    .line 131
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 187
    sub-int v3, p4, p2

    .line 188
    .local v3, width:I
    sub-int v0, p5, p3

    .line 189
    .local v0, height:I
    iget-object v4, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    div-int/lit8 v5, v3, 0x3

    const/high16 v6, -0x8000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/high16 v6, 0x4000

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ui/IndicatorBar;->measure(II)V

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/GLRootView;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 193
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x4120

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 195
    .local v2, rightMargin:I
    iget-object v4, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    iget-object v5, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    invoke-virtual {v5}, Lcom/android/camera/ui/IndicatorBar;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v3, v5

    sub-int/2addr v5, v2

    const/4 v6, 0x0

    sub-int v7, v3, v2

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/android/camera/ui/IndicatorBar;->layout(IIII)V

    .line 199
    iget-object v4, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    invoke-virtual {v4}, Lcom/android/camera/ui/PopupWindow;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 201
    iget-object v4, p0, Lcom/android/camera/ui/HeadUpDisplay;->mAnchorView:Lcom/android/camera/ui/GLView;

    invoke-direct {p0, v4}, Lcom/android/camera/ui/HeadUpDisplay;->layoutPopupWindow(Lcom/android/camera/ui/GLView;)V

    .line 203
    :cond_0
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 316
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    invoke-virtual {v0}, Lcom/android/camera/ui/PopupWindow;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    .line 328
    :goto_0
    return v0

    .line 321
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v3

    .line 328
    goto :goto_0

    .line 323
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/ui/HeadUpDisplay;->hidePopupWindow()V

    .line 324
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorBar;->setSelectedIndex(I)V

    .line 325
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/IndicatorBar;->setActivated(Z)V

    goto :goto_1

    .line 321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 6
    .parameter "keyvalues"

    .prologue
    .line 164
    array-length v3, p1

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 165
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v2

    .line 168
    .local v2, root:Lcom/android/camera/ui/GLRootView;
    if-eqz v2, :cond_2

    .line 169
    new-instance v3, Lcom/android/camera/ui/HeadUpDisplay$5;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/ui/HeadUpDisplay$5;-><init>(Lcom/android/camera/ui/HeadUpDisplay;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    .line 182
    :cond_1
    return-void

    .line 178
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 179
    iget-object v3, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    aget-object v4, p1, v0

    add-int/lit8 v5, v0, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/IndicatorBar;->overrideSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public reloadPreferences()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0}, Lcom/android/camera/PreferenceGroup;->reloadValue()V

    .line 441
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorBar;->reloadPreferences()V

    .line 442
    return-void
.end method

.method public restorePreferences(Lcom/android/camera/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/camera/ui/HeadUpDisplay;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/HeadUpDisplay$7;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/HeadUpDisplay$7;-><init>(Lcom/android/camera/ui/HeadUpDisplay;Lcom/android/camera/hardware/Camera$Parameters;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLRootView;->runInGLThread(Ljava/lang/Runnable;)V

    .line 437
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mEnabled:Z

    if-ne v0, p1, :cond_0

    .line 312
    :goto_0
    return-void

    .line 311
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mEnabled:Z

    goto :goto_0
.end method

.method public setListener(Lcom/android/camera/ui/HeadUpDisplay$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mListener:Lcom/android/camera/ui/HeadUpDisplay$Listener;

    .line 411
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 277
    iput p1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mOrientation:I

    .line 278
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mIndicatorBar:Lcom/android/camera/ui/IndicatorBar;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/IndicatorBar;->setOrientation(I)V

    .line 279
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    if-nez v1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupWindow;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 281
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 282
    .local v0, alpha:Landroid/view/animation/Animation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 283
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/PopupWindow;->startAnimation(Landroid/view/animation/Animation;)V

    .line 284
    invoke-direct {p0}, Lcom/android/camera/ui/HeadUpDisplay;->scheduleDeactiviateIndicatorBar()V

    .line 286
    .end local v0           #alpha:Landroid/view/animation/Animation;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/HeadUpDisplay;->mPopupWindow:Lcom/android/camera/ui/PopupWindow;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/PopupWindow;->setOrientation(I)V

    goto :goto_0
.end method

.method public setZoomIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mZoomSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mDisableZoom:Z

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mZoomIndicator:Lcom/android/camera/ui/ZoomIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomIndicator;->setZoomIndex(I)V

    .line 454
    :cond_0
    return-void
.end method

.method public setZoomListener(Lcom/android/camera/ui/ZoomController$ZoomListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mZoomSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mDisableZoom:Z

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mZoomIndicator:Lcom/android/camera/ui/ZoomIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomIndicator;->setZoomListener(Lcom/android/camera/ui/ZoomController$ZoomListener;)V

    .line 448
    :cond_0
    return-void
.end method

.method public setZoomRatios([F)V
    .locals 1
    .parameter "zoomRatios"

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mZoomSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mDisableZoom:Z

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/camera/ui/HeadUpDisplay;->mZoomIndicator:Lcom/android/camera/ui/ZoomIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomIndicator;->setZoomRatios([F)V

    .line 460
    :cond_0
    return-void
.end method
