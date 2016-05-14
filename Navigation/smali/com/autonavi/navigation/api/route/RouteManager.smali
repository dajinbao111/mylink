.class public final Lcom/autonavi/navigation/api/route/RouteManager;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/route/a/d;

.field private final b:Lcom/autonavi/navigation/api/settings/a/b;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getRouteManagerDelegate()Lcom/autonavi/navigation/api/route/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getSettingsDelegate()Lcom/autonavi/navigation/api/settings/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->b:Lcom/autonavi/navigation/api/settings/a/b;

    return-void
.end method

.method private a(Lcom/autonavi/navigation/api/route/model/Route;)V
    .locals 1

    const-string v0, "route can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addOnCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/route/a/d;->a(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V

    return-void
.end method

.method public addOnCorrectionResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/route/a/d;->a(Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;)V

    return-void
.end method

.method public addOnDetourCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnDetourCalculationResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/route/a/d;->a(Lcom/autonavi/navigation/api/route/RouteManager$OnDetourCalculationResultListener;)V

    return-void
.end method

.method public addOnEntranceCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnEntranceCalculationResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/route/a/d;->a(Lcom/autonavi/navigation/api/route/RouteManager$OnEntranceCalculationResultListener;)V

    return-void
.end method

.method public addOnParallelRoadsChangedResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnParallelRoadsChangedResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/route/a/d;->a(Lcom/autonavi/navigation/api/route/RouteManager$OnParallelRoadsChangedResultListener;)V

    return-void
.end method

.method public calculateRoute(ILcom/autonavi/navigation/api/route/model/CalculationInput;)V
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/route/model/CalculationType;->CALCULATION_TYPE_DEFAULT:Lcom/autonavi/navigation/api/route/model/CalculationType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/autonavi/navigation/api/route/RouteManager;->calculateRoute(ILcom/autonavi/navigation/api/route/model/CalculationInput;Lcom/autonavi/navigation/api/route/model/CalculationType;)V

    return-void
.end method

.method public calculateRoute(ILcom/autonavi/navigation/api/route/model/CalculationInput;Lcom/autonavi/navigation/api/route/model/CalculationType;)V
    .locals 4

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The CalculationInput cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getEnd()Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The end cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The end is not available!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getWaypoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v0

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is an unavailable waypoint! index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->getRules()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The rules is not specified!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/autonavi/navigation/api/route/a/d;->a(ILcom/autonavi/navigation/api/route/model/CalculationInput;Lcom/autonavi/navigation/api/route/model/CalculationType;)V

    return-void
.end method

