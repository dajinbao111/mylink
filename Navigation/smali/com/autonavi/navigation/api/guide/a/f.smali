.class public final Lcom/autonavi/navigation/api/guide/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/guide/a/e;
.implements Lcom/autonavi/navigation/api/map/internal/a$b;


# instance fields
.field private final a:Lcom/autonavi/wh/navigation/engine/a;

.field private final b:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

.field private final c:Lcom/autonavi/wh/navigation/engine/g;

.field private d:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

.field private e:Z

.field private final f:Lcom/autonavi/navigation/api/map/internal/l;

.field private final g:Lcom/autonavi/navigation/api/settings/a/b;

.field private final h:Lcom/autonavi/navigation/api/guide/a/f$a;

.field private i:Lcom/autonavi/navigation/api/map/model/ZoomLevel;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->e:Z

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a()Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->b:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/a;->a()Lcom/autonavi/wh/navigation/engine/a;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->a:Lcom/autonavi/wh/navigation/engine/a;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/g;->a()Lcom/autonavi/wh/navigation/engine/g;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->c:Lcom/autonavi/wh/navigation/engine/g;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getMapManagerDelegate()Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->f:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getSettingsDelegate()Lcom/autonavi/navigation/api/settings/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->g:Lcom/autonavi/navigation/api/settings/a/b;

    new-instance v0, Lcom/autonavi/navigation/api/guide/a/f$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/navigation/api/guide/a/f$a;-><init>(Lcom/autonavi/navigation/api/guide/a/f;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->h:Lcom/autonavi/navigation/api/guide/a/f$a;

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
    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/f;->i:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

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
    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/f;->i:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    if-eqz v2, :cond_5

    iget v2, v0, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    iget-object v3, p0, Lcom/autonavi/navigation/api/guide/a/f;->i:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    iget v3, v3, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    if-le v2, v3, :cond_5

    iget-boolean v2, p1, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->hasZoomView:Z

    if-eqz v2, :cond_5

    move-object v0, v1

    goto :goto_1

    :cond_5
    iput-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->i:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    goto :goto_1
.end method

.method static synthetic a(Lcom/autonavi/navigation/api/guide/a/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/guide/a/f;->f()V

    return-void
.end method

.method private e()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/f;->b:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-virtual {v1}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->l()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->e:Z

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/f;->f:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v2, p0}, Lcom/autonavi/navigation/api/map/internal/l;->b(Lcom/autonavi/navigation/api/map/internal/a$b;)V

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/f;->d:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/f;->d:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    invoke-interface {v2}, Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;->onEnd()V

    :cond_0
    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/f;->h:Lcom/autonavi/navigation/api/guide/a/f$a;

    invoke-virtual {v2, v0}, Lcom/autonavi/navigation/api/guide/a/f$a;->removeMessages(I)V

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private f()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->f:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->g()Lcom/autonavi/navigation/api/map/model/MapType;

    move-result-object v0

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->DEFAULT:Lcom/autonavi/navigation/api/map/model/MapType;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/navigation/api/guide/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->d:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->b:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-static {v0}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/wh/navigation/engine/GDBL_Guide;)Lcom/autonavi/navigation/api/guide/model/GuideInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->hasZoomView:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/autonavi/wh/navigation/server/map/GZoomViewInfo;

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/f;->c:Lcom/autonavi/wh/navigation/engine/g;

    invoke-virtual {v2, v1}, Lcom/autonavi/wh/navigation/engine/g;->a([Lcom/autonavi/wh/navigation/server/map/GZoomViewInfo;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v2, v3, :cond_2

    aget-object v1, v1, v4

    iget v1, v1, Lcom/autonavi/wh/navigation/server/map/GZoomViewInfo;->nNextDis:I

    iput v1, v0, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->nextDistance:I

    :cond_2
    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/f;->g:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v2, "auto_zoom_enabled"

    invoke-interface {v1, v2, v4}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/guide/a/f;->a(Lcom/autonavi/navigation/api/guide/model/GuideInfo;)Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/f;->c:Lcom/autonavi/wh/navigation/engine/g;

    iget v1, v1, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    invoke-static {v1}, Lcom/autonavi/wh/navigation/server/map/GZoomLevel;->valueOfZoom(I)Lcom/autonavi/wh/navigation/server/map/GZoomLevel;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GZoomLevel;)Lcom/autonavi/wh/navigation/server/GStatus;

    :cond_3
    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/f;->d:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;->onGuiding(Lcom/autonavi/navigation/api/guide/model/GuideInfo;)V

    iget v0, v0, Lcom/autonavi/navigation/api/guide/model/GuideInfo;->turningId:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/guide/a/f;->e()Z

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/guide/a/f;->d:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    return-void
.end method

.method public a()Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/autonavi/navigation/api/guide/a/f;->e:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/f;->b:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-virtual {v1}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->j()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v3, :cond_2

    move v1, v0

    :goto_1
    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->e:Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->h:Lcom/autonavi/navigation/api/guide/a/f$a;

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/guide/a/f$a;->removeMessages(I)V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public a(Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;)Z
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->a:Lcom/autonavi/wh/navigation/engine/a;

    sget-object v1, Lcom/autonavi/wh/navigation/server/GParam;->G_DEMO_SPEED:Lcom/autonavi/wh/navigation/server/GParam;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;I)Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public a(Lcom/autonavi/navigation/api/route/model/Route;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->f:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0, p0}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/internal/a$b;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->b:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    iget-object v2, p1, Lcom/autonavi/navigation/api/route/model/Route;->rule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a(I)Lcom/autonavi/wh/navigation/server/GStatus;

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->b:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->k()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/guide/a/f;->e:Z

    :cond_0
    :goto_0
    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/f;->h:Lcom/autonavi/navigation/api/guide/a/f$a;

    invoke-virtual {v2, v1}, Lcom/autonavi/navigation/api/guide/a/f$a;->sendEmptyMessage(I)Z

    :cond_1
    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->b:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->i()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/guide/a/f;->e:Z

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/f;->d:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/f;->d:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    invoke-interface {v2}, Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;->onStart()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public b()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/f;->b:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-virtual {v1}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->l()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->e:Z

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/f;->f:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v2, p0}, Lcom/autonavi/navigation/api/map/internal/l;->b(Lcom/autonavi/navigation/api/map/internal/a$b;)V

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/f;->d:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/f;->d:Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;

    invoke-interface {v2}, Lcom/autonavi/navigation/api/guide/GuideManager$OnGuideListener;->onStop()V

    :cond_0
    iget-object v2, p0, Lcom/autonavi/navigation/api/guide/a/f;->h:Lcom/autonavi/navigation/api/guide/a/f$a;

    invoke-virtual {v2, v0}, Lcom/autonavi/navigation/api/guide/a/f$a;->removeMessages(I)V

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->g:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-static {v0}, Lcom/autonavi/navigation/api/guide/a/b;->b(Lcom/autonavi/navigation/api/settings/a/b;)Z

    move-result v0

    return v0
