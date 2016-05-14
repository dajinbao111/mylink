.class final Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;
    .locals 3

    sget-object v0, Lcom/autonavi/navigation/api/guide/model/SafetyData;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelableArray(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)[Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/guide/model/SafetyData;

    sget-object v1, Lcom/autonavi/navigation/api/guide/model/SafetyData;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelableArray(Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)[Lcom/autonavi/navigation/api/internal/NativeParcelable;

    move-result-object v1

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

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo$2;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo$2;->a(I)[Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;

    move-result-object v0

    return-object v0
.end method
