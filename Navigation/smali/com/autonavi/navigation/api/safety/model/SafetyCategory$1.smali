.class final Lcom/autonavi/navigation/api/safety/model/SafetyCategory$1;
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
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/safety/model/SafetyCategory;
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {}, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->values()[Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/safety/model/SafetyCategory;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/safety/model/SafetyCategory$1;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/safety/model/SafetyCategory$1;->a(I)[Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    move-result-object v0

    return-object v0
.end method
