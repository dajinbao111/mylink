.class final Lcom/autonavi/navigation/api/internal/ObjectId$2;
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
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/internal/ObjectId;
    .locals 7

    new-instance v0, Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readByte()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readByte()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/navigation/api/internal/ObjectId;-><init>(Ljava/lang/Byte;Ljava/lang/Byte;SIII)V

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/internal/ObjectId;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/internal/ObjectId;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/internal/ObjectId$2;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/internal/ObjectId;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/internal/ObjectId$2;->a(I)[Lcom/autonavi/navigation/api/internal/ObjectId;

    move-result-object v0

    return-object v0
.end method