.end method

.method public d()Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/f;->a:Lcom/autonavi/wh/navigation/engine/a;

    sget-object v2, Lcom/autonavi/wh/navigation/server/GParam;->G_DEMO_SPEED:Lcom/autonavi/wh/navigation/server/GParam;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;[I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;->values()[Lcom/autonavi/navigation/api/guide/SimulationGuidePlayer$PlaybackRate;

    move-result-object v1

    const/4 v2, 0x0

    aget v0, v0, v2

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->f:Lcom/autonavi/navigation/api/map/internal/l;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->g()Lcom/autonavi/navigation/api/map/model/MapType;

    move-result-object v0

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapType;->DEFAULT:Lcom/autonavi/navigation/api/map/model/MapType;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/navigation/api/guide/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->h:Lcom/autonavi/navigation/api/guide/a/f$a;

    invoke-virtual {v0, v3}, Lcom/autonavi/navigation/api/guide/a/f$a;->hasMessages(I)Z

    move-result v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/guide/a/f;->h:Lcom/autonavi/navigation/api/guide/a/f$a;

    invoke-virtual {v1, v3}, Lcom/autonavi/navigation/api/guide/a/f$a;->removeMessages(I)V

    invoke-direct {p0}, Lcom/autonavi/navigation/api/guide/a/f;->f()V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/guide/a/f;->h:Lcom/autonavi/navigation/api/guide/a/f$a;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v3, v1, v2}, Lcom/autonavi/navigation/api/guide/a/f$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
