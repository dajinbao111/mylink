.class Lcom/autonavi/navigation/api/demo/model/DemoItem$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/navigation/api/demo/model/DemoItem$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/demo/model/DemoItem$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/demo/model/DemoItem;
    .locals 6

    new-instance v0, Lcom/autonavi/navigation/api/demo/model/DemoItem;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/navigation/api/demo/model/DemoItem;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/demo/model/DemoItem;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/demo/model/DemoItem;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/demo/model/DemoItem$a;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/demo/model/DemoItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/demo/model/DemoItem$a;->a(I)[Lcom/autonavi/navigation/api/demo/model/DemoItem;

    move-result-object v0

    return-object v0
.end method
