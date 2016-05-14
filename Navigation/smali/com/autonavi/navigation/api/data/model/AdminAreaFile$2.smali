.class final Lcom/autonavi/navigation/api/data/model/AdminAreaFile$2;
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
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/data/model/AdminAreaFile;
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Lcom/autonavi/navigation/api/data/model/AdminAreaFile;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/autonavi/navigation/api/data/model/AdminAreaFile;-><init>(ZLjava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/data/model/AdminAreaFile;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/data/model/AdminAreaFile;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/data/model/AdminAreaFile$2;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/data/model/AdminAreaFile;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/data/model/AdminAreaFile$2;->a(I)[Lcom/autonavi/navigation/api/data/model/AdminAreaFile;

    move-result-object v0

    return-object v0
.end method
