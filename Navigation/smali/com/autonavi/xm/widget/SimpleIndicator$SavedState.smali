.class public Lcom/autonavi/xm/widget/SimpleIndicator$SavedState;
.super Landroid/view/View$BaseSavedState;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field current:I

.field total:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/xm/widget/SimpleIndicator$SavedState$1;

    invoke-direct {v0}, Lcom/autonavi/xm/widget/SimpleIndicator$SavedState$1;-><init>()V

    sput-object v0, Lcom/autonavi/xm/widget/SimpleIndicator$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    iput v0, p0, Lcom/autonavi/xm/widget/SimpleIndicator$SavedState;->total:I

    iput v0, p0, Lcom/autonavi/xm/widget/SimpleIndicator$SavedState;->current:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xm/widget/SimpleIndicator$SavedState;->total:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xm/widget/SimpleIndicator$SavedState;->current:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/autonavi/xm/widget/SimpleIndicator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/widget/SimpleIndicator$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput v0, p0, Lcom/autonavi/xm/widget/SimpleIndicator$SavedState;->total:I

    iput v0, p0, Lcom/autonavi/xm/widget/SimpleIndicator$SavedState;->current:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/autonavi/xm/widget/SimpleIndicator$SavedState;->total:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/xm/widget/SimpleIndicator$SavedState;->current:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
