.class public Lcom/autonavi/navigation/api/route/a/e;
.super Lcom/autonavi/navigation/api/route/a/a;


# instance fields
.field protected b:Ljava/util/LinkedList;

.field private final c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

.field private final d:Lcom/autonavi/xm/navigation/engine/a;

.field private final e:Lcom/autonavi/navigation/api/guide/a/a;

.field private final f:Ljava/util/ArrayList;

.field private final g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/route/a/a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a()Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/a;->a()Lcom/autonavi/xm/navigation/engine/a;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->d:Lcom/autonavi/xm/navigation/engine/a;

    invoke-static {}, Lcom/autonavi/navigation/api/guide/a/a;->a()Lcom/autonavi/navigation/api/guide/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->e:Lcom/autonavi/navigation/api/guide/a/a;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->b:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->g:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/autonavi/navigation/api/route/a/e;)Lcom/autonavi/xm/navigation/engine/GDBL_Guide;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    return-object v0
.end method

.method private a(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/navigation/api/route/model/RoutePoint;)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getBindingRoads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getBindingRoads()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Road;

    :goto_0
    iget-object v2, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    new-instance v3, Lcom/autonavi/navigation/api/route/a/e$6;

    invoke-direct {v3, p0, v0}, Lcom/autonavi/navigation/api/route/a/e$6;-><init>(Lcom/autonavi/navigation/api/route/a/e;Lcom/autonavi/navigation/api/route/model/Road;)V

    invoke-virtual {v2, v3, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/xm/navigation/server/guide/GJourneyNotifyCB;Ljava/lang/Object;)Lcom/autonavi/xm/navigation/server/GStatus;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getPoi()Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v2

    invoke-static {v2}, Lcom/autonavi/navigation/api/poi/a/b;->a(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0, v1, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/xm/navigation/server/guide/GJourneyNotifyCB;Ljava/lang/Object;)Lcom/autonavi/xm/navigation/server/GStatus;

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_1
.end method

