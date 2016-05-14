.class public Lcom/autonavi/xm/navigation/engine/GDBL_Guide;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;


# instance fields
.field private b:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

.field private g:Z

.field private h:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->c:Z

    iput-boolean v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->e:Z

    iput-boolean v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->g:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->h:I

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->f:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

    return-object v0
.end method

.method public static final declared-synchronized a()Lcom/autonavi/xm/navigation/engine/GDBL_Guide;
    .locals 2

    const-class v1, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;-><init>()V

    sput-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(IZ)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->d:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->l()Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->d:Z

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;IZ)V

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;->start()V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method private a(ILcom/autonavi/xm/navigation/server/GStatus;[JIZ)V
    .locals 8

    iget-object v7, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move-object v4, p3

    move v5, p5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;Lcom/autonavi/xm/navigation/server/GStatus;I[JZI)V

    invoke-virtual {v7, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;ILcom/autonavi/xm/navigation/server/GStatus;[JIZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(ILcom/autonavi/xm/navigation/server/GStatus;[JIZ)V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->c:Z

    return v0
.end method


# virtual methods
.method public a(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(IIILcom/autonavi/navigation/api/map/model/LatLng;[Lcom/autonavi/xm/navigation/server/guide/GExpressWayList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3, p4, p5}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a(IIILcom/autonavi/navigation/api/map/model/LatLng;[Lcom/autonavi/xm/navigation/server/guide/GExpressWayList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/os/Looper;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->f:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a(Lcom/autonavi/xm/navigation/server/guide/GDetourRoadInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-wide v0, p1, Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;->hGuideRoute:J

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a(J)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;Ljava/lang/String;Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-wide v0, p1, Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;->hGuideRoute:J

    invoke-static {v0, v1, p2, p3}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a(JLjava/lang/String;Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;ZZ[Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;->hGuideRoute:J

    :goto_0
    invoke-static {v0, v1, p2, p3, p4}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a(JZZ[Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;Z[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;->hGuideRoute:J

    :goto_0
    invoke-static {v0, v1, p2, p3}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a(JZ[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;[Lcom/autonavi/xm/navigation/server/guide/GGuideRouteInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;->hGuideRoute:J

    :goto_0
    invoke-static {v0, v1, p2}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a(J[Lcom/autonavi/xm/navigation/server/guide/GGuideRouteInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/guide/GJourneyNotifyCB;Ljava/lang/Object;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a(Lcom/autonavi/xm/navigation/server/guide/GJourneyNotifyCB;Ljava/lang/Object;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/g;->a()Lcom/autonavi/xm/navigation/engine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/engine/g;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/g;->a()Lcom/autonavi/xm/navigation/engine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/engine/g;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a(Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;[Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    new-array v1, v0, [J

    if-eqz p2, :cond_1

    move-object v0, v1

    :goto_0
    invoke-static {p1, v0}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a(Ljava/lang/String;[J)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance v2, Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;

    aget-wide v3, v1, v5

    invoke-direct {v2, v3, v4}, Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;-><init>(J)V

    aput-object v2, p2, v5

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(IZ)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a([I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/guide/GClusterInfo;IZ)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a([Lcom/autonavi/xm/navigation/server/guide/GClusterInfo;IZ)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a([Lcom/autonavi/xm/navigation/server/guide/GGuideRoadTmcList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a([Lcom/autonavi/xm/navigation/server/guide/GManeuverInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a([Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a([Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([[Lcom/autonavi/xm/navigation/server/guide/GCarParallelRoad;[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a([[Lcom/autonavi/xm/navigation/server/guide/GCarParallelRoad;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public b(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidGuide;->b(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-wide v0, p1, Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;->hGuideRoute:J

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/MidGuide;->b(J)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->f:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

    :goto_0
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a(Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b([Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidGuide;->b([Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)I
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a(Z)I

    move-result v0

    return v0
.end method

.method public c()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(IZ)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-wide v0, p1, Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;->hGuideRoute:J

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/MidGuide;->c(J)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidGuide;->b()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 8

    const/4 v4, 0x4

    const/4 v0, 0x0

    iget-wide v1, p1, Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;->hGuideRoute:J

    invoke-static {v1, v2}, Lcom/autonavi/xm/navigation/engine/MidGuide;->d(J)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_1

    new-array v2, v4, [J

    const/4 v3, 0x1

    new-array v3, v3, [I

    invoke-static {v2, v4, v3}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a([JI[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v4

    sget-object v5, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v4, v5, :cond_1

    aget v3, v3, v0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-wide v4, v2, v0

    iget-wide v6, p1, Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;->hGuideRoute:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-wide v4, v2, v0

    invoke-static {v4, v5}, Lcom/autonavi/xm/navigation/engine/MidGuide;->b(J)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->e:Z

    return-void
.end method

.method public e()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidGuide;->c()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidGuide;->d()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/g;->a()Lcom/autonavi/xm/navigation/engine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/engine/g;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public g()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidGuide;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/g;->a()Lcom/autonavi/xm/navigation/engine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/engine/g;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public h()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidGuide;->f()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidGuide;->h()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->c:Z

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public j()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NOT_START:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;->removeMessages(I)V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public k()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NOT_START:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/MidGuide;->g(J)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;->sendEmptyMessage(I)Z

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public l()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NOT_START:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$a;->removeMessages(I)V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidGuide;->i()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    iput-boolean v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->c:Z

    goto :goto_0
.end method

.method public m()V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->d:Z

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->f:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->f:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

    invoke-interface {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;->GDBL_OnDeviateFromRoute()V

    :cond_2
    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$2;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$2;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)V

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$2;->start()V

    goto :goto_0
.end method

.method public n()V
    .locals 2

    const-string v0, "Guide"

    const-string v1, "trafficRecalculateRoute start!"

    invoke-static {v0, v1}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->d:Z

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->f:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->f:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

    invoke-interface {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;->GDBL_OnTrafficRecalculate()V

    :cond_2
    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)V

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;->start()V

    goto :goto_0
.end method

.method public o()V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->d:Z

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$4;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$4;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)V

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$4;->start()V

    goto :goto_0
.end method

.method p()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v5, [[Lcom/autonavi/xm/navigation/server/guide/GCarParallelRoad;

    new-array v1, v5, [I

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a([[Lcom/autonavi/xm/navigation/server/guide/GCarParallelRoad;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v3, :cond_2

    aget v1, v1, v4

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->g:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->h:I

    aget-object v2, v0, v4

    aget-object v2, v2, v4

    iget v2, v2, Lcom/autonavi/xm/navigation/server/guide/GCarParallelRoad;->nID:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->f:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->f:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

    invoke-interface {v1, v5}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;->GDBL_OnCarParallelRoadsChanged(Z)V

    iput-boolean v5, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->g:Z

    aget-object v0, v0, v4

    aget-object v0, v0, v4

    iget v0, v0, Lcom/autonavi/xm/navigation/server/guide/GCarParallelRoad;->nID:I

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->h:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->f:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->f:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

    invoke-interface {v0, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;->GDBL_OnCarParallelRoadsChanged(Z)V

    iput-boolean v4, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->g:Z

    goto :goto_0
.end method
