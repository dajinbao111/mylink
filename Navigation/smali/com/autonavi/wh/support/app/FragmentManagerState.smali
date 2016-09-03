.class final Lcom/autonavi/wh/support/app/FragmentManagerState;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field mActive:[Lcom/autonavi/wh/support/app/FragmentState;

.field mAdded:[I

.field mBackStack:[Lcom/autonavi/wh/support/app/BackStackState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/wh/support/app/FragmentManagerState$1;

    invoke-direct {v0}, Lcom/autonavi/wh/support/app/FragmentManagerState$1;-><init>()V

    sput-object v0, Lcom/autonavi/wh/support/app/FragmentManagerState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/autonavi/wh/support/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/wh/support/app/FragmentState;

    iput-object v0, p0, Lcom/autonavi/wh/support/app/FragmentManagerState;->mActive:[Lcom/autonavi/wh/support/app/FragmentState;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/support/app/FragmentManagerState;->mAdded:[I

    sget-object v0, Lcom/autonavi/wh/support/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/wh/support/app/BackStackState;

    iput-object v0, p0, Lcom/autonavi/wh/support/app/FragmentManagerState;->mBackStack:[Lcom/autonavi/wh/support/app/BackStackState;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/support/app/FragmentManagerState;->mActive:[Lcom/autonavi/wh/support/app/FragmentState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/autonavi/wh/support/app/FragmentManagerState;->mAdded:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Lcom/autonavi/wh/support/app/FragmentManagerState;->mBackStack:[Lcom/autonavi/wh/support/app/BackStackState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
