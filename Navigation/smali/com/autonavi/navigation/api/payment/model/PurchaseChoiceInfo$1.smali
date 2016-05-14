.class final Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo$1;
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
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;
    .locals 4

    new-instance v1, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    const-class v0, Lcom/autonavi/navigation/api/payment/model/PlanInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/payment/model/PlanInfo;

    check-cast v0, [Lcom/autonavi/navigation/api/payment/model/PlanInfo;

    invoke-direct {v1, v2, v3, v0}, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/autonavi/navigation/api/payment/model/PlanInfo;)V

    return-object v1
.end method

.method public a(I)[Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo$1;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo$1;->a(I)[Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;

    move-result-object v0

    return-object v0
.end method
