.class public final Lcom/autonavi/navigation/api/safety/a/c;
.super Lcom/autonavi/navigation/api/safety/a/a;


# instance fields
.field private final a:Lcom/autonavi/xm/navigation/engine/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/navigation/api/safety/a/a;-><init>()V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/k;->a()Lcom/autonavi/xm/navigation/engine/k;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/safety/a/c;->a:Lcom/autonavi/xm/navigation/engine/k;

    return-void
.end method

.method private a(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;)Lcom/autonavi/navigation/api/safety/model/SafetyCategory;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->nativeValue:I

    invoke-static {v0}, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->valueOf(I)Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/navigation/api/safety/model/SafetyInfo;
    .locals 8

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Lcom/autonavi/navigation/api/map/model/LatLng;

    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget-object v1, p1, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    invoke-direct {v4, v0, v1}, Lcom/autonavi/navigation/api/map/model/LatLng;-><init>(II)V

    new-instance v0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;

    iget-object v1, p1, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->eCategory:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    invoke-direct {p0, v1}, Lcom/autonavi/navigation/api/safety/a/c;->a(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;)Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    move-result-object v1

    iget v1, v1, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->value:I

    invoke-static {v4, v1}, Lcom/autonavi/navigation/api/internal/a/a/e;->a(Lcom/autonavi/navigation/api/map/model/LatLng;I)J

    move-result-wide v1

    iget-object v3, p1, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->szName:Ljava/lang/String;

    iget v5, p1, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->lAdminCode:I

    iget-object v6, p1, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->eCategory:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    invoke-direct {p0, v6}, Lcom/autonavi/navigation/api/safety/a/c;->a(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;)Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    move-result-object v6

    iget-short v7, p1, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nSpeed:S

    invoke-direct/range {v0 .. v7}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;-><init>(JLjava/lang/String;Lcom/autonavi/navigation/api/map/model/LatLng;ILcom/autonavi/navigation/api/safety/model/SafetyCategory;I)V

    goto :goto_0
.end method

.method private b(Lcom/autonavi/navigation/api/safety/model/SafetyInfo;)Lcom/autonavi/navigation/api/safety/model/SafetyInfo;
    .locals 3

    new-instance v0, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;

    invoke-direct {v0, p1}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;-><init>(Lcom/autonavi/navigation/api/safety/model/SafetyInfo;)V

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->getCategory()Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->ordinal()I

    move-result v2

    invoke-static {v1, v2}, Lcom/autonavi/navigation/api/internal/a/a/e;->a(Lcom/autonavi/navigation/api/map/model/LatLng;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->setId(J)Lcom/autonavi/navigation/api/safety/model/SafetyInfo;

    return-object v0
.end method

.method private c(Lcom/autonavi/navigation/api/safety/model/SafetyCategory;)Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->value:I

    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->valueOf(I)Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Lcom/autonavi/navigation/api/safety/model/SafetyInfo;)Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;
    .locals 10

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    iget v1, v1, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v4, v0, v1}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    const/4 v6, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->getAdminCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->getCategory()Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    move-result-object v3

    iget v3, v3, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->value:I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->getSpeed()S

    move-result v5

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/autonavi/xm/navigation/server/GDate;

    invoke-direct {v8}, Lcom/autonavi/xm/navigation/server/GDate;-><init>()V

    new-instance v9, Lcom/autonavi/xm/navigation/server/GTime;

    invoke-direct {v9}, Lcom/autonavi/xm/navigation/server/GTime;-><init>()V

    invoke-direct/range {v0 .. v9}, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;-><init>(IIILcom/autonavi/xm/navigation/server/GCoord;SSLjava/lang/String;Lcom/autonavi/xm/navigation/server/GDate;Lcom/autonavi/xm/navigation/server/GTime;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/autonavi/navigation/api/safety/model/SafetyInfo;)Lcom/autonavi/navigation/api/safety/model/SafetyInfo;
    .locals 4

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/autonavi/navigation/api/internal/a/a/e;->a(J)I

    move-result v0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->getCategory()Lcom/autonavi/navigation/api/safety/model/SafetyCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/safety/model/SafetyCategory;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/safety/a/c;->a:Lcom/autonavi/xm/navigation/engine/k;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/safety/a/c;->c(Lcom/autonavi/navigation/api/safety/model/SafetyInfo;)Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/k;->b(Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_DUPLICATE_DATA:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    new-instance v1, Lcom/autonavi/navigation/api/AnException;

    invoke-direct {v1, v0}, Lcom/autonavi/navigation/api/AnException;-><init>(I)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/safety/model/SafetyInfo;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/navigation/api/safety/a/c;->a(J)Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/safety/a/c;->a:Lcom/autonavi/xm/navigation/engine/k;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/safety/a/c;->c(Lcom/autonavi/navigation/api/safety/model/SafetyInfo;)Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/k;->a(Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/safety/a/c;->a:Lcom/autonavi/xm/navigation/engine/k;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/safety/a/c;->c(Lcom/autonavi/navigation/api/safety/model/SafetyInfo;)Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/k;->a(Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NO_SPACE:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v2, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/safety/a/c;->b(Lcom/autonavi/navigation/api/safety/model/SafetyInfo;)Lcom/autonavi/navigation/api/safety/model/SafetyInfo;

    move-result-object v0

    return-object v0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public a(Lcom/autonavi/navigation/api/safety/model/SafetyCategory;)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/safety/a/c;->a:Lcom/autonavi/xm/navigation/engine/k;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/safety/a/c;->c(Lcom/autonavi/navigation/api/safety/model/SafetyCategory;)Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/k;->a(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/navigation/api/safety/model/SafetyCategory;Lcom/autonavi/navigation/api/map/model/LatLng;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v3, v0, [Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;

    iget-object v2, p0, Lcom/autonavi/navigation/api/safety/a/c;->a:Lcom/autonavi/xm/navigation/engine/k;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/safety/a/c;->c(Lcom/autonavi/navigation/api/safety/model/SafetyCategory;)Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/autonavi/xm/navigation/engine/k;->a(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;[Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v4, :cond_0

    aget-object v2, v3, v1

    iget v4, v2, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;->nNumberOfItem:I

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v1

    iget-object v5, v5, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;->pSafeInfo:[Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    aget-object v5, v5, v2

    iget-object v6, v5, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v6, v6, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget v7, p2, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    if-ne v6, v7, :cond_2

    iget-object v6, v5, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v6, v6, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget v7, p2, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    if-ne v6, v7, :cond_2

    iget-object v2, p0, Lcom/autonavi/navigation/api/safety/a/c;->a:Lcom/autonavi/xm/navigation/engine/k;

    new-array v3, v0, [I

    iget v4, v5, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nIndex:I

    aput v4, v3, v1

    invoke-virtual {v2, v3, v0}, Lcom/autonavi/xm/navigation/engine/k;->a([II)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public b(Lcom/autonavi/navigation/api/safety/model/SafetyCategory;)Ljava/util/List;
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v3, v0, [Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;

    iget-object v0, p0, Lcom/autonavi/navigation/api/safety/a/c;->a:Lcom/autonavi/xm/navigation/engine/k;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/safety/a/c;->c(Lcom/autonavi/navigation/api/safety/model/SafetyCategory;)Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/autonavi/xm/navigation/engine/k;->a(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;[Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    aget-object v0, v3, v2

    iget v4, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;->nNumberOfItem:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v2

    iget-object v5, v5, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;->pSafeInfo:[Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lcom/autonavi/navigation/api/safety/a/c;->a(Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/navigation/api/safety/model/SafetyInfo;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method
