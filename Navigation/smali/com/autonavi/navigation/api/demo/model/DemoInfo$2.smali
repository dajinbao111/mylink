.class final Lcom/autonavi/navigation/api/demo/model/DemoInfo$2;
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
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/demo/model/DemoInfo;
    .locals 3

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/autonavi/navigation/api/demo/model/DemoItem;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    invoke-virtual {p1, v1, v2}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readParcelableList(Ljava/util/List;Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/autonavi/navigation/api/demo/model/DemoInfo;

    invoke-direct {v2, v0, v1}, Lcom/autonavi/navigation/api/demo/model/DemoInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v2
.end method

.method public a(I)[Lcom/autonavi/navigation/api/demo/model/DemoInfo;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/demo/model/DemoInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/demo/model/DemoInfo$2;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/demo/model/DemoInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/demo/model/DemoInfo$2;->a(I)[Lcom/autonavi/navigation/api/demo/model/DemoInfo;

    move-result-object v0

    return-object v0
.end method
