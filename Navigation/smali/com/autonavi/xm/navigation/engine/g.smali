.class public Lcom/autonavi/xm/navigation/engine/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static b:Lcom/autonavi/xm/navigation/engine/g;


# instance fields
.field a:Lcom/autonavi/xm/navigation/server/map/GGetElement;

.field private c:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

.field private d:Landroid/os/Handler;

.field private e:Lcom/autonavi/xm/navigation/server/map/GHMapView;

.field private f:Z

.field private final g:Lcom/autonavi/xm/navigation/server/map/OnGetElementsCallback;

.field private h:Lcom/autonavi/xm/navigation/engine/g$a;

.field private i:I

.field private j:I

.field private final k:Lcom/autonavi/xm/navigation/server/map/GMoveMap;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MAIN:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->c:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->e:Lcom/autonavi/xm/navigation/server/map/GHMapView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/g;->f:Z

    new-instance v0, Lcom/autonavi/xm/navigation/engine/g$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navigation/engine/g$1;-><init>(Lcom/autonavi/xm/navigation/engine/g;)V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->g:Lcom/autonavi/xm/navigation/server/map/OnGetElementsCallback;

    iput v1, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    iput v1, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_DRAG:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    new-instance v2, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v2}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GMoveMap;-><init>(Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;Lcom/autonavi/xm/navigation/server/GCoord;)V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->k:Lcom/autonavi/xm/navigation/server/map/GMoveMap;

    return-void
.end method

