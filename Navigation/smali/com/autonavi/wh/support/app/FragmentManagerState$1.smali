.class final Lcom/autonavi/wh/support/app/FragmentManagerState$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/autonavi/wh/support/app/FragmentManagerState;
    .locals 1

    new-instance v0, Lcom/autonavi/wh/support/app/FragmentManagerState;

    invoke-direct {v0, p1}, Lcom/autonavi/wh/support/app/FragmentManagerState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/support/app/FragmentManagerState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/autonavi/wh/support/app/FragmentManagerState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/autonavi/wh/support/app/FragmentManagerState;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/wh/support/app/FragmentManagerState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/support/app/FragmentManagerState$1;->newArray(I)[Lcom/autonavi/wh/support/app/FragmentManagerState;

    move-result-object v0

    return-object v0
.end method