.method public calculateRoute(Lcom/autonavi/navigation/api/demo/model/JourneyDemo;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/route/a/d;->a(Lcom/autonavi/navigation/api/demo/model/JourneyDemo;)V

    return-void
.end method

.method public calculateRoute(Lcom/autonavi/navigation/api/route/model/CalculationInput;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/autonavi/navigation/api/route/RouteManager;->calculateRoute(ILcom/autonavi/navigation/api/route/model/CalculationInput;)V

    return-void
.end method

.method public changeHighWayGate(Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/route/a/d;->a(Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;)Z

    move-result v0

    return v0
.end method

.method public clearRouteFiles()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/route/a/d;->b()V

    return-void
.end method

.method public createCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-direct {v0, p0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;-><init>(Lcom/autonavi/navigation/api/route/RouteManager;)V

    return-object v0
.end method

.method public createCalculationInput(Lcom/autonavi/navigation/api/route/model/Route;)Lcom/autonavi/navigation/api/route/model/CalculationInput;
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-direct {v0, p1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;-><init>(Lcom/autonavi/navigation/api/route/model/Route;)V

    return-object v0
.end method

.method public createCalculationInput(Lcom/autonavi/navigation/api/route/model/Route;Z)Lcom/autonavi/navigation/api/route/model/CalculationInput;
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-direct {v0, p1, p2}, Lcom/autonavi/navigation/api/route/model/CalculationInput;-><init>(Lcom/autonavi/navigation/api/route/model/Route;Z)V

    return-object v0
.end method

.method public createCalculationInput(Ljava/lang/String;)Lcom/autonavi/navigation/api/route/model/CalculationInput;
    .locals 2

    const-string v1, "fileName can not be empty"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/route/a/d;->b(Ljava/lang/String;)Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDetourTypes()[Lcom/autonavi/navigation/api/route/model/DetourType;
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/RouteManager;->b:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v2, "detour_type"

    invoke-interface {v1, v2, v0}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    new-array v1, v5, [Lcom/autonavi/navigation/api/route/model/DetourType;

    sget-object v2, Lcom/autonavi/navigation/api/route/model/DetourType;->DEFAULT:Lcom/autonavi/navigation/api/route/model/DetourType;

    aput-object v2, v1, v0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    move v1, v0

    :goto_1
    const/4 v4, 0x6

    if-ge v1, v4, :cond_2

    shl-int v4, v5, v1

    and-int/2addr v4, v2

    if-eqz v4, :cond_1

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Lcom/autonavi/navigation/api/route/model/DetourType;->valueOf(I)Lcom/autonavi/navigation/api/route/model/DetourType;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Lcom/autonavi/navigation/api/route/model/DetourType;

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/DetourType;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    new-array v1, v5, [Lcom/autonavi/navigation/api/route/model/DetourType;

    sget-object v2, Lcom/autonavi/navigation/api/route/model/DetourType;->DEFAULT:Lcom/autonavi/navigation/api/route/model/DetourType;

    aput-object v2, v1, v0

    move-object v0, v1

    goto :goto_0
.end method

.method public getHighWayGateInfos(IIILcom/autonavi/navigation/api/map/model/LatLng;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/autonavi/navigation/api/route/a/d;->a(IIILcom/autonavi/navigation/api/map/model/LatLng;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRouteCityArrivalTimes(JII)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/autonavi/navigation/api/route/a/d;->a(JII)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRouteFiles()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/route/a/d;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasRoute()Z
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->b:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "has_route"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public loadRoute(Ljava/lang/String;)Lcom/autonavi/navigation/api/route/model/Route;
    .locals 2

    const-string v1, "fileName can not be empty"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/route/a/d;->a(Ljava/lang/String;)Lcom/autonavi/navigation/api/route/model/Route;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeOnCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/route/a/d;->b(Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;)V

    return-void
.end method

.method public removeOnCorrectionResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/route/a/d;->b(Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;)V

    return-void
.end method

.method public removeOnDetourCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnDetourCalculationResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/route/a/d;->b(Lcom/autonavi/navigation/api/route/RouteManager$OnDetourCalculationResultListener;)V

    return-void
.end method

.method public removeOnEntranceCalculationResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnEntranceCalculationResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/route/a/d;->b(Lcom/autonavi/navigation/api/route/RouteManager$OnEntranceCalculationResultListener;)V

    return-void
.end method

.method public removeOnParallelRoadsChangedResultListener(Lcom/autonavi/navigation/api/route/RouteManager$OnParallelRoadsChangedResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/route/a/d;->b(Lcom/autonavi/navigation/api/route/RouteManager$OnParallelRoadsChangedResultListener;)V

    return-void
.end method

.method public reverseRoute(Lcom/autonavi/navigation/api/route/model/Route;)Lcom/autonavi/navigation/api/route/model/CalculationInput;
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/route/RouteManager;->createCalculationInput()Lcom/autonavi/navigation/api/route/model/CalculationInput;

    move-result-object v1

    iget-object v0, p1, Lcom/autonavi/navigation/api/route/model/Route;->end:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setStart(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/Route;->getWaypoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addWaypoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/autonavi/navigation/api/route/model/Route;->start:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->setEnd(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->removeAllRules()V

    iget-object v0, p1, Lcom/autonavi/navigation/api/route/model/Route;->rule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addRule(Lcom/autonavi/navigation/api/route/model/CalculationRule;)V

    return-object v1
.end method

.method public saveRoute(Lcom/autonavi/navigation/api/route/model/Route;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/route/RouteManager;->a(Lcom/autonavi/navigation/api/route/model/Route;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/route/a/d;->b(Lcom/autonavi/navigation/api/route/model/Route;)Z

    move-result v0

    return v0
.end method

.method public saveRoute(Lcom/autonavi/navigation/api/route/model/Route;Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/route/RouteManager;->a(Lcom/autonavi/navigation/api/route/model/Route;)V

    const-string v1, "fileName can not be empty"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/route/a/d;->a(Lcom/autonavi/navigation/api/route/model/Route;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs setDetourType([Lcom/autonavi/navigation/api/route/model/DetourType;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    iget v3, v3, Lcom/autonavi/navigation/api/route/model/DetourType;->nativeValue:I

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->b:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v2, "detour_type"

    invoke-interface {v0, v2, v1}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public stopRouteCalculation()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/RouteManager;->a:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/route/a/d;->d()V

    return-void
.end method
