.class public Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;
.super Ljava/lang/Object;


# instance fields
.field public nCarDisFromStart:I

.field public nCarIndex:I

.field public nDestDisFromStart:[[I

.field public nNumberOfItem:I

.field public nTotalDis:I

.field public pItem:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    check-cast v0, [[I

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nDestDisFromStart:[[I

    iput-object v1, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->pItem:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;

    return-void
.end method

.method public constructor <init>(III[II[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    check-cast v0, [[I

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nDestDisFromStart:[[I

    iput-object v1, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->pItem:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;

    const-string v0, "tmc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GGuideRoadTmcList2 000: %d"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nTotalDis:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nCarIndex:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nCarDisFromStart:I

    array-length v0, p4

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const-string v1, "tmc"

    const-string v3, "GGuideRoadTmcList2 111"

    invoke-static {v1, v3}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aget-object v3, v0, v1

    mul-int/lit8 v4, v1, 0x2

    aget v4, p4, v4

    aput v4, v3, v2

    aget-object v3, v0, v1

    const/4 v4, 0x1

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, p4, v5

    aput v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "tmc"

    const-string v2, "GGuideRoadTmcList2 222"

    invoke-static {v1, v2}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nDestDisFromStart:[[I

    iput p5, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nNumberOfItem:I

    iput-object p6, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->pItem:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;

    const-string v0, "tmc"

    const-string v1, "GGuideRoadTmcList2 333"

    invoke-static {v0, v1}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(III[[II[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    check-cast v0, [[I

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nDestDisFromStart:[[I

    iput-object v1, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->pItem:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;

    const-string v0, "tmc"

    const-string v1, "GGuideRoadTmcList1 000"

    invoke-static {v0, v1}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nTotalDis:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nCarIndex:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nCarDisFromStart:I

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nDestDisFromStart:[[I

    iput p5, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->nNumberOfItem:I

    iput-object p6, p0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;->pItem:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmc;

    const-string v0, "tmc"

    const-string v1, "GGuideRoadTmcList1 111"

    invoke-static {v0, v1}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
