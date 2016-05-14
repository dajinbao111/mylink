.class final Lcom/autonavi/navigation/api/guide/model/GuideInfo$2;
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
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/guide/model/GuideInfo;
    .locals 12

    const/4 v10, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v8

    if-ne v8, v0, :cond_1

    move v8, v0

    :goto_0
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v9

    if-ne v9, v0, :cond_2

    move v9, v0

    :goto_1
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v11

    if-ne v11, v0, :cond_0

    move v10, v0

    :cond_0
    new-instance v0, Lcom/autonavi/navigation/api/guide/model/GuideInfo;

    invoke-direct/range {v0 .. v10}, Lcom/autonavi/navigation/api/guide/model/GuideInfo;-><init>(IIIIILjava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v0

    :cond_1
    move v8, v10

    goto :goto_0

    :cond_2
    move v9, v10

    goto :goto_1
.end method

.method public a(I)[Lcom/autonavi/navigation/api/guide/model/GuideInfo;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/guide/model/GuideInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/guide/model/GuideInfo$2;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/guide/model/GuideInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/guide/model/GuideInfo$2;->a(I)[Lcom/autonavi/navigation/api/guide/model/GuideInfo;

    move-result-object v0

    return-object v0
.end method
