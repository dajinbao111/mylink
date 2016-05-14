.class public Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;
.super Ljava/lang/Object;


# static fields
.field public static final FAILURE:I = -0x1

.field public static final SUCCESS:I


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lcom/autonavi/navigation/api/poi/PoiManager$Query;

.field private final c:I


# direct methods
.method public constructor <init>(ILjava/util/List;Lcom/autonavi/navigation/api/poi/PoiManager$Query;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;->c:I

    iput-object p2, p0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;->b:Lcom/autonavi/navigation/api/poi/PoiManager$Query;

    return-void
.end method


# virtual methods
.method public getPois()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;->a:Ljava/util/List;

    return-object v0
.end method

.method public getQuery()Lcom/autonavi/navigation/api/poi/PoiManager$Query;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;->b:Lcom/autonavi/navigation/api/poi/PoiManager$Query;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;->c:I

    return v0
.end method

.method public hasPoi()Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
