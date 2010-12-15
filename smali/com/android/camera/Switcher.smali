.class public Lcom/android/camera/Switcher;
.super Landroid/widget/ImageView;
.source "Switcher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Switcher$OnSwitchListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_SPEED:I = 0xc8

.field private static final NO_ANIMATION:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "Switcher"


# instance fields
.field private mAnimationStartPosition:I

.field private mAnimationStartTime:J

.field private mListener:Lcom/android/camera/Switcher$OnSwitchListener;

.field private mPosition:I

.field private mSwitch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-boolean v0, p0, Lcom/android/camera/Switcher;->mSwitch:Z

    .line 48
    iput v0, p0, Lcom/android/camera/Switcher;->mPosition:I

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/Switcher;->mAnimationStartTime:J

    .line 55
    return-void
.end method

.method private startParkingAnimation()V
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Switcher;->mAnimationStartTime:J

    .line 118
    iget v0, p0, Lcom/android/camera/Switcher;->mPosition:I

    iput v0, p0, Lcom/android/camera/Switcher;->mAnimationStartPosition:I

    .line 119
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 123
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 124
    .local v2, drawableHeight:I
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getHeight()I

    move-result v3

    .line 125
    .local v3, height:I
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getPaddingTop()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v0, v5, v2

    .line 127
    .local v0, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 128
    .local v4, x:I
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getPaddingTop()I

    move-result v5

    sub-int v5, v4, v5

    div-int/lit8 v6, v2, 0x2

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/camera/Switcher;->mPosition:I

    .line 129
    iget v5, p0, Lcom/android/camera/Switcher;->mPosition:I

    if-gez v5, :cond_0

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/camera/Switcher;->mPosition:I

    .line 130
    :cond_0
    iget v5, p0, Lcom/android/camera/Switcher;->mPosition:I

    if-le v5, v0, :cond_1

    iput v0, p0, Lcom/android/camera/Switcher;->mPosition:I

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->invalidate()V

    .line 132
    return-void
.end method

