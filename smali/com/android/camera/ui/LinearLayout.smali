.class public Lcom/android/camera/ui/LinearLayout;
.super Lcom/android/camera/ui/GLView;
.source "LinearLayout.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/camera/ui/GLView;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/LinearLayout;->mOrientation:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 51
    iget-object v7, p0, Lcom/android/camera/ui/LinearLayout;->mPaddings:Landroid/graphics/Rect;

    .line 52
    .local v7, p:Landroid/graphics/Rect;
    iget v5, v7, Landroid/graphics/Rect;->left:I

    .line 53
    .local v5, offsetX:I
    sub-int v10, p4, p2

    iget v11, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    iget v11, v7, Landroid/graphics/Rect;->right:I

    sub-int v9, v10, v11

    .line 54
    .local v9, width:I
    sub-int v10, p5, p3

    iget v11, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v10, v11

    .line 55
    .local v0, height:I
    iget v6, v7, Landroid/graphics/Rect;->top:I

    .line 56
    .local v6, offsetY:I
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/camera/ui/LinearLayout;->getComponentCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 57
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/LinearLayout;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v8

    .line 58
    .local v8, view:Lcom/android/camera/ui/GLView;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/camera/ui/GLView;->measure(II)V

    .line 59
    iget v10, p0, Lcom/android/camera/ui/LinearLayout;->mOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 60
    invoke-virtual {v8}, Lcom/android/camera/ui/GLView;->getMeasuredHeight()I

    move-result v10

    add-int v4, v6, v10

    .line 61
    .local v4, nextOffsetY:I
    add-int v10, v5, v9

    invoke-virtual {v8, v5, v6, v10, v4}, Lcom/android/camera/ui/GLView;->layout(IIII)V

    .line 62
    move v6, v4

    .line 56
    .end local v4           #nextOffsetY:I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v8}, Lcom/android/camera/ui/GLView;->getMeasuredWidth()I

    move-result v10

    add-int v3, v5, v10

    .line 65
    .local v3, nextOffsetX:I
    add-int v10, v6, v0

    invoke-virtual {v8, v5, v6, v3, v10}, Lcom/android/camera/ui/GLView;->layout(IIII)V

    .line 66
    move v5, v3

    goto :goto_1

    .line 69
    .end local v3           #nextOffsetX:I
    .end local v8           #view:Lcom/android/camera/ui/GLView;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v7, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    .local v4, width:I
    const/4 v0, 0x0

    .line 33
    .local v0, height:I
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/camera/ui/LinearLayout;->getComponentCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 34
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/LinearLayout;->getComponent(I)Lcom/android/camera/ui/GLView;

    move-result-object v3

    .line 35
    .local v3, view:Lcom/android/camera/ui/GLView;
    invoke-virtual {v3, v7, v7}, Lcom/android/camera/ui/GLView;->measure(II)V

    .line 36
    iget v5, p0, Lcom/android/camera/ui/LinearLayout;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 37
    invoke-virtual {v3}, Lcom/android/camera/ui/GLView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 38
    invoke-virtual {v3}, Lcom/android/camera/ui/GLView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v0, v5

    .line 33
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v3}, Lcom/android/camera/ui/GLView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 41
    invoke-virtual {v3}, Lcom/android/camera/ui/GLView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 44
    .end local v3           #view:Lcom/android/camera/ui/GLView;
    :cond_1
    new-instance v5, Lcom/android/camera/ui/MeasureHelper;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/MeasureHelper;-><init>(Lcom/android/camera/ui/GLView;)V

    invoke-virtual {v5, v4, v0}, Lcom/android/camera/ui/MeasureHelper;->setPreferredContentSize(II)Lcom/android/camera/ui/MeasureHelper;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/android/camera/ui/MeasureHelper;->measure(II)V

    .line 47
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/camera/ui/LinearLayout;->mOrientation:I

    .line 73
    return-void
.end method
