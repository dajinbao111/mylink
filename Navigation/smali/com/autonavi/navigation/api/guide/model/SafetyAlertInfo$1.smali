.class final Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo$1;
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
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;
    .locals 3

    const-class v0, Lcom/autonavi/navigation/api/guide/model/SafetyData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/guide/model/SafetyData;

    check-cast v0, [Lcom/autonavi/navigation/api/guide/model/SafetyData;

    const-class v1, Lcom/autonavi/navigation/api/guide/model/SafetyData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, [Lcom/autonavi/navigation/api/guide/model/SafetyData;

    check-cast v1, [Lcom/autonavi/navigation/api/guide/model/SafetyData;

    new-instance v2, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;

    invoke-direct {v2, v0, v1}, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;-><init>([Lcom/autonavi/navigation/api/guide/model/SafetyData;[Lcom/autonavi/navigation/api/guide/model/SafetyData;)V

    return-object v2
.end method

.method public a(I)[Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo$1;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo$1;->a(I)[Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;

    move-result-object v0

    return-object v0
.end method
