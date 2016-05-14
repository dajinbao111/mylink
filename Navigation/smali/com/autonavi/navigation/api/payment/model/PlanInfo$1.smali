.class final Lcom/autonavi/navigation/api/payment/model/PlanInfo$1;
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
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/payment/model/PlanInfo;
    .locals 6

    new-instance v0, Lcom/autonavi/navigation/api/payment/model/PlanInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/navigation/api/payment/model/PlanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/payment/model/PlanInfo;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/payment/model/PlanInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/payment/model/PlanInfo$1;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/payment/model/PlanInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/payment/model/PlanInfo$1;->a(I)[Lcom/autonavi/navigation/api/payment/model/PlanInfo;

    move-result-object v0

    return-object v0
.end method