.method private tryToSetSwitch(Z)V
    .locals 1
    .parameter "onOff"

    .prologue
    .line 66
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/Switcher;->mSwitch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/android/camera/Switcher;->startParkingAnimation()V

    .line 78
    :goto_0
    return-void

    .line 68
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/Switcher;->mListener:Lcom/android/camera/Switcher$OnSwitchListener;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/camera/Switcher;->mListener:Lcom/android/camera/Switcher$OnSwitchListener;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/Switcher$OnSwitchListener;->onSwitchChanged(Lcom/android/camera/Switcher;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/android/camera/Switcher;->startParkingAnimation()V

    goto :goto_0

    .line 74
    :cond_1
    :try_start_2
    iput-boolean p1, p0, Lcom/android/camera/Switcher;->mSwitch:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    invoke-direct {p0}, Lcom/android/camera/Switcher;->startParkingAnimation()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/camera/Switcher;->startParkingAnimation()V

    throw v0
.end method


# virtual methods
.method public addTouchView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 175
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 138
    .local v6, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 139
    .local v7, drawableHeight:I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 141
    .local v8, drawableWidth:I
    if-eqz v8, :cond_0

    if-nez v7, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Switcher;->getHeight()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Switcher;->getPaddingTop()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Switcher;->getPaddingBottom()I

    move-result v15

    sub-int/2addr v14, v15

    sub-int v3, v14, v7

    .line 147
    .local v3, available:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/Switcher;->mAnimationStartTime:J

    move-wide v14, v0

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_9

    .line 148
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v12

    .line 149
    .local v12, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/Switcher;->mAnimationStartTime:J

    move-wide v14, v0

    sub-long v14, v12, v14

    long-to-int v4, v14

    .line 150
    .local v4, deltaTime:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/Switcher;->mAnimationStartPosition:I

    move v14, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/Switcher;->mSwitch:Z

    move v15, v0

    if-eqz v15, :cond_5

    move v15, v4

    :goto_1
    mul-int/lit16 v15, v15, 0xc8

    div-int/lit16 v15, v15, 0x3e8

    add-int/2addr v14, v15

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/Switcher;->mPosition:I

    .line 152
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/Switcher;->mPosition:I

    move v14, v0

    if-gez v14, :cond_2

    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/Switcher;->mPosition:I

    .line 153
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/Switcher;->mPosition:I

    move v14, v0

    if-le v14, v3, :cond_3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/Switcher;->mPosition:I

    .line 154
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/Switcher;->mPosition:I

    move v14, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/Switcher;->mSwitch:Z

    move v15, v0

    if-eqz v15, :cond_6

    move v15, v3

    :goto_2
    if-ne v14, v15, :cond_7

    const/4 v14, 0x1

    move v5, v14

    .line 155
    .local v5, done:Z
    :goto_3
    if-nez v5, :cond_8

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Switcher;->invalidate()V

    .line 163
    .end local v4           #deltaTime:I
    .end local v5           #done:Z
    .end local v12           #time:J
    :cond_4
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Switcher;->getPaddingTop()I

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/Switcher;->mPosition:I

    move v15, v0

    add-int v10, v14, v15

    .line 164
    .local v10, offsetTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Switcher;->getWidth()I

    move-result v14

    sub-int/2addr v14, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Switcher;->getPaddingLeft()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Switcher;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    div-int/lit8 v9, v14, 0x2

    .line 166
    .local v9, offsetLeft:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v11

    .line 167
    .local v11, saveCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 168
    int-to-float v14, v9

    int-to-float v15, v10

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 169
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 170
    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 150
    .end local v9           #offsetLeft:I
    .end local v10           #offsetTop:I
    .end local v11           #saveCount:I
    .restart local v4       #deltaTime:I
    .restart local v12       #time:J
    :cond_5
    neg-int v15, v4

    goto :goto_1

    .line 154
    :cond_6
    const/4 v15, 0x0

    goto :goto_2

    :cond_7
    const/4 v14, 0x0

    move v5, v14

    goto :goto_3

    .line 158
    .restart local v5       #done:Z
    :cond_8
    const-wide/16 v14, -0x1

    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/camera/Switcher;->mAnimationStartTime:J

    goto :goto_4

    .line 160
    .end local v4           #deltaTime:I
    .end local v5           #done:Z
    .end local v12           #time:J
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Switcher;->isPressed()Z

    move-result v14

    if-nez v14, :cond_4

    .line 161
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/Switcher;->mSwitch:Z

    move v14, v0

    if-eqz v14, :cond_a

    move v14, v3

    :goto_5
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/Switcher;->mPosition:I

    goto :goto_4

    :cond_a
    const/4 v14, 0x0

    goto :goto_5
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 181
    invoke-virtual {p0, p2}, Lcom/android/camera/Switcher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 113
    :goto_0
    return v1

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 91
    .local v0, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    move v1, v4

    .line 113
    goto :goto_0

    .line 93
    :pswitch_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/camera/Switcher;->mAnimationStartTime:J

    .line 94
    invoke-virtual {p0, v4}, Lcom/android/camera/Switcher;->setPressed(Z)V

    .line 95
    invoke-direct {p0, p1}, Lcom/android/camera/Switcher;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 99
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/camera/Switcher;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 103
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/camera/Switcher;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 104
    iget v1, p0, Lcom/android/camera/Switcher;->mPosition:I

    div-int/lit8 v2, v0, 0x2

    if-lt v1, v2, :cond_1

    move v1, v4

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/camera/Switcher;->tryToSetSwitch(Z)V

    .line 105
    invoke-virtual {p0, v3}, Lcom/android/camera/Switcher;->setPressed(Z)V

    goto :goto_1

    :cond_1
    move v1, v3

    .line 104
    goto :goto_2

    .line 109
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/camera/Switcher;->mSwitch:Z

    invoke-direct {p0, v1}, Lcom/android/camera/Switcher;->tryToSetSwitch(Z)V

    .line 110
    invoke-virtual {p0, v3}, Lcom/android/camera/Switcher;->setPressed(Z)V

    goto :goto_1

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnSwitchListener(Lcom/android/camera/Switcher$OnSwitchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/camera/Switcher;->mListener:Lcom/android/camera/Switcher$OnSwitchListener;

    .line 82
    return-void
.end method

.method public setSwitch(Z)V
    .locals 1
    .parameter "onOff"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/camera/Switcher;->mSwitch:Z

    if-ne v0, p1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/Switcher;->mSwitch:Z

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->invalidate()V

    goto :goto_0
.end method
