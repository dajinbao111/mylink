.class final Lcom/autonavi/navigation/api/guide/model/TurnByTurnType$2;
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
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;
    .locals 2

    invoke-static {}, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->values()[Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType$2;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType$2;->a(I)[Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    move-result-object v0

    return-object v0
.end method