.class public final Lcom/autonavi/navigation/api/guide/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;
.implements Lcom/autonavi/navigation/api/guide/GuideManager$OnSafetyAlertChangedListener;
.implements Lcom/autonavi/navigation/api/guide/a/c;
.implements Lcom/autonavi/navigation/api/map/internal/a$b;
.implements Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;


# instance fields
.field private final a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

.field private final b:Lcom/autonavi/wh/navigation/engine/a;

.field private final c:Lcom/autonavi/wh/navigation/engine/g;

.field private d:Lcom/autonavi/navigation/api/guide/a/e;

.field private e:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

.field private f:Lcom/autonavi/navigation/api/route/model/Route;

.field private g:Z

.field private final h:Landroid/content/Context;

.field private final i:Lcom/autonavi/navigation/api/guide/a/a;

.field private final j:Lcom/autonavi/navigation/api/map/internal/l;

.field private final k:Lcom/autonavi/navigation/api/settings/a/b;

.field private final l:Lcom/autonavi/navigation/api/guide/a/d$a;

.field private m:Lcom/autonavi/navigation/api/guide/model/SafetyData;

.field private n:Lcom/autonavi/navigation/api/internal/a/a/i;

.field private o:Lcom/autonavi/navigation/api/map/model/ZoomLevel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->g:Z

    iput-object v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->m:Lcom/autonavi/navigation/api/guide/model/SafetyData;

    iput-object v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->n:Lcom/autonavi/navigation/api/internal/a/a/i;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->h:Landroid/content/Context;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a()Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/a;->a()Lcom/autonavi/wh/navigation/engine/a;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->b:Lcom/autonavi/wh/navigation/engine/a;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/g;->a()Lcom/autonavi/wh/navigation/engine/g;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->c:Lcom/autonavi/wh/navigation/engine/g;

    invoke-static {}, Lcom/autonavi/navigation/api/guide/a/a;->a()Lcom/autonavi/navigation/api/guide/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->i:Lcom/autonavi/navigation/api/guide/a/a;

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->i:Lcom/autonavi/navigation/api/guide/a/a;

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/guide/a/a;->a(Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->i:Lcom/autonavi/navigation/api/guide/a/a;

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/guide/a/a;->a(Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->i:Lcom/autonavi/navigation/api/guide/a/a;

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/guide/a/a;->a(Lcom/autonavi/navigation/api/guide/GuideManager$OnSafetyAlertChangedListener;)V

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getMapManagerDelegate()Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->j:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getSettingsDelegate()Lcom/autonavi/navigation/api/settings/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->k:Lcom/autonavi/navigation/api/settings/a/b;

    new-instance v0, Lcom/autonavi/navigation/api/guide/a/d$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/navigation/api/guide/a/d$a;-><init>(Lcom/autonavi/navigation/api/guide/a/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->l:Lcom/autonavi/navigation/api/guide/a/d$a;

    new-instance v0, Lcom/autonavi/navigation/api/internal/a/a/i;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/internal/a/a/i;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->n:Lcom/autonavi/navigation/api/internal/a/a/i;

    return-void
.end method

.method private a(Lcom/autonavi/navigation/api/guide/model/GuideInfo;)Lcom/autonavi/navigation/api/map/model/ZoomLevel;
    .locals 5

    const/4 v1, 0x0

    const/16 v4, 0x1f4

    const/16 v3, 0xfa

    const/16 v2, 0x64

    iget v0, p1, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->nextDistance:I

    if-gt v0, v2, :cond_0

    sget-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_25_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    :goto_0
    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/d;->o:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    if-ne v2, v0, :cond_4

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    if-le v0, v2, :cond_1

    if-gt v0, v3, :cond_1

    sget-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_50_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    goto :goto_0

    :cond_1
    if-le v0, v3, :cond_2

    if-gt v0, v4, :cond_2

    sget-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_100_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    goto :goto_0

    :cond_2
    if-le v0, v4, :cond_3

    const/16 v2, 0x3e8

    if-gt v0, v2, :cond_3

    sget-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_200_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->ZOOM_500_M:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/d;->o:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    if-eqz v2, :cond_5

    iget v2, v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    iget-object v3, p0, Lcom/autonavi/navigation/api/guide/a/d;->o:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    iget v3, v3, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    if-le v2, v3, :cond_5

    iget-boolean v2, p1, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->hasZoomView:Z

    if-eqz v2, :cond_5

    move-object v0, v1

    goto :goto_1

    :cond_5
    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->o:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    goto :goto_1
.end method

.method static synthetic a(Lcom/autonavi/navigation/api/guide/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/guide/a/d;->j()V

    return-void
.end method

.method private i()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->j:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p0}, Lcom/autonavi/navigation/api/map/internal/l;->b(Lcom/autonavi/navigation/api/map/internal/a$b;)V

    invoke-static {}, Lcom/autonavi/wh/navigation/server/guide/GJourneyPointType;->values()[Lcom/autonavi/wh/navigation/server/guide/GJourneyPointType;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/autonavi/navigation/api/guide/a/d;->a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-virtual {v5, v4}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/wh/navigation/server/guide/GJourneyPointType;)Lcom/autonavi/wh/navigation/server/GStatus;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->g()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/autonavi/navigation/api/guide/a/d;->f:Lcom/autonavi/navigation/api/route/model/Route;

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->g:Z

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/d;->l:Lcom/autonavi/navigation/api/guide/a/d$a;

    invoke-virtual {v2, v1}, Lcom/autonavi/navigation/api/guide/a/d$a;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/d;->l:Lcom/autonavi/navigation/api/guide/a/d$a;

    invoke-virtual {v2, v1}, Lcom/autonavi/navigation/api/guide/a/d$a;->removeMessages(I)V

    :cond_1
    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->e:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->e:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    invoke-interface {v1}, Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;->onEnd()V

    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private j()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->j:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->g()Lcom/autonavi/navigation/api/map/model/MapType;

    move-result-object v0

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->DEFAULT:Lcom/autonavi/navigation/api/map/model/MapType;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/navigation/api/guide/a/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->k:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-static {v0}, Lcom/autonavi/navigation/api/guide/a/b;->b(Lcom/autonavi/navigation/api/settings/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->e:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-static {v0}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/wh/navigation/engine/GDBL_Guide;)Lcom/autonavi/navigation/api/guide/model/GuideInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->hasZoomView:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/autonavi/wh/navigation/server/map/GZoomViewInfo;

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/d;->c:Lcom/autonavi/wh/navigation/engine/g;

    invoke-virtual {v2, v1}, Lcom/autonavi/wh/navigation/engine/g;->a([Lcom/autonavi/wh/navigation/server/map/GZoomViewInfo;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v2, v3, :cond_2

    aget-object v1, v1, v4

    iget v1, v1, Lcom/autonavi/wh/navigation/server/map/GZoomViewInfo;->nNextDis:I

    iput v1, v0, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->nextDistance:I

    :cond_2
    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->k:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v2, "auto_zoom_enabled"

    invoke-interface {v1, v2, v4}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/guide/a/d;->a(Lcom/autonavi/navigation/api/guide/model/GuideInfo;)Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/d;->c:Lcom/autonavi/wh/navigation/engine/g;

    iget v1, v1, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    invoke-static {v1}, Lcom/autonavi/wh/navigation/server/map/GZoomLevel;->valueOfZoom(I)Lcom/autonavi/wh/navigation/server/map/GZoomLevel;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GZoomLevel;)Lcom/autonavi/wh/navigation/server/GStatus;

    :cond_3
    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->e:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;->onGuiding(Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V

    iget v0, v0, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->turningId:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/guide/a/d;->i()Z

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;IZ)Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;
    .locals 20

    sget-object v2, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->GUIDE_HONDA:Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/navigation/api/guide/a/d;->a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v3, v2, v0, v1}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a([Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;IZ)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v3

    sget-object v4, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v4, v3, :cond_1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/autonavi/wh/navigation/server/map/GCarInfo;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/g;->a()Lcom/autonavi/wh/navigation/engine/g;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/autonavi/wh/navigation/engine/g;->a([Lcom/autonavi/wh/navigation/server/map/GCarInfo;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v4

    const/16 v17, -0x1

    const/4 v5, 0x2

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/autonavi/navigation/api/AnApi;->getLocationManager()Lcom/autonavi/navigation/api/location/LocationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/autonavi/navigation/api/location/LocationManager;->getLocationStatus()I

    move-result v6

    if-ne v5, v6, :cond_0

    sget-object v5, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-short v0, v3, Lcom/autonavi/wh/navigation/server/map/GCarInfo;->nAzimuth:S

    move/from16 v17, v0

    :cond_0
    const/4 v3, 0x0

    aget-object v16, v2, v3

    new-instance v2, Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->euGuideInfoType:Lcom/autonavi/wh/navigation/server/guide/GGuidanceInfoType;

    invoke-virtual {v3}, Lcom/autonavi/wh/navigation/server/guide/GGuidanceInfoType;->ordinal()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;->valueOf(I)Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->euCrossType:Lcom/autonavi/wh/navigation/server/guide/GCrossType;

    invoke-virtual {v4}, Lcom/autonavi/wh/navigation/server/guide/GCrossType;->ordinal()I

    move-result v4

    invoke-static {v4}, Lcom/autonavi/navigation/api/guide/model/CrossType;->valueOf(I)Lcom/autonavi/navigation/api/guide/model/CrossType;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->stGuideShape:Lcom/autonavi/wh/navigation/server/guide/GGuideShape;

    iget-object v5, v5, Lcom/autonavi/wh/navigation/server/guide/GGuideShape;->pnAngleID:[I

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->euNextCrossType:Lcom/autonavi/wh/navigation/server/guide/GCrossType;

    invoke-virtual {v6}, Lcom/autonavi/wh/navigation/server/guide/GCrossType;->ordinal()I

    move-result v6

    invoke-static {v6}, Lcom/autonavi/navigation/api/guide/model/CrossType;->valueOf(I)Lcom/autonavi/navigation/api/guide/model/CrossType;

    move-result-object v6

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->stNextGuideShape:Lcom/autonavi/wh/navigation/server/guide/GGuideShape;

    iget-object v7, v7, Lcom/autonavi/wh/navigation/server/guide/GGuideShape;->pnAngleID:[I

    move-object/from16 v0, v16

    iget v8, v0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->nTurnId:I

    move-object/from16 v0, v16

    iget v9, v0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->nExistAngleID:I

    move-object/from16 v0, v16

    iget v10, v0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->nNextExistAngleID:I

    move-object/from16 v0, v16

    iget v11, v0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->nNextNodeDis:I

    move-object/from16 v0, v16

    iget-object v12, v0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->szNextRoadName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->szCurrentRoadName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->szLaneID:[B

    move-object/from16 v0, v16

    iget-byte v15, v0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->n8LaneLeftFlag:B

    move-object/from16 v0, v16

    iget-byte v0, v0, Lcom/autonavi/wh/navigation/server/guide/GClusterInfo;->n8LaneRightFlag:B

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/navigation/api/guide/a/d;->a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->c(Z)I

    move-result v18

    invoke-direct/range {v2 .. v18}, Lcom/autonavi/navigation/api/guide/model/TurnByTurnInfo;-><init>(Lcom/autonavi/navigation/api/guide/model/TurnByTurnType;Lcom/autonavi/navigation/api/guide/model/CrossType;[ILcom/autonavi/navigation/api/guide/model/CrossType;[IIIIILjava/lang/String;Ljava/lang/String;[BBBII)V

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public a()Lcom/autonavi/navigation/api/route/model/Route;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->f:Lcom/autonavi/navigation/api/route/model/Route;

    return-object v0
.end method

.method public a(Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->i:Lcom/autonavi/navigation/api/guide/a/a;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/guide/a/a;->a(Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/guide/a/d;->e:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/guide/GuideManager$OnParallelRoadsChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->i:Lcom/autonavi/navigation/api/guide/a/a;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/guide/a/a;->a(Lcom/autonavi/navigation/api/guide/GuideManager$OnParallelRoadsChangedListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/guide/GuideManager$OnSafetyAlertChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->i:Lcom/autonavi/navigation/api/guide/a/a;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/guide/a/a;->a(Lcom/autonavi/navigation/api/guide/GuideManager$OnSafetyAlertChangedListener;)V

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/route/model/Road;)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    iget-object v1, p1, Lcom/autonavi/navigation/api/route/model/Road;->id:Lcom/autonavi/navigation/api/internal/ObjectId;

    iget v1, v1, Lcom/autonavi/navigation/api/internal/ObjectId;->objectId:I

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->b(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->o()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/navigation/api/route/model/Route;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->j:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p0}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/internal/a$b;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->e()Lcom/autonavi/wh/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-static {p1}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/navigation/api/route/model/Route;)Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->d(Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;)Lcom/autonavi/wh/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->f()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->g:Z

    iput-object p1, p0, Lcom/autonavi/navigation/api/guide/a/d;->f:Lcom/autonavi/navigation/api/route/model/Route;

    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->e:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->e:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    invoke-interface {v1}, Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;->onStart()V

    :cond_0
    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->l:Lcom/autonavi/navigation/api/guide/a/d$a;

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/guide/a/d$a;->sendEmptyMessage(I)Z

    :cond_1
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public b(Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->i:Lcom/autonavi/navigation/api/guide/a/a;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/guide/a/a;->b(Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;)V

    return-void
.end method

.method public b(Lcom/autonavi/navigation/api/guide/GuideManager$OnParallelRoadsChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->i:Lcom/autonavi/navigation/api/guide/a/a;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/guide/a/a;->b(Lcom/autonavi/navigation/api/guide/GuideManager$OnParallelRoadsChangedListener;)V

    return-void
.end method

.method public b(Lcom/autonavi/navigation/api/guide/GuideManager$OnSafetyAlertChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->i:Lcom/autonavi/navigation/api/guide/a/a;

    invoke-virtual {v0, p1}, Lcom/autonavi/navigation/api/guide/a/a;->b(Lcom/autonavi/navigation/api/guide/GuideManager$OnSafetyAlertChangedListener;)V

    return-void
.end method

.method public b()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->j:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p0}, Lcom/autonavi/navigation/api/map/internal/l;->b(Lcom/autonavi/navigation/api/map/internal/a$b;)V

    invoke-static {}, Lcom/autonavi/wh/navigation/server/guide/GJourneyPointType;->values()[Lcom/autonavi/wh/navigation/server/guide/GJourneyPointType;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/autonavi/navigation/api/guide/a/d;->a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-virtual {v5, v4}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/wh/navigation/server/guide/GJourneyPointType;)Lcom/autonavi/wh/navigation/server/GStatus;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->g()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/autonavi/navigation/api/guide/a/d;->f:Lcom/autonavi/navigation/api/route/model/Route;

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->g:Z

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/d;->l:Lcom/autonavi/navigation/api/guide/a/d$a;

    invoke-virtual {v2, v1}, Lcom/autonavi/navigation/api/guide/a/d$a;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/d;->l:Lcom/autonavi/navigation/api/guide/a/d$a;

    invoke-virtual {v2, v1}, Lcom/autonavi/navigation/api/guide/a/d$a;->removeMessages(I)V

    :cond_1
    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->e:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->e:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    invoke-interface {v1}, Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;->onStop()V

    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->h()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/autonavi/navigation/api/guide/a/e;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->d:Lcom/autonavi/navigation/api/guide/a/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/guide/a/f;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/guide/a/f;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->d:Lcom/autonavi/navigation/api/guide/a/e;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->d:Lcom/autonavi/navigation/api/guide/a/e;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->g:Z

    return v0
.end method

.method public f()Lcom/autonavi/navigation/api/guide/model/GuideInfo;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-static {v0}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/wh/navigation/engine/GDBL_Guide;)Lcom/autonavi/navigation/api/guide/model/GuideInfo;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->j:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p0}, Lcom/autonavi/navigation/api/map/internal/l;->b(Lcom/autonavi/navigation/api/map/internal/a$b;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->g()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->f:Lcom/autonavi/navigation/api/route/model/Route;

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->g:Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->l:Lcom/autonavi/navigation/api/guide/a/d$a;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/a/d$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->l:Lcom/autonavi/navigation/api/guide/a/d$a;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/a/d$a;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->e:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->e:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;->onStop()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public h()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->j:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->g()Lcom/autonavi/navigation/api/map/model/MapType;

    move-result-object v0

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->DEFAULT:Lcom/autonavi/navigation/api/map/model/MapType;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/navigation/api/guide/a/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->k:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-static {v0}, Lcom/autonavi/navigation/api/guide/a/b;->b(Lcom/autonavi/navigation/api/settings/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->l:Lcom/autonavi/navigation/api/guide/a/d$a;

    invoke-virtual {v0, v3}, Lcom/autonavi/navigation/api/guide/a/d$a;->hasMessages(I)Z

    move-result v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->l:Lcom/autonavi/navigation/api/guide/a/d$a;

    invoke-virtual {v1, v3}, Lcom/autonavi/navigation/api/guide/a/d$a;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->l:Lcom/autonavi/navigation/api/guide/a/d$a;

    invoke-virtual {v1, v3}, Lcom/autonavi/navigation/api/guide/a/d$a;->removeMessages(I)V

    :cond_2
    invoke-direct {p0}, Lcom/autonavi/navigation/api/guide/a/d;->j()V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->l:Lcom/autonavi/navigation/api/guide/a/d$a;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v3, v1, v2}, Lcom/autonavi/navigation/api/guide/a/d$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onCorrectionResult(Lcom/autonavi/navigation/api/route/model/CalculationResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getResultCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/route/model/CalculationResult;->getRoutes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/model/Route;

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->f:Lcom/autonavi/navigation/api/route/model/Route;

    :cond_0
    return-void
.end method

.method public onDeviateFromRoute()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Z

    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->b:Lcom/autonavi/wh/navigation/engine/a;

    sget-object v2, Lcom/autonavi/wh/navigation/server/GParam;->G_MUTE:Lcom/autonavi/wh/navigation/server/GParam;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;[Z)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    aget-boolean v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->k:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "language"

    invoke-interface {v0, v1, v3}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u60a8\u5df2\u504f\u822a\uff0c\u6b63\u5728\u4e3a\u60a8\u91cd\u7b97\u5f15\u5bfc\u8def\u7ebf"

    invoke-static {v0}, Lcom/autonavi/navigation/api/util/AnApiUtils;->speak(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "\u60a8\u5df2\u504f\u822a\uff0c\u6b63\u5728\u7232\u60a8\u91cd\u7b97\u5f15\u5c0e\u8def\u7dda"

    invoke-static {v0}, Lcom/autonavi/navigation/api/util/AnApiUtils;->speak(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_0

    const-string v0, "Deviated, navigation is recalculating."

    invoke-static {v0}, Lcom/autonavi/navigation/api/util/AnApiUtils;->speak(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSafetyAlertChanged(Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;)V
    .locals 4

    iget-object v0, p1, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;->alertSafeties:[Lcom/autonavi/navigation/api/guide/model/SafetyData;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->k:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v2, "mute"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->m:Lcom/autonavi/navigation/api/guide/model/SafetyData;

    if-eqz v1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->m:Lcom/autonavi/navigation/api/guide/model/SafetyData;

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/autonavi/navigation/api/guide/model/SafetyData;->type:I

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/d;->m:Lcom/autonavi/navigation/api/guide/model/SafetyData;

    iget v2, v2, Lcom/autonavi/navigation/api/guide/model/SafetyData;->type:I

    if-ne v1, v2, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/d;->m:Lcom/autonavi/navigation/api/guide/model/SafetyData;

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/autonavi/navigation/api/guide/model/SafetyData;->speed:I

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/d;->m:Lcom/autonavi/navigation/api/guide/model/SafetyData;

    iget v2, v2, Lcom/autonavi/navigation/api/guide/model/SafetyData;->speed:I

    if-eq v1, v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/AnApi;->getDataSource()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/AnApi;->getDataSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GNaviRes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Wave1.wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/d;->n:Lcom/autonavi/navigation/api/internal/a/a/i;

    invoke-virtual {v2, v1}, Lcom/autonavi/navigation/api/internal/a/a/i;->a(Ljava/lang/String;)V

    :cond_3
    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/d;->m:Lcom/autonavi/navigation/api/guide/model/SafetyData;

    :cond_4
    return-void

    :cond_5
    iget-object v0, p1, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;->alertSafeties:[Lcom/autonavi/navigation/api/guide/model/SafetyData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method
