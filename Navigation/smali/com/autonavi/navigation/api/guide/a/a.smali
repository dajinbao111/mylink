.class public Lcom/autonavi/navigation/api/guide/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/wh/navigation/engine/GDBL_Guide$GGuideCallback;


# static fields
.field private static final a:Lcom/autonavi/navigation/api/guide/a/a;


# instance fields
.field private final b:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

.field private final c:Ljava/util/ArrayList;

.field private final d:Ljava/util/ArrayList;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;

.field private final g:Ljava/util/ArrayList;

.field private final h:Ljava/util/ArrayList;

.field private final i:Ljava/util/ArrayList;

.field private j:Lcom/autonavi/navigation/api/guide/a/a$a;

.field private k:Lcom/autonavi/navigation/api/guide/a/a$a;

.field private l:Lcom/autonavi/navigation/api/route/model/CalculationInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/guide/a/a;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/guide/a/a;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/guide/a/a;->a:Lcom/autonavi/navigation/api/guide/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a()Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->b:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->b:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/wh/navigation/engine/GDBL_Guide$GGuideCallback;)Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized a()Lcom/autonavi/navigation/api/guide/a/a;
    .locals 2

    const-class v0, Lcom/autonavi/navigation/api/guide/a/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/autonavi/navigation/api/guide/a/a;->a:Lcom/autonavi/navigation/api/guide/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public GDBL_OnCarParallelRoadsChanged(Z)V
    .locals 3

    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/a;->b:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/wh/navigation/engine/GDBL_Guide;Z)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/guide/GuideManager$OnParallelRoadsChangedListener;

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/guide/GuideManager$OnParallelRoadsChangedListener;->onCarParallelRoadsChanged(Ljava/util/List;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public GDBL_OnDeviateFromRoute()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;->onDeviateFromRoute()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public GDBL_OnRouteCalculateResult(ILcom/autonavi/wh/navigation/server/GStatus;[Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;)V
    .locals 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/a;->b:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    iget-object v3, p0, Lcom/autonavi/navigation/api/guide/a/a;->l:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-static {v2, p2, p3, v3}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/wh/navigation/engine/GDBL_Guide;Lcom/autonavi/wh/navigation/server/GStatus;[Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;Lcom/autonavi/navigation/api/route/model/CalculationInput;)Lcom/autonavi/navigation/api/route/model/CalculationResult;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;->onCorrectionResult(Lcom/autonavi/navigation/api/route/model/CalculationResult;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const-string v0, "AnApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GDBL_OnRouteCalculateResult type:%d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/RouteManager$OnTrafficReCalculateResultListener;

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/a;->b:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    iget-object v3, p0, Lcom/autonavi/navigation/api/guide/a/a;->l:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-static {v2, p2, p3, v3}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/wh/navigation/engine/GDBL_Guide;Lcom/autonavi/wh/navigation/server/GStatus;[Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;Lcom/autonavi/navigation/api/route/model/CalculationInput;)Lcom/autonavi/navigation/api/route/model/CalculationResult;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/autonavi/navigation/api/route/RouteManager$OnTrafficReCalculateResultListener;->onTrafficReCalculateResult(Lcom/autonavi/navigation/api/route/model/CalculationResult;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->k:Lcom/autonavi/navigation/api/guide/a/a$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->k:Lcom/autonavi/navigation/api/guide/a/a$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/autonavi/navigation/api/guide/a/a$a;->a(ILcom/autonavi/wh/navigation/server/GStatus;[Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/RouteManager$OnParallelRoadsChangedResultListener;

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/a;->b:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    iget-object v3, p0, Lcom/autonavi/navigation/api/guide/a/a;->l:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-static {v2, p2, p3, v3}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/wh/navigation/engine/GDBL_Guide;Lcom/autonavi/wh/navigation/server/GStatus;[Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;Lcom/autonavi/navigation/api/route/model/CalculationInput;)Lcom/autonavi/navigation/api/route/model/CalculationResult;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/autonavi/navigation/api/route/RouteManager$OnParallelRoadsChangedResultListener;->OnParallelRoadsChangedResult(Lcom/autonavi/navigation/api/route/model/CalculationResult;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->j:Lcom/autonavi/navigation/api/guide/a/a$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->j:Lcom/autonavi/navigation/api/guide/a/a$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/autonavi/navigation/api/guide/a/a$a;->a(ILcom/autonavi/wh/navigation/server/GStatus;[Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;)V

    goto :goto_2
.end method

.method public GDBL_OnSafetyDataChange(Lcom/autonavi/wh/navigation/server/guide/GSafetyData;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;

    invoke-direct {v0, v6, v6}, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;-><init>([Lcom/autonavi/navigation/api/guide/model/SafetyData;[Lcom/autonavi/navigation/api/guide/model/SafetyData;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/autonavi/navigation/api/guide/model/SafetyData;

    const/4 v0, 0x0

    new-instance v2, Lcom/autonavi/navigation/api/guide/model/SafetyData;

    iget v3, p1, Lcom/autonavi/wh/navigation/server/guide/GSafetyData;->nType:I

    iget v4, p1, Lcom/autonavi/wh/navigation/server/guide/GSafetyData;->nSpeed:I

    iget v5, p1, Lcom/autonavi/wh/navigation/server/guide/GSafetyData;->nDistance:I

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/autonavi/navigation/api/guide/model/SafetyData;-><init>(IILcom/autonavi/navigation/api/map/model/LatLng;I)V

    aput-object v2, v1, v0

    new-instance v0, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;

    invoke-direct {v0, v1, v6}, Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;-><init>([Lcom/autonavi/navigation/api/guide/model/SafetyData;[Lcom/autonavi/navigation/api/guide/model/SafetyData;)V

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/guide/GuideManager$OnSafetyAlertChangedListener;

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/guide/GuideManager$OnSafetyAlertChangedListener;->onSafetyAlertChanged(Lcom/autonavi/navigation/api/guide/model/SafetyAlertInfo;)V

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public GDBL_OnTrafficRecalculate()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/guide/GuideManager$OnTrafficRecalculateListener;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/guide/GuideManager$OnTrafficRecalculateListener;->onTrafficRecalculate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/autonavi/navigation/api/guide/GuideManager$OnParallelRoadsChangedListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/autonavi/navigation/api/guide/GuideManager$OnSafetyAlertChangedListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->b:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->b(Z)Lcom/autonavi/wh/navigation/server/GStatus;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/autonavi/navigation/api/guide/a/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/guide/a/a;->j:Lcom/autonavi/navigation/api/guide/a/a$a;

    return-void
.end method

.method public declared-synchronized a(Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/autonavi/navigation/api/route/RouteManager$OnParallelRoadsChangedResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/route/model/CalculationInput;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/guide/a/a;->l:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    return-void
.end method

.method public declared-synchronized b(Lcom/autonavi/navigation/api/guide/GuideManager$OnDeviateFromRouteListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/autonavi/navigation/api/guide/GuideManager$OnParallelRoadsChangedListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/autonavi/navigation/api/guide/GuideManager$OnSafetyAlertChangedListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->b:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->b(Z)Lcom/autonavi/wh/navigation/server/GStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/autonavi/navigation/api/guide/a/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/guide/a/a;->k:Lcom/autonavi/navigation/api/guide/a/a$a;

    return-void
.end method

.method public declared-synchronized b(Lcom/autonavi/navigation/api/route/RouteManager$OnCorrectionResultListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/autonavi/navigation/api/route/RouteManager$OnParallelRoadsChangedResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