.method public static final declared-synchronized a()Lcom/autonavi/xm/navigation/engine/g;
    .locals 2

    const-class v1, Lcom/autonavi/xm/navigation/engine/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/g;->b:Lcom/autonavi/xm/navigation/engine/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/engine/g;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/engine/g;-><init>()V

    sput-object v0, Lcom/autonavi/xm/navigation/engine/g;->b:Lcom/autonavi/xm/navigation/engine/g;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/g;->b:Lcom/autonavi/xm/navigation/engine/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lcom/autonavi/xm/navigation/server/map/GMoveMap;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_CLICK:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GMapView;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/MidMap;->a([Lcom/autonavi/xm/navigation/server/map/GMapView;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v1, p1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    aget-object v3, v0, v4

    iget-object v3, v3, Lcom/autonavi/xm/navigation/server/map/GMapView;->Center:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v1, p1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GMapView;->Center:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    sub-int v0, v2, v0

    iput v0, v1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    :cond_0
    return-void
.end method

.method private f()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->h:Lcom/autonavi/xm/navigation/engine/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->h:Lcom/autonavi/xm/navigation/engine/g$a;

    invoke-interface {v0}, Lcom/autonavi/xm/navigation/engine/g$a;->x()V

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v0, Lcom/autonavi/xm/navigation/engine/g$2;->a:[I

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/g;->c:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/MidMap;->c(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_2

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/MidMap;->d(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/g;->h:Lcom/autonavi/xm/navigation/engine/g$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/g;->h:Lcom/autonavi/xm/navigation/engine/g$a;

    invoke-interface {v1}, Lcom/autonavi/xm/navigation/engine/g$a;->w()V

    :cond_1
    return-object v0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_8
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x12

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->h:Lcom/autonavi/xm/navigation/engine/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->h:Lcom/autonavi/xm/navigation/engine/g$a;

    invoke-interface {v0}, Lcom/autonavi/xm/navigation/engine/g$a;->A()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, -0x1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    invoke-static {v2}, Lcom/autonavi/xm/navigation/engine/MidMap;->f(I)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/g;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/g;->g()V

    :cond_0
    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navigation/engine/g;->j(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v1, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/MidMap;->e(I)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/g;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    if-ne v0, v2, :cond_2

    iput v1, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/g;->g()V

    goto :goto_0
.end method

.method private h(Lcom/autonavi/xm/navigation/server/map/GHMapView;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, -0x1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    if-eq v0, v3, :cond_0

    iput v3, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    iget-wide v0, p1, Lcom/autonavi/xm/navigation/server/map/GHMapView;->hMapView:J

    invoke-static {v0, v1, v4}, Lcom/autonavi/xm/navigation/engine/MidMap;->b(JI)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navigation/engine/g;->c(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/g;->g()V

    :cond_0
    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    if-nez v0, :cond_3

    :cond_1
    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/g;->j(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v3, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    iget-wide v0, p1, Lcom/autonavi/xm/navigation/server/map/GHMapView;->hMapView:J

    iget v2, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    invoke-static {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(JI)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navigation/engine/g;->c(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    if-ne v0, v4, :cond_2

    iput v3, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/g;->g()V

    goto :goto_0
.end method

.method private i()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, -0x1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    invoke-static {v2}, Lcom/autonavi/xm/navigation/engine/MidMap;->e(I)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/g;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/g;->g()V

    :cond_0
    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navigation/engine/g;->k(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v1, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/MidMap;->f(I)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/g;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    if-ne v0, v2, :cond_2

    iput v1, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/g;->g()V

    goto :goto_0
.end method

.method private i(Lcom/autonavi/xm/navigation/server/map/GHMapView;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, -0x1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    if-eq v0, v3, :cond_0

    iput v3, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    iget-wide v0, p1, Lcom/autonavi/xm/navigation/server/map/GHMapView;->hMapView:J

    invoke-static {v0, v1, v4}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(JI)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navigation/engine/g;->c(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/g;->g()V

    :cond_0
    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    if-nez v0, :cond_3

    :cond_1
    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/g;->k(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v3, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    iget-wide v0, p1, Lcom/autonavi/xm/navigation/server/map/GHMapView;->hMapView:J

    iget v2, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    invoke-static {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/MidMap;->b(JI)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navigation/engine/g;->c(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    if-ne v0, v4, :cond_2

    iput v3, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/g;->g()V

    goto :goto_0
.end method

.method private j(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_2

    new-array v2, v0, [I

    invoke-static {v2}, Lcom/autonavi/xm/navigation/engine/MidMap;->a([I)Lcom/autonavi/xm/navigation/server/GStatus;

    aget v2, v2, v1

    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_25_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    invoke-virtual {v3}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ordinal()I

    move-result v3

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    new-array v2, v0, [Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;

    invoke-virtual {p0, p1, v2}, Lcom/autonavi/xm/navigation/engine/g;->a(Lcom/autonavi/xm/navigation/server/map/GHMapView;[Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v3

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v3, v4, :cond_0

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;->eScaleLevel:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    invoke-virtual {v2}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ordinal()I

    move-result v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_25_M:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    invoke-virtual {v3}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ordinal()I

    move-result v3

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private k(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_2

    new-array v2, v0, [I

    invoke-static {v2}, Lcom/autonavi/xm/navigation/engine/MidMap;->a([I)Lcom/autonavi/xm/navigation/server/GStatus;

    aget v2, v2, v1

    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_500_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    invoke-virtual {v3}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ordinal()I

    move-result v3

    if-gt v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    new-array v2, v0, [Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;

    invoke-virtual {p0, p1, v2}, Lcom/autonavi/xm/navigation/engine/g;->a(Lcom/autonavi/xm/navigation/server/map/GHMapView;[Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v3

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v3, v4, :cond_0

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;->eScaleLevel:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    invoke-virtual {v2}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ordinal()I

    move-result v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ZOOM_500_KM:Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    invoke-virtual {v3}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ordinal()I

    move-result v3

    if-le v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/autonavi/xm/navigation/server/map/GHMapView;)I
    .locals 2

    iget-wide v0, p1, Lcom/autonavi/xm/navigation/server/map/GHMapView;->hMapView:J

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/MidMap;->d(J)I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(II)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(IIII[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3, p4, p5}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(IIII[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/os/Looper;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->d:Landroid/os/Handler;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/engine/g$a;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/g;->h:Lcom/autonavi/xm/navigation/engine/g$a;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/GCoord;I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->e:Lcom/autonavi/xm/navigation/server/map/GHMapView;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navigation/engine/g;->g(Lcom/autonavi/xm/navigation/server/map/GHMapView;)V

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(Lcom/autonavi/xm/navigation/server/GCoord;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/g;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/guide/GRoadInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/guide/GRoadInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/GCoordConvert;[Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    if-eqz p4, :cond_0

    iget-wide v0, p4, Lcom/autonavi/xm/navigation/server/map/GHMapView;->hMapView:J

    :goto_0
    invoke-static {p1, p2, p3, v0, v1}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(Lcom/autonavi/xm/navigation/server/GCoordConvert;[Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/GCoord;J)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GGetElement;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/g;->a:Lcom/autonavi/xm/navigation/server/map/GGetElement;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->g:Lcom/autonavi/xm/navigation/server/map/OnGetElementsCallback;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(Lcom/autonavi/xm/navigation/server/map/OnGetElementsCallback;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GHMapView;ILcom/autonavi/xm/navigation/server/map/GMapViewMode;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-wide v0, p1, Lcom/autonavi/xm/navigation/server/map/GHMapView;->hMapView:J

    invoke-static {v0, v1, p2, p3}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(JILcom/autonavi/xm/navigation/server/map/GMapViewMode;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navigation/engine/g;->c(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GHMapView;ILcom/autonavi/xm/navigation/server/map/GZoomLevel;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 7

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eq p2, v5, :cond_0

    if-ne p2, v2, :cond_6

    :cond_0
    new-array v0, v2, [Z

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/a;->a()Lcom/autonavi/xm/navigation/engine/a;

    move-result-object v3

    sget-object v4, Lcom/autonavi/xm/navigation/server/GParam;->G_MAP_SHOW_ANIMATED:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-virtual {v3, v4, v0}, Lcom/autonavi/xm/navigation/engine/a;->a(Lcom/autonavi/xm/navigation/server/GParam;[Z)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    move v3, v1

    :goto_0
    const/4 v0, 0x4

    if-ge v3, v0, :cond_8

    iget-object v4, p0, Lcom/autonavi/xm/navigation/engine/g;->d:Landroid/os/Handler;

    iget-object v5, p0, Lcom/autonavi/xm/navigation/engine/g;->d:Landroid/os/Handler;

    if-ne p2, v2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    mul-int/lit8 v5, v3, 0x3c

    int-to-long v5, v5

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne p2, v2, :cond_5

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/g;->j(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-wide v2, p1, Lcom/autonavi/xm/navigation/server/map/GHMapView;->hMapView:J

    invoke-static {v2, v3, v1}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(JI)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    :cond_3
    :goto_2
    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navigation/engine/g;->c(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_4
    :goto_3
    return-object v0

    :cond_5
    if-ne p2, v5, :cond_3

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/g;->k(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-wide v2, p1, Lcom/autonavi/xm/navigation/server/map/GHMapView;->hMapView:J

    invoke-static {v2, v3, v1}, Lcom/autonavi/xm/navigation/engine/MidMap;->b(JI)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-nez p2, :cond_7

    iget-wide v0, p1, Lcom/autonavi/xm/navigation/server/map/GHMapView;->hMapView:J

    const/4 v2, 0x3

    invoke-static {v0, v1, p3, v2}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(JLcom/autonavi/xm/navigation/server/map/GZoomLevel;I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/g;->g()V

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navigation/engine/g;->c(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_3

    :cond_7
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_3
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GHMapView;Lcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 7

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p2, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    if-nez v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p2, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_CLICK:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p2}, Lcom/autonavi/xm/navigation/engine/g;->b(Lcom/autonavi/xm/navigation/server/map/GMoveMap;)V

    :cond_2
    iget-wide v0, p1, Lcom/autonavi/xm/navigation/server/map/GHMapView;->hMapView:J

    invoke-static {v0, v1, p2}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(JLcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navigation/engine/g;->c(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_3
    iget-object v0, p2, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_SWIPE:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->d:Landroid/os/Handler;

    const/4 v1, 0x3

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    new-array v3, v3, [I

    iget-object v4, p2, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    aput v4, v3, v5

    iget-object v4, p2, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    aput v4, v3, v6

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GHMapView;ZFFF)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 7

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    cmpl-float v3, p5, v5

    if-eqz v3, :cond_5

    iget-wide v3, p1, Lcom/autonavi/xm/navigation/server/map/GHMapView;->hMapView:J

    float-to-int v0, p5

    invoke-static {v3, v4, v0, p2}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(JIZ)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v3

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v3, v0, :cond_3

    move v0, v2

    :goto_0
    move-object v6, v3

    move v3, v0

    move-object v0, v6

    :goto_1
    cmpl-float v4, p3, v5

    if-eqz v4, :cond_4

    iget-wide v4, p1, Lcom/autonavi/xm/navigation/server/map/GHMapView;->hMapView:J

    float-to-int v0, p3

    invoke-static {v4, v5, v0, p2}, Lcom/autonavi/xm/navigation/engine/MidMap;->b(JIZ)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    if-nez v3, :cond_0

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navigation/engine/g;->c(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_2
    return-object v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    move v3, v1

    goto :goto_1
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GHMapView;[Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-wide v0, p1, Lcom/autonavi/xm/navigation/server/map/GHMapView;->hMapView:J

    invoke-static {v0, v1, p2}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(J[Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GHMapView;[Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-wide v0, p1, Lcom/autonavi/xm/navigation/server/map/GHMapView;->hMapView:J

    invoke-static {v0, v1, p2}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(J[Lcom/autonavi/xm/navigation/server/map/GMapViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GMapViewType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->c:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->e:Lcom/autonavi/xm/navigation/server/map/GHMapView;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navigation/engine/g;->g(Lcom/autonavi/xm/navigation/server/map/GHMapView;)V

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v1, Lcom/autonavi/xm/navigation/engine/g$2;->a:[I

    invoke-virtual {p1}, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_1

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/g;->c:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/e;->a()Lcom/autonavi/xm/navigation/engine/e;

    move-result-object v2

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/g;->c:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MAIN:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    if-ne v1, v3, :cond_2

    move v1, v7

    :goto_1
    invoke-virtual {v2, v1}, Lcom/autonavi/xm/navigation/engine/e;->c(Z)V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a()Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/g;->c:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MAIN:Lcom/autonavi/xm/navigation/server/map/GMapViewType;

    if-ne v2, v3, :cond_3

    :goto_2
    invoke-virtual {v1, v7}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->d(Z)V

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/g;->f()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_1
    return-object v0

    :pswitch_1
    check-cast p2, Lcom/autonavi/xm/navigation/server/poi/GPoi;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(Lcom/autonavi/xm/navigation/server/poi/GPoi;Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(Ljava/lang/String;Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/MidMap;->h(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/MidMap;->b(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/MidMap;->j(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    check-cast p2, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;

    iget v1, p2, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->id:I

    iget v2, p2, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->meshId:I

    iget v3, p2, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->meshRoadId:I

    iget v4, p2, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->flag:I

    iget-object v5, p2, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->latLng:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v5, v5, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget-object v6, p2, Lcom/autonavi/navigation/api/route/model/HighWayGateInfo;->latLng:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v6, v6, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;-><init>(IIIIII)V

    invoke-static {v0, v7}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v1, v8

    goto :goto_1

    :cond_3
    move v7, v8

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GMapViewType;[Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [J

    invoke-static {p1, v0}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(Lcom/autonavi/xm/navigation/server/map/GMapViewType;[J)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    new-instance v2, Lcom/autonavi/xm/navigation/server/map/GHMapView;

    aget-wide v3, v0, v5

    invoke-direct {v2, v3, v4}, Lcom/autonavi/xm/navigation/server/map/GHMapView;-><init>(J)V

    aput-object v2, p2, v5

    iput-object v2, p0, Lcom/autonavi/xm/navigation/engine/g;->e:Lcom/autonavi/xm/navigation/server/map/GHMapView;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->e:Lcom/autonavi/xm/navigation/server/map/GHMapView;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navigation/engine/g;->c(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-object v1
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GMinMapParam;Lcom/autonavi/xm/navigation/server/map/GBitmap;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/g;->h:Lcom/autonavi/xm/navigation/engine/g$a;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->h:Lcom/autonavi/xm/navigation/engine/g$a;

    invoke-interface {v0}, Lcom/autonavi/xm/navigation/engine/g$a;->x()V

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(Lcom/autonavi/xm/navigation/server/map/GMinMapParam;Lcom/autonavi/xm/navigation/server/map/GBitmap;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    if-nez v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_CLICK:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/g;->b(Lcom/autonavi/xm/navigation/server/map/GMoveMap;)V

    :cond_2
    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(Lcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/g;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_SWIPE:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->d:Landroid/os/Handler;

    const/4 v1, 0x3

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v5

    new-array v3, v4, [I

    iget-object v4, p1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    aput v4, v3, v5

    iget-object v4, p1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    aput v4, v3, v6

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GSelectParam;[[Ljava/lang/Object;[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(Lcom/autonavi/xm/navigation/server/map/GSelectParam;[[Ljava/lang/Object;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->e:Lcom/autonavi/xm/navigation/server/map/GHMapView;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navigation/engine/g;->g(Lcom/autonavi/xm/navigation/server/map/GHMapView;)V

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(Lcom/autonavi/xm/navigation/server/map/GZoomLevel;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/g;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-object v0
.end method

.method public a([IIZ)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/MidMap;->a([IIZ)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidMap;->a([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/map/GMapView;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidMap;->a([Lcom/autonavi/xm/navigation/server/map/GMapView;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/map/GZoomViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidMap;->a([Lcom/autonavi/xm/navigation/server/map/GZoomViewInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navigation/engine/g;->f:Z

    return-void
.end method

.method b()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public b(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/MidMap;->i(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-wide v0, p1, Lcom/autonavi/xm/navigation/server/map/GHMapView;->hMapView:J

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/MidMap;->c(J)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navigation/engine/g;->c(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-object v0
.end method

.method public c()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidMap;->a()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    if-nez p1, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/g;->f:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->h:Lcom/autonavi/xm/navigation/engine/g$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->h:Lcom/autonavi/xm/navigation/engine/g$a;

    invoke-interface {v0}, Lcom/autonavi/xm/navigation/engine/g$a;->x()V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    iget-wide v0, p1, Lcom/autonavi/xm/navigation/server/map/GHMapView;->hMapView:J

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(J)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_3

    iget-wide v0, p1, Lcom/autonavi/xm/navigation/server/map/GHMapView;->hMapView:J

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/MidMap;->b(J)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/g;->h:Lcom/autonavi/xm/navigation/engine/g$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/g;->h:Lcom/autonavi/xm/navigation/engine/g$a;

    invoke-interface {v1}, Lcom/autonavi/xm/navigation/engine/g$a;->w()V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public d()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidMap;->b()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method e()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->e:Lcom/autonavi/xm/navigation/server/map/GHMapView;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navigation/engine/g;->c(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public f(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x3

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/g;->d:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/g;->d:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget v2, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    if-eq v2, v4, :cond_0

    iput v4, p0, Lcom/autonavi/xm/navigation/engine/g;->i:I

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/g;->j(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_3

    iget-wide v2, p1, Lcom/autonavi/xm/navigation/server/map/GHMapView;->hMapView:J

    invoke-static {v2, v3, v5}, Lcom/autonavi/xm/navigation/engine/MidMap;->a(JI)Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    move v0, v1

    :cond_0
    iget v2, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    if-eq v2, v4, :cond_1

    iput v4, p0, Lcom/autonavi/xm/navigation/engine/g;->j:I

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/g;->k(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_4

    iget-wide v2, p1, Lcom/autonavi/xm/navigation/server/map/GHMapView;->hMapView:J

    invoke-static {v2, v3, v5}, Lcom/autonavi/xm/navigation/engine/MidMap;->b(JI)Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_1
    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navigation/engine/g;->c(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_2
    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/g;->g()V

    :cond_2
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0

    :cond_3
    invoke-static {v5}, Lcom/autonavi/xm/navigation/engine/MidMap;->e(I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_4
    invoke-static {v5}, Lcom/autonavi/xm/navigation/engine/MidMap;->f(I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/engine/g;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_2
.end method

.method g(Lcom/autonavi/xm/navigation/server/map/GHMapView;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/g;->d:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navigation/engine/g;->f(Lcom/autonavi/xm/navigation/server/map/GHMapView;)Lcom/autonavi/xm/navigation/server/GStatus;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :pswitch_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/autonavi/xm/navigation/engine/g;->h()V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/autonavi/xm/navigation/server/map/GHMapView;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/autonavi/xm/navigation/engine/g;->h(Lcom/autonavi/xm/navigation/server/map/GHMapView;)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/autonavi/xm/navigation/engine/g;->i()V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/autonavi/xm/navigation/server/map/GHMapView;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/autonavi/xm/navigation/engine/g;->i(Lcom/autonavi/xm/navigation/server/map/GHMapView;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-gez v1, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/MidMap;->g(I)Lcom/autonavi/xm/navigation/server/GStatus;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/xm/navigation/engine/g;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2d

    invoke-virtual {v9, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Lcom/autonavi/xm/navigation/server/map/GHMapView;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    check-cast v1, [I

    check-cast v1, [I

    const/4 v3, 0x0

    aget v7, v1, v3

    const/4 v3, 0x1

    aget v6, v1, v3

    const/4 v5, 0x0

    const/4 v3, 0x0

    array-length v4, v1

    const/4 v8, 0x2

    if-gt v4, v8, :cond_7

    const/4 v4, 0x1

    move v8, v4

    :goto_1
    if-eqz v8, :cond_a

    const/4 v1, 0x3

    invoke-virtual {v9, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v7, :cond_4

    if-lez v7, :cond_8

    const/4 v1, 0x1

    :goto_2
    move v5, v1

    :cond_4
    if-eqz v6, :cond_11

    if-lez v6, :cond_9

    const/4 v1, 0x1

    :goto_3
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const-wide/high16 v3, 0x4054000000000000L    # 80.0

    mul-int v10, v7, v7

    mul-int v11, v6, v6

    add-int/2addr v10, v11

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double v10, v3, v10

    int-to-double v3, v7

    mul-double/2addr v3, v10

    double-to-int v4, v3

    int-to-double v12, v6

    mul-double/2addr v10, v12

    double-to-int v3, v10

    move v15, v3

    move v3, v7

    move v7, v5

    move v5, v4

    move v4, v15

    move/from16 v16, v6

    move v6, v1

    move/from16 v1, v16

    :goto_4
    if-nez v3, :cond_5

    if-eqz v1, :cond_0

    :cond_5
    if-eqz v8, :cond_6

    const/4 v8, 0x3

    invoke-virtual {v9, v8}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/autonavi/xm/navigation/engine/g;->h:Lcom/autonavi/xm/navigation/engine/g$a;

    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/autonavi/xm/navigation/engine/g;->h:Lcom/autonavi/xm/navigation/engine/g$a;

    invoke-interface {v8}, Lcom/autonavi/xm/navigation/engine/g$a;->z()V

    :cond_6
    mul-int v8, v7, v3

    div-int/lit8 v8, v8, 0x64

    mul-int v10, v6, v1

    div-int/lit8 v10, v10, 0x64

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/autonavi/xm/navigation/engine/g;->k:Lcom/autonavi/xm/navigation/server/map/GMoveMap;

    sget-object v12, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_DRAG:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    iput-object v12, v11, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/autonavi/xm/navigation/engine/g;->k:Lcom/autonavi/xm/navigation/server/map/GMoveMap;

    iget-object v11, v11, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    neg-int v8, v8

    iput v8, v11, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/autonavi/xm/navigation/engine/g;->k:Lcom/autonavi/xm/navigation/server/map/GMoveMap;

    iget-object v8, v8, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    neg-int v10, v10

    iput v10, v8, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/autonavi/xm/navigation/engine/g;->k:Lcom/autonavi/xm/navigation/server/map/GMoveMap;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/autonavi/xm/navigation/engine/g;->a(Lcom/autonavi/xm/navigation/server/map/GHMapView;Lcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_5
    const/4 v8, 0x0

    sub-int/2addr v3, v5

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v3, 0x0

    sub-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-gtz v8, :cond_c

    const/4 v1, 0x1

    move v3, v1

    :goto_6
    if-gtz v5, :cond_d

    const/4 v1, 0x1

    :goto_7
    or-int/2addr v1, v3

    if-eqz v1, :cond_10

    if-gtz v10, :cond_e

    const/4 v1, 0x1

    move v3, v1

    :goto_8
    if-gtz v4, :cond_f

    const/4 v1, 0x1

    :goto_9
    or-int/2addr v1, v3

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/engine/g;->h:Lcom/autonavi/xm/navigation/engine/g$a;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/xm/navigation/engine/g;->h:Lcom/autonavi/xm/navigation/engine/g$a;

    invoke-interface {v1}, Lcom/autonavi/xm/navigation/engine/g$a;->y()V

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    move v8, v4

    goto/16 :goto_1

    :cond_8
    const/4 v1, -0x1

    goto/16 :goto_2

    :cond_9
    const/4 v1, -0x1

    goto/16 :goto_3

    :cond_a
    const/4 v3, 0x2

    aget v5, v1, v3

    const/4 v3, 0x3

    aget v4, v1, v3

    const/4 v3, 0x4

    aget v3, v1, v3

    const/4 v10, 0x5

    aget v1, v1, v10

    move v15, v1

    move v1, v6

    move v6, v4

    move v4, v15

    move/from16 v16, v5

    move v5, v3

    move v3, v7

    move/from16 v7, v16

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/autonavi/xm/navigation/engine/g;->k:Lcom/autonavi/xm/navigation/server/map/GMoveMap;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/autonavi/xm/navigation/engine/g;->a(Lcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_5

    :cond_c
    const/4 v1, 0x0

    move v3, v1

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    move v3, v1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    goto :goto_9

    :cond_10
    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    const/4 v2, 0x1

    const/4 v13, 0x6

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v8, v13, v14

    const/4 v8, 0x1

    aput v10, v13, v8

    const/4 v8, 0x2

    aput v7, v13, v8

    const/4 v7, 0x3

    aput v6, v13, v7

    const/4 v6, 0x4

    aput v5, v13, v6

    const/4 v5, 0x5

    aput v4, v13, v5

    aput-object v13, v12, v2

    invoke-virtual {v9, v1, v3, v11, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1e

    invoke-virtual {v9, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_11
    move v1, v3

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