.method static synthetic b(Lcom/autonavi/navigation/api/route/a/e;)Lcom/autonavi/navigation/api/guide/a/a;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->e:Lcom/autonavi/navigation/api/guide/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/autonavi/navigation/api/route/a/e;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/autonavi/navigation/api/route/a/e;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method private e(Lcom/autonavi/navigation/api/route/model/Route;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/guide/GGuideRouteInfo;

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    new-instance v2, Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;

    iget-wide v3, p1, Lcom/autonavi/navigation/api/route/model/Route;->id:J

    invoke-direct {v2, v3, v4}, Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;-><init>(J)V

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;[Lcom/autonavi/xm/navigation/server/guide/GGuideRouteInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v0, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRouteInfo;->JourneyPoints:[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRouteInfo;->JourneyPoints:[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRouteInfo;->JourneyPoints:[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".rf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/autonavi/navigation/api/route/model/Route;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;

    iget-object v2, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v2, p1, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v2, v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v2, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    aget-object v1, v1, v4

    invoke-static {v2, v1, v0}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;Lcom/autonavi/navigation/api/route/model/CalculationInput;)Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    goto :goto_0
.end method

.method public a(IIILcom/autonavi/navigation/api/map/model/LatLng;)Ljava/util/List;
    .locals 12

    const/4 v0, 0x1

    new-array v5, v0, [Lcom/autonavi/xm/navigation/server/guide/GExpressWayList;

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(IIILcom/autonavi/navigation/api/map/model/LatLng;[Lcom/autonavi/xm/navigation/server/guide/GExpressWayList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v0, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    aget-object v0, v5, v0

    iget-object v9, v0, Lcom/autonavi/xm/navigation/server/guide/GExpressWayList;->pExpressWayGateInfo:[Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;

    array-length v10, v9

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v5, v9, v8

    new-instance v0, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;

    iget v1, v5, Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;->nIndex:I

    iget v2, v5, Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;->nMeshID:I

    iget v3, v5, Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;->nMeshRoadID:I

    iget v4, v5, Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;->nFlag:I

    new-instance v6, Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v11, v5, Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;->nLat:I

    iget v5, v5, Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;->nLon:I

    invoke-direct {v6, v11, v5}, Lcom/autonavi/navigation/api/map/model/LatLng;-><init>(II)V

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;-><init>(IIIIILcom/autonavi/navigation/api/map/model/LatLng;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    move-object v0, v7

    :goto_1
    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public a(JII)Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/navigation/api/poi/model/Poi;Z)Ljava/util/List;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getCategory()I

    move-result v0

    const v2, 0x2e6f8

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getCategory()I

    move-result v0

    const v2, 0x22600

    if-ne v0, v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    new-instance v3, Lcom/autonavi/navigation/api/route/a/e$1;

    invoke-direct {v3, p0, v0, p2}, Lcom/autonavi/navigation/api/route/a/e$1;-><init>(Lcom/autonavi/navigation/api/route/a/e;Ljava/util/ArrayList;Z)V

    invoke-virtual {v2, v3, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/xm/navigation/server/guide/GJourneyNotifyCB;Ljava/lang/Object;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v2, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v3, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    invoke-static {p1}, Lcom/autonavi/navigation/api/poi/a/b;->a(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v2, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    sget-object v3, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    invoke-virtual {v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v2, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v2, v1, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/xm/navigation/server/guide/GJourneyNotifyCB;Ljava/lang/Object;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public a(Lcom/autonavi/navigation/api/route/model/Route;)Ljava/util/List;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iget-object v2, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-static {p1}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/navigation/api/route/model/Route;)Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;Z[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v3, :cond_0

    aget-object v0, v0, v1

    iget-object v2, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->pGuideRoadInfo:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;

    array-length v3, v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-static {v4}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;)Lcom/autonavi/navigation/api/route/model/RouteStep;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public a(ILcom/autonavi/navigation/api/route/model/CalculationInput;Lcom/autonavi/navigation/api/route/model/CalculationType;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/autonavi/navigation/api/route/model/CalculationType;->CALCULATION_TYPE_CHANGE_HIGHWAY:Lcom/autonavi/navigation/api/route/model/CalculationType;

    if-eq p3, v0, :cond_6

    invoke-static {}, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->values()[Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    move-result-object v1

    array-length v4, v1

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v1, v0

    iget-object v6, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v6, v5}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;)Lcom/autonavi/xm/navigation/server/GStatus;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [Lcom/autonavi/xm/navigation/server/map/GCarInfo;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/g;->a()Lcom/autonavi/xm/navigation/engine/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xm/navigation/engine/g;->a([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v4, v1, :cond_e

    aget-object v1, v0, v2

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/map/GCarInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getStart()Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getPoi()Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v4

    iget v4, v4, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    if-ne v1, v4, :cond_e

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GCarInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getStart()Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getPoi()Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    iget v1, v1, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    if-ne v0, v1, :cond_e

    move v0, v2

    :goto_1
    if-eqz v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_START:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getStart()Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/autonavi/navigation/api/route/a/e;->a(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    :cond_1
    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->GJOURNEY_GOAL:Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getEnd()Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/autonavi/navigation/api/route/a/e;->a(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    invoke-static {}, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->values()[Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    move-result-object v4

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getWaypoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v6

    if-eq v6, v3, :cond_2

    add-int/lit8 v6, v1, 0x1

    aget-object v6, v4, v6

    invoke-direct {p0, v6, v0}, Lcom/autonavi/navigation/api/route/a/e;->a(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getDetours()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/Detourable;

    instance-of v4, v0, Lcom/autonavi/navigation/api/route/model/Road;

    if-eqz v4, :cond_5

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Road;

    new-instance v4, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;

    invoke-direct {v4}, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;-><init>()V

    iget-object v5, v0, Lcom/autonavi/navigation/api/route/model/Road;->name:Ljava/lang/String;

    iput-object v5, v4, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->szRoadName:Ljava/lang/String;

    iget-object v5, v0, Lcom/autonavi/navigation/api/route/model/Road;->id:Lcom/autonavi/navigation/api/internal/ObjectId;

    iget v5, v5, Lcom/autonavi/navigation/api/internal/ObjectId;->meshId:I

    iput v5, v4, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->nMeshID:I

    iget v0, v0, Lcom/autonavi/navigation/api/route/model/Road;->meshRoadId:I

    iput v0, v4, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->nMeshRoadID:I

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->GDETOUR_OPTION_ONCE:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    iput-object v0, v4, Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;->eOption:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_3

    :cond_5
    instance-of v4, v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;

    if-eqz v4, :cond_4

    check-cast v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;

    iget-object v4, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/k;->a(Lcom/autonavi/navigation/api/map/model/TrafficIncident;)Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getRules()Ljava/util/List;

    move-result-object v4

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/a/e;->d:Lcom/autonavi/xm/navigation/engine/a;

    sget-object v5, Lcom/autonavi/xm/navigation/server/GParam;->G_ROUTE_OPTION:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->ordinal()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Lcom/autonavi/xm/navigation/engine/a;->a(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_8

    const/16 v0, 0xf

    const/4 v1, 0x4

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->ordinal()I

    move-result v0

    aget v0, v5, v0

    and-int/2addr v0, v1

    move v1, v0

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->d:Lcom/autonavi/xm/navigation/engine/a;

    sget-object v5, Lcom/autonavi/xm/navigation/server/GParam;->G_MULTI_ROUTE_FILTER:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v0, v5, v1}, Lcom/autonavi/xm/navigation/engine/a;->a(Lcom/autonavi/xm/navigation/server/GParam;I)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_8
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->e:Lcom/autonavi/navigation/api/guide/a/a;

    new-instance v1, Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-direct {v1, p2}, Lcom/autonavi/navigation/api/route/model/CalculationInput;-><init>(Lcom/autonavi/navigation/api/route/model/CalculationInput;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/a/a;->a(Lcom/autonavi/navigation/api/route/model/CalculationInput;)V

    sget-object v0, Lcom/autonavi/navigation/api/route/model/CalculationType;->CALCULATION_TYPE_DEFAULT:Lcom/autonavi/navigation/api/route/model/CalculationType;

    if-ne p3, v0, :cond_b

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->e:Lcom/autonavi/navigation/api/guide/a/a;

    new-instance v1, Lcom/autonavi/navigation/api/route/a/e$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/autonavi/navigation/api/route/a/e$2;-><init>(Lcom/autonavi/navigation/api/route/a/e;Lcom/autonavi/navigation/api/route/model/CalculationInput;I)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/a/a;->a(Lcom/autonavi/navigation/api/guide/a/a$a;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_9

    move v2, v3

    :cond_9
    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_a
    :goto_5
    return-void

    :cond_b
    sget-object v0, Lcom/autonavi/navigation/api/route/model/CalculationType;->CALCULATION_TYPE_DETOUR:Lcom/autonavi/navigation/api/route/model/CalculationType;

    if-ne p3, v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->e:Lcom/autonavi/navigation/api/guide/a/a;

    new-instance v1, Lcom/autonavi/navigation/api/route/a/e$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/autonavi/navigation/api/route/a/e$3;-><init>(Lcom/autonavi/navigation/api/route/a/e;Lcom/autonavi/navigation/api/route/model/CalculationInput;I)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/a/a;->b(Lcom/autonavi/navigation/api/guide/a/a$a;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->c()Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_5

    :cond_c
    sget-object v0, Lcom/autonavi/navigation/api/route/model/CalculationType;->CALCULATION_TYPE_CHANGE_HIGHWAY:Lcom/autonavi/navigation/api/route/model/CalculationType;

    if-ne p3, v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->e:Lcom/autonavi/navigation/api/guide/a/a;

    new-instance v1, Lcom/autonavi/navigation/api/route/a/e$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/autonavi/navigation/api/route/a/e$4;-><init>(Lcom/autonavi/navigation/api/route/a/e;Lcom/autonavi/navigation/api/route/model/CalculationInput;I)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/a/a;->a(Lcom/autonavi/navigation/api/guide/a/a$a;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_d

    :goto_6
    invoke-virtual {v0, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_5

    :cond_d
    move v3, v2

    goto :goto_6

    :cond_e
    move v0, v3

    goto/16 :goto_1

    :array_0
    .array-data 4
        0xe
        0xd
        0xb
        0x7
    .end array-data
.end method

.method public a(Lcom/autonavi/navigation/api/demo/model/JourneyDemo;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->e:Lcom/autonavi/navigation/api/guide/a/a;

    new-instance v1, Lcom/autonavi/navigation/api/route/a/e$5;

    invoke-direct {v1, p0}, Lcom/autonavi/navigation/api/route/a/e$5;-><init>(Lcom/autonavi/navigation/api/route/a/e;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/a/a;->a(Lcom/autonavi/navigation/api/guide/a/a$a;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->e:Lcom/autonavi/navigation/api/guide/a/a;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/guide/a/a;->a(Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/route/RouteManager$OnDetourCalculationResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/route/RouteManager$OnEntranceCalculationResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/route/RouteManager$OnParallelRoadsChangedResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->e:Lcom/autonavi/navigation/api/guide/a/a;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/guide/a/a;->a(Lcom/autonavi/navigation/api/route/RouteManager$OnParallelRoadsChangedResultListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;)Z
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;

    iget v1, p1, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->id:I

    iget v2, p1, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->meshId:I

    iget v3, p1, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->meshRoadId:I

    iget v4, p1, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->flag:I

    iget-object v5, p1, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->latLng:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v5, v5, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget-object v6, p1, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->latLng:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v6, v6, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;-><init>(IIIIII)V

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {v0, v7}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v7

    goto :goto_0
.end method

.method public a(Lcom/autonavi/navigation/api/route/model/Route;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    new-instance v2, Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;

    iget-wide v3, p1, Lcom/autonavi/navigation/api/route/model/Route;->id:J

    invoke-direct {v2, v3, v4}, Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;-><init>(J)V

    invoke-virtual {v1, v2, p2, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;Ljava/lang/String;Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/navigation/api/route/model/RouteStep;)Z
    .locals 2

    iget v0, p1, Lcom/autonavi/navigation/api/route/model/RouteStep;->turnningId:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v0, 0x56

    iget v1, p1, Lcom/autonavi/navigation/api/route/model/RouteStep;->turnningId:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lcom/autonavi/navigation/api/route/model/RouteStep;->turnningId:I

    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    :cond_0
    iget v0, p1, Lcom/autonavi/navigation/api/route/model/RouteStep;->turnningId:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/autonavi/navigation/api/route/model/CalculationInput;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;

    iget-object v2, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v2, p1, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-static {v2, v1, v0}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;Lcom/autonavi/navigation/api/route/model/CalculationInput;)Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;-><init>(Lcom/autonavi/navigation/api/route/model/Route;)V

    :cond_0
    return-object v0
.end method

.method public b(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->e:Lcom/autonavi/navigation/api/guide/a/a;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/guide/a/a;->b(Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;)V

    return-void
.end method

.method public b(Lcom/autonavi/navigation/api/route/RouteManager$OnDetourCalculationResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/autonavi/navigation/api/route/RouteManager$OnEntranceCalculationResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/autonavi/navigation/api/route/RouteManager$OnParallelRoadsChangedResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->e:Lcom/autonavi/navigation/api/guide/a/a;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/guide/a/a;->b(Lcom/autonavi/navigation/api/route/RouteManager$OnParallelRoadsChangedResultListener;)V

    return-void
.end method

.method public b(Lcom/autonavi/navigation/api/route/model/Route;)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/route/a/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/route/a/e;->e(Lcom/autonavi/navigation/api/route/model/Route;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/navigation/api/route/a/e;->a(Lcom/autonavi/navigation/api/route/model/Route;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/autonavi/navigation/api/route/model/Route;)Z
    .locals 4

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    new-instance v1, Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;

    iget-wide v2, p1, Lcom/autonavi/navigation/api/route/model/Route;->id:J

    invoke-direct {v1, v2, v3}, Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->b(Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;)Lcom/autonavi/xm/navigation/server/GStatus;

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

.method public d(Lcom/autonavi/navigation/api/route/model/Route;)Ljava/util/List;
    .locals 10

    const/4 v9, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v5, v9, [Lcom/autonavi/xm/navigation/server/poi/GPoi;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->d:Lcom/autonavi/xm/navigation/engine/a;

    invoke-static {v0}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/xm/navigation/engine/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0, v5}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->b([Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    :goto_0
    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v3, :cond_5

    array-length v0, v5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v2

    :goto_1
    if-ge v4, v9, :cond_4

    aget-object v0, v5, v4

    iget-object v6, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v6, v6, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v6, v6, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    if-nez v6, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0, v5}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a([Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v6, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-static {v0}, Lcom/autonavi/navigation/api/poi/a/b;->a(Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v7

    const/4 v8, 0x0

    iget-byte v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Reserved:B

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    invoke-direct {v6, v7, v8, v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;-><init>(Lcom/autonavi/navigation/api/poi/model/Poi;Ljava/util/List;I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move-object v0, v3

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_4
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->d()Lcom/autonavi/xm/navigation/server/GStatus;

    return-void
.end method
