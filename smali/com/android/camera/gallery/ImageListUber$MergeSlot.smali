.class Lcom/android/camera/gallery/ImageListUber$MergeSlot;
.super Ljava/lang/Object;
.source "ImageListUber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/gallery/ImageListUber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MergeSlot"
.end annotation


# instance fields
.field mDateTaken:J

.field mImage:Lcom/android/camera/gallery/IImage;

.field private final mList:Lcom/android/camera/gallery/IImageList;

.field mListIndex:I

.field private mOffset:I


# direct methods
.method public constructor <init>(Lcom/android/camera/gallery/IImageList;I)V
    .locals 1
    .parameter "list"
    .parameter "index"

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/gallery/ImageListUber$MergeSlot;->mOffset:I

    .line 178
    iput-object p1, p0, Lcom/android/camera/gallery/ImageListUber$MergeSlot;->mList:Lcom/android/camera/gallery/IImageList;

    .line 179
    iput p2, p0, Lcom/android/camera/gallery/ImageListUber$MergeSlot;->mListIndex:I

    .line 180
    return-void
.end method


# virtual methods
.method public next()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 183
    iget v0, p0, Lcom/android/camera/gallery/ImageListUber$MergeSlot;->mOffset:I

    iget-object v1, p0, Lcom/android/camera/gallery/ImageListUber$MergeSlot;->mList:Lcom/android/camera/gallery/IImageList;

    invoke-interface {v1}, Lcom/android/camera/gallery/IImageList;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 186
    :goto_0
    return v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/camera/gallery/ImageListUber$MergeSlot;->mList:Lcom/android/camera/gallery/IImageList;

    iget v1, p0, Lcom/android/camera/gallery/ImageListUber$MergeSlot;->mOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/gallery/ImageListUber$MergeSlot;->mOffset:I

    invoke-interface {v0, v1}, Lcom/android/camera/gallery/IImageList;->getImageAt(I)Lcom/android/camera/gallery/IImage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/gallery/ImageListUber$MergeSlot;->mImage:Lcom/android/camera/gallery/IImage;

    .line 185
    iget-object v0, p0, Lcom/android/camera/gallery/ImageListUber$MergeSlot;->mImage:Lcom/android/camera/gallery/IImage;

    invoke-interface {v0}, Lcom/android/camera/gallery/IImage;->getDateTaken()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/gallery/ImageListUber$MergeSlot;->mDateTaken:J

    move v0, v2

    .line 186
    goto :goto_0
.end method
