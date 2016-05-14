.class public final Lcom/autonavi/navigation/api/route/model/CalculationInput;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final MAX_WAYPOINTS:I = 0x5

.field public static final NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# instance fields
.field private a:Lcom/autonavi/navigation/api/route/model/RoutePoint;

.field private b:Lcom/autonavi/navigation/api/route/model/RoutePoint;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;

.field private final f:Lcom/autonavi/navigation/api/route/a/d;

.field private final g:Lcom/autonavi/navigation/api/data/DataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/route/model/CalculationInput$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/autonavi/navigation/api/route/model/CalculationInput$2;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput$2;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->NATIVE_CREATOR:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->values()[Lcom/autonavi/navigation/api/route/model/CalculationRule;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->e:Ljava/util/List;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getRouteManagerDelegate()Lcom/autonavi/navigation/api/route/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->f:Lcom/autonavi/navigation/api/route/a/d;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->g:Lcom/autonavi/navigation/api/data/DataManager;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/navigation/api/route/RouteManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->values()[Lcom/autonavi/navigation/api/route/model/CalculationRule;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->e:Ljava/util/List;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getRouteManagerDelegate()Lcom/autonavi/navigation/api/route/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->f:Lcom/autonavi/navigation/api/route/a/d;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->g:Lcom/autonavi/navigation/api/data/DataManager;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The RouteManager cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getSettingsDelegate()Lcom/autonavi/navigation/api/settings/a/b;

    move-result-object v0

    const-string v1, "calculation_rule"

    sget-object v2, Lcom/autonavi/navigation/api/route/model/CalculationRule;->RECOMMEND:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->valueOf(I)Lcom/autonavi/navigation/api/route/model/CalculationRule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addRule(Lcom/autonavi/navigation/api/route/model/CalculationRule;)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/navigation/api/route/model/CalculationInput;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->values()[Lcom/autonavi/navigation/api/route/model/CalculationRule;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->e:Ljava/util/List;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getRouteManagerDelegate()Lcom/autonavi/navigation/api/route/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->f:Lcom/autonavi/navigation/api/route/a/d;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->g:Lcom/autonavi/navigation/api/data/DataManager;

    iget-object v0, p1, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    iget-object v0, p1, Lcom/autonavi/navigation/api/route/model/CalculationInput;->b:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->b:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    iget-object v1, p1, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->d:Ljava/util/List;

    iget-object v1, p1, Lcom/autonavi/navigation/api/route/model/CalculationInput;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->e:Ljava/util/List;

    iget-object v1, p1, Lcom/autonavi/navigation/api/route/model/CalculationInput;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/navigation/api/route/model/Route;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;-><init>(Lcom/autonavi/navigation/api/route/model/Route;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/navigation/api/route/model/Route;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->values()[Lcom/autonavi/navigation/api/route/model/CalculationRule;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->e:Ljava/util/List;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getRouteManagerDelegate()Lcom/autonavi/navigation/api/route/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->f:Lcom/autonavi/navigation/api/route/a/d;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->g:Lcom/autonavi/navigation/api/data/DataManager;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/Route;->getWaypoints()Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/autonavi/navigation/api/route/model/Route;->end:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    iput-object v1, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->b:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    if-eqz p2, :cond_1

    new-instance v1, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    new-instance v2, Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-static {}, Lcom/autonavi/navigation/api/map/AnMapUtils;->getMyLocation()Lcom/autonavi/navigation/api/map/model/MyLocation;

    move-result-object v3

    iget-object v3, v3, Lcom/autonavi/navigation/api/map/model/MyLocation;->roadName:Ljava/lang/String;

    invoke-static {}, Lcom/autonavi/navigation/api/map/AnMapUtils;->getMyLocation()Lcom/autonavi/navigation/api/map/model/MyLocation;

    move-result-object v4

    iget-object v4, v4, Lcom/autonavi/navigation/api/map/model/MyLocation;->position:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-direct {v2, v3, v4}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Ljava/lang/String;Lcom/autonavi/navigation/api/map/model/LatLng;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/autonavi/navigation/api/route/model/RoutePoint;-><init>(Lcom/autonavi/navigation/api/poi/model/Poi;I)V

    iput-object v1, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/autonavi/navigation/api/route/model/Route;->start:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    iput-object v1, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v0, p1, Lcom/autonavi/navigation/api/route/model/Route;->rule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addRule(Lcom/autonavi/navigation/api/route/model/CalculationRule;)V

    return-void
.end method

.method private a(Lcom/autonavi/navigation/api/route/model/RouteStep;)Lcom/autonavi/navigation/api/route/model/Road;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lcom/autonavi/navigation/api/route/model/Road;

    iget-object v1, p1, Lcom/autonavi/navigation/api/route/model/RouteStep;->objectId:Lcom/autonavi/navigation/api/internal/ObjectId;

    iget-object v2, p1, Lcom/autonavi/navigation/api/route/model/RouteStep;->roadName:Ljava/lang/String;

    iget v4, p1, Lcom/autonavi/navigation/api/route/model/RouteStep;->meshRoadId:I

    const/4 v5, 0x0

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/navigation/api/route/model/Road;-><init>(Lcom/autonavi/navigation/api/internal/ObjectId;Ljava/lang/String;IILcom/autonavi/navigation/api/map/model/LatLng;I)V

    return-object v0
.end method

.method private a(Lcom/autonavi/navigation/api/poi/model/Poi;I)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->g:Lcom/autonavi/navigation/api/data/DataManager;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/data/DataManager;->hasAdminAreaData(Lcom/autonavi/navigation/api/map/model/LatLng;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    const/4 v2, -0x2

    invoke-direct {v0, p1, v1, v2}, Lcom/autonavi/navigation/api/route/model/RoutePoint;-><init>(Lcom/autonavi/navigation/api/poi/model/Poi;Ljava/util/List;I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->f:Lcom/autonavi/navigation/api/route/a/d;

    invoke-interface {v0, p1, v3}, Lcom/autonavi/navigation/api/route/a/d;->a(Lcom/autonavi/navigation/api/poi/model/Poi;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    const/4 v2, -0x3

    invoke-direct {v0, p1, v1, v2}, Lcom/autonavi/navigation/api/route/model/RoutePoint;-><init>(Lcom/autonavi/navigation/api/poi/model/Poi;Ljava/util/List;I)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    :goto_1
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-ne p2, v3, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getPoi()Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/autonavi/navigation/api/util/AnApiUtils;->getPointDistance(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/LatLng;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_4

    new-instance v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    const/4 v1, -0x4

    invoke-direct {v0, p1, v2, v1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;-><init>(Lcom/autonavi/navigation/api/poi/model/Poi;Ljava/util/List;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getPoi()Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_5

    const/4 v0, -0x5

    :goto_3
    invoke-direct {v1, p1, v2, v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;-><init>(Lcom/autonavi/navigation/api/poi/model/Poi;Ljava/util/List;I)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_2

    :cond_7
    move-object v2, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/autonavi/navigation/api/route/model/CalculationInput;Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    return-object p1
.end method

.method static synthetic a(Lcom/autonavi/navigation/api/route/model/CalculationInput;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    return-object v0
.end method

.method private a(ILcom/autonavi/navigation/api/route/model/RoutePoint;)V
    .locals 5

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index=%d, size=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The RoutePoint is not available!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v0, p2}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AnApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You\'re trying to add a duplicate RoutePoint! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "You can not add a waypoint anymore!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/autonavi/navigation/api/route/model/CalculationInput;Lcom/autonavi/navigation/api/route/model/RoutePoint;)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->b:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    return-object p1
.end method

.method static synthetic b(Lcom/autonavi/navigation/api/route/model/CalculationInput;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/autonavi/navigation/api/route/model/CalculationInput;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->e:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addAllRules()V
    .locals 4

    invoke-static {}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->values()[Lcom/autonavi/navigation/api/route/model/CalculationRule;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addRule(Lcom/autonavi/navigation/api/route/model/CalculationRule;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addDetour(Lcom/autonavi/navigation/api/route/Detourable;)V
    .locals 1

    instance-of v0, p1, Lcom/autonavi/navigation/api/route/model/RouteStep;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/autonavi/navigation/api/route/model/RouteStep;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a(Lcom/autonavi/navigation/api/route/model/RouteStep;)Lcom/autonavi/navigation/api/route/model/Road;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addDetours([Lcom/autonavi/navigation/api/route/Detourable;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addDetour(Lcom/autonavi/navigation/api/route/Detourable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addRule(Lcom/autonavi/navigation/api/route/model/CalculationRule;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public varargs addRules([Lcom/autonavi/navigation/api/route/model/CalculationRule;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addRule(Lcom/autonavi/navigation/api/route/model/CalculationRule;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addWaypoint(ILcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a(Lcom/autonavi/navigation/api/poi/model/Poi;I)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a(ILcom/autonavi/navigation/api/route/model/RoutePoint;)V

    :cond_0
    return-object v0
.end method

.method public addWaypoint(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addWaypoint(ILcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    return-object v0
.end method

.method public addWaypoint(ILcom/autonavi/navigation/api/route/model/RoutePoint;)V
    .locals 2

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The RoutePoint is not available!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a(ILcom/autonavi/navigation/api/route/model/RoutePoint;)V

    return-void
.end method

.method public addWaypoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->addWaypoint(ILcom/autonavi/navigation/api/route/model/RoutePoint;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDetours()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->d:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getEnd()Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->b:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    return-object v0
.end method

.method public getRules()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->e:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getStart()Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    return-object v0
.end method

.method public getWaypoints()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public removeAllDetours()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeAllRules()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeAllWaypoint()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeDetour(Lcom/autonavi/navigation/api/route/Detourable;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeEnd()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->b:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    return-void
.end method

.method public removeRule(Lcom/autonavi/navigation/api/route/model/CalculationRule;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeStart()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    return-void
.end method

.method public removeWaypoint(I)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/RoutePoint;

    return-object v0
.end method

.method public removeWaypoint(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEnd(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a(Lcom/autonavi/navigation/api/poi/model/Poi;I)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    if-ltz v1, :cond_0

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->b:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    :cond_0
    return-object v0
.end method

.method public setEnd(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V
    .locals 2

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The RoutePoint is not available!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->b:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    return-void
.end method

.method public setStart(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/navigation/api/route/model/RoutePoint;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a(Lcom/autonavi/navigation/api/poi/model/Poi;I)Lcom/autonavi/navigation/api/route/model/RoutePoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v1

    if-ltz v1, :cond_0

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    :cond_0
    return-object v0
.end method

.method public setStart(Lcom/autonavi/navigation/api/route/model/RoutePoint;)V
    .locals 2

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/RoutePoint;->getValidity()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The RoutePoint is not available!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->b:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->b:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method

.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 5

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->a:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelableList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->b:Lcom/autonavi/navigation/api/route/model/RoutePoint;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelable(Lcom/autonavi/navigation/api/internal/NativeParcelable;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/Detourable;

    instance-of v4, v0, Lcom/autonavi/navigation/api/route/model/Road;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Road;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v4, v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;

    if-eqz v4, :cond_0

    check-cast v0, Lcom/autonavi/navigation/api/map/model/TrafficIncident;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelableList(Ljava/util/List;)V

    invoke-virtual {p1, v2}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelableList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/model/CalculationInput;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeParcelableList(Ljava/util/List;)V

    return-void
.end method
