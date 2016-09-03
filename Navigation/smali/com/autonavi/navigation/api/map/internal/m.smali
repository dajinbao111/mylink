.class public Lcom/autonavi/navigation/api/map/internal/m;
.super Lcom/autonavi/navigation/api/map/internal/c;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/autonavi/wh/navigation/engine/g$a;
.implements Lcom/autonavi/wh/navigation/engine/l$a;
.implements Lcom/autonavi/wh/navigation/engine/l$b;
.implements Lcom/autonavi/wh/navigation/server/map/GGetElement;


# instance fields
.field private final b:Lcom/autonavi/wh/navigation/engine/g;

.field private final c:Lcom/autonavi/wh/navigation/engine/l;

.field private final d:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

.field private final e:Lcom/autonavi/wh/navigation/engine/a;

.field private f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

.field private g:Lcom/autonavi/navigation/api/map/model/MapType;

.field private h:Lcom/autonavi/navigation/api/map/model/MapMode;

.field private i:Z

.field private final j:Landroid/os/Handler;

.field private k:Lcom/autonavi/navigation/api/map/model/MapType;

.field private final l:Ljava/util/ArrayList;

.field private final m:Ljava/util/LinkedList;

.field private final n:Ljava/util/LinkedList;

.field private final o:Ljava/util/LinkedList;

.field private final p:Ljava/util/LinkedList;

.field private final q:Ljava/util/LinkedList;

.field private final r:Ljava/util/LinkedList;

.field private final s:Lcom/autonavi/navigation/api/settings/a/b;

.field private t:Lcom/autonavi/navigation/api/map/AnMap$OnTrafficAuthListener;

.field private final u:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/navigation/api/map/internal/c;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->l:Ljava/util/ArrayList;

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/m$1;

    invoke-direct {v0, p0}, Lcom/autonavi/navigation/api/map/internal/m$1;-><init>(Lcom/autonavi/navigation/api/map/internal/m;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->u:Ljava/util/List;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/g;->a()Lcom/autonavi/wh/navigation/engine/g;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/engine/g$a;)Lcom/autonavi/wh/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GGetElement;)Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/l;->a()Lcom/autonavi/wh/navigation/engine/l;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->c:Lcom/autonavi/wh/navigation/engine/l;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->c:Lcom/autonavi/wh/navigation/engine/l;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navigation/engine/l;->a(Lcom/autonavi/wh/navigation/engine/l$b;)Lcom/autonavi/wh/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->c:Lcom/autonavi/wh/navigation/engine/l;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navigation/engine/l;->a(Lcom/autonavi/wh/navigation/engine/l$a;)Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a()Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->d:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/a;->a()Lcom/autonavi/wh/navigation/engine/a;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->e:Lcom/autonavi/wh/navigation/engine/a;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->m:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->n:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->o:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->p:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->r:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->q:Ljava/util/LinkedList;

    sget-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MAIN:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/map/internal/m;->a(Lcom/autonavi/wh/navigation/server/map/GMapViewType;)Lcom/autonavi/wh/navigation/server/map/GHMapView;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    sget-object v0, Lcom/autonavi/navigation/api/map/model/MapType;->DEFAULT:Lcom/autonavi/navigation/api/map/model/MapType;

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->g:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getSettingsDelegate()Lcom/autonavi/navigation/api/settings/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->s:Lcom/autonavi/navigation/api/settings/a/b;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->j:Landroid/os/Handler;

    return-void
.end method

.method private a(Lcom/autonavi/wh/navigation/server/map/GMapViewType;)Lcom/autonavi/wh/navigation/server/map/GHMapView;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/map/GHMapView;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    invoke-virtual {v1, p1, v0}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GMapViewType;[Lcom/autonavi/wh/navigation/server/map/GHMapView;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/autonavi/navigation/api/map/model/MapType;)Lcom/autonavi/wh/navigation/server/map/GMapViewType;
    .locals 2

    sget-object v0, Lcom/autonavi/navigation/api/map/internal/m$2;->a:[I

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/MapType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MAIN:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_WHOLE:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MULTIWHOLE:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MANEUVER_POINT:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_POI:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_AVOIDREGION:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_HIGHWAY_INOUT:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->GMAP_VIEW_TYPE_MULTI_DIFF:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public A()V
    .locals 0

    return-void
.end method

.method public B()V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/m;->t()Lcom/autonavi/navigation/api/map/model/TrafficFlow;

    move-result-object v3

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->q:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/AnMap$OnTrafficFlowUpdatedListener;

    invoke-interface {v0, v3}, Lcom/autonavi/navigation/api/map/AnMap$OnTrafficFlowUpdatedListener;->onTrafficFlowUpdated(Lcom/autonavi/navigation/api/map/model/TrafficFlow;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->s:Lcom/autonavi/navigation/api/settings/a/b;

    invoke-static {v0}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/navigation/api/settings/a/b;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/internal/m;->a(Z)Ljava/util/List;

    move-result-object v1

    :goto_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->r:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->r:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentUpdatedListener;

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentUpdatedListener;->onTrafficIncidentUpdated(Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public GDBL_OnGetElement([[Lcom/autonavi/wh/navigation/server/map/GCustomElement;[I)V
    .locals 10

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->o:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/internal/l$b;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l$b;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    new-array v7, v6, [Lcom/autonavi/wh/navigation/server/map/GCustomElement;

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_0

    new-instance v8, Lcom/autonavi/wh/navigation/server/map/GCustomElement;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/internal/l$a;

    iget-object v0, v0, Lcom/autonavi/navigation/api/map/internal/l$a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/wh/navigation/server/map/GBitmap;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/navigation/api/map/internal/l$a;

    iget v9, v1, Lcom/autonavi/navigation/api/map/internal/l$a;->b:I

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/navigation/api/map/internal/l$a;

    iget v1, v1, Lcom/autonavi/navigation/api/map/internal/l$a;->c:I

    invoke-direct {v8, v0, v9, v1}, Lcom/autonavi/wh/navigation/server/map/GCustomElement;-><init>(Lcom/autonavi/wh/navigation/server/map/GBitmap;II)V

    aput-object v8, v7, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->clear()V

    aput-object v7, p1, v3

    aput v6, p2, v3

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(IIII)I
    .locals 6

    const/4 v0, 0x1

    new-array v5, v0, [I

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/wh/navigation/engine/g;->a(IIII[I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, v5, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(IZ)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/autonavi/navigation/api/internal/a/a/g;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/SnapshotOptions;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {p1}, Lcom/autonavi/navigation/api/map/internal/k;->a(Lcom/autonavi/navigation/api/map/model/SnapshotOptions;)Lcom/autonavi/wh/navigation/server/map/GMinMapParam;

    move-result-object v0

    new-instance v1, Lcom/autonavi/wh/navigation/server/map/GBitmap;

    invoke-direct {v1}, Lcom/autonavi/wh/navigation/server/map/GBitmap;-><init>()V

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    invoke-virtual {v2, v0, v1}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GMinMapParam;Lcom/autonavi/wh/navigation/server/map/GBitmap;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_0

    invoke-static {v1}, Lcom/autonavi/navigation/api/internal/a/a/b;->a(Lcom/autonavi/wh/navigation/server/map/GBitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/LatLng;)Landroid/graphics/Point;
    .locals 6

    const/4 v0, 0x1

    const/4 v5, 0x0

    new-array v1, v0, [Lcom/autonavi/wh/navigation/server/GCoord;

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/GCoord;

    new-instance v2, Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, p1, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v4, p1, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v2, v3, v4}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    sget-object v3, Lcom/autonavi/wh/navigation/server/GCoordConvert;->GCC_GEO_TO_SCR:Lcom/autonavi/wh/navigation/server/GCoordConvert;

    iget-object v4, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/GCoordConvert;[Lcom/autonavi/wh/navigation/server/GCoord;[Lcom/autonavi/wh/navigation/server/GCoord;Lcom/autonavi/wh/navigation/server/map/GHMapView;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/graphics/Point;

    aget-object v2, v1, v5

    iget v2, v2, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    aget-object v1, v1, v5

    iget v1, v1, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/Point;)Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-array v0, v4, [Lcom/autonavi/wh/navigation/server/GCoord;

    new-instance v1, Lcom/autonavi/wh/navigation/server/GCoord;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    aput-object v1, v0, v5

    new-array v1, v4, [Lcom/autonavi/wh/navigation/server/GCoord;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    sget-object v3, Lcom/autonavi/wh/navigation/server/GCoordConvert;->GCC_SCR_TO_GEO:Lcom/autonavi/wh/navigation/server/GCoordConvert;

    iget-object v4, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/GCoordConvert;[Lcom/autonavi/wh/navigation/server/GCoord;[Lcom/autonavi/wh/navigation/server/GCoord;Lcom/autonavi/wh/navigation/server/map/GHMapView;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/map/model/LatLng;

    aget-object v2, v1, v5

    iget v2, v2, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    aget-object v1, v1, v5

    iget v1, v1, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    invoke-direct {v0, v2, v1}, Lcom/autonavi/navigation/api/map/model/LatLng;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/b;->a(Landroid/graphics/Bitmap;)Lcom/autonavi/wh/navigation/server/map/GBitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Ljava/util/List;
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    new-array v1, v2, [I

    invoke-virtual {v0, v1, v2, p1}, Lcom/autonavi/wh/navigation/engine/g;->a([IIZ)Lcom/autonavi/wh/navigation/server/GStatus;

    new-array v1, v3, [[Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;

    new-array v0, v3, [I

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/m;->c:Lcom/autonavi/wh/navigation/engine/l;

    invoke-virtual {v3, v1, v0}, Lcom/autonavi/wh/navigation/engine/l;->a([[Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;[I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v3, :cond_3

    aget-object v0, v1, v2

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    aget-object v3, v1, v2

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    iget v6, v5, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->nEventID:I

    const/4 v7, 0x7

    if-gt v6, v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v6, v5, Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;->nDisToCar:I

    if-ltz v6, :cond_0

    invoke-static {v5}, Lcom/autonavi/navigation/api/map/internal/k;->a(Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;)Lcom/autonavi/navigation/api/map/model/TrafficIncident;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    new-array v3, v2, [I

    invoke-virtual {v1, v3, v2, v2}, Lcom/autonavi/wh/navigation/engine/g;->a([IIZ)Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_2
    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    new-array v1, v2, [I

    invoke-virtual {v0, v1, v2, v2}, Lcom/autonavi/wh/navigation/engine/g;->a([IIZ)Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficAuthListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/m;->t:Lcom/autonavi/navigation/api/map/AnMap$OnTrafficAuthListener;

    return-void
.end method

.method public a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficFlowUpdatedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->q:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->q:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentUpdatedListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->r:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->r:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
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

.method public declared-synchronized a(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficStatusListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->p:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->p:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
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

.method public declared-synchronized a(Lcom/autonavi/navigation/api/map/internal/a$a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->m:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->m:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
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

.method public declared-synchronized a(Lcom/autonavi/navigation/api/map/internal/a$b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->n:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->n:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
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

.method public declared-synchronized a(Lcom/autonavi/navigation/api/map/internal/l$b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->o:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->o:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
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

.method public a(Lcom/autonavi/wh/navigation/server/GStatus;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->e:Lcom/autonavi/wh/navigation/engine/a;

    sget-object v2, Lcom/autonavi/wh/navigation/server/GParam;->G_MAP_SHOW_TMC:Lcom/autonavi/wh/navigation/server/GParam;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;Z)Lcom/autonavi/wh/navigation/server/GStatus;

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    const/4 v0, -0x1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->p:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/AnMap$OnTrafficStatusListener;

    invoke-interface {v0, v2}, Lcom/autonavi/navigation/api/map/AnMap$OnTrafficStatusListener;->onTrafficStatus(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne p1, v2, :cond_1

    const/4 v0, 0x2

    move v2, v0

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_TIMEOUT:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne p1, v2, :cond_2

    const/4 v0, 0x3

    move v2, v0

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_REQUESTFAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne p1, v2, :cond_4

    const/4 v0, 0x4

    move v2, v0

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    move v2, v0

    goto :goto_1
.end method

.method public a(Lcom/autonavi/wh/navigation/server/tmc/GTrafficAuthResponse;)V
    .locals 2

    invoke-static {p1}, Lcom/autonavi/navigation/api/map/internal/k;->a(Lcom/autonavi/wh/navigation/server/tmc/GTrafficAuthResponse;)Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->t:Lcom/autonavi/navigation/api/map/AnMap$OnTrafficAuthListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->t:Lcom/autonavi/navigation/api/map/AnMap$OnTrafficAuthListener;

    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/map/AnMap$OnTrafficAuthListener;->onTrafficAuthResult(Lcom/autonavi/navigation/api/map/model/TrafficAuthInfo;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->c:Lcom/autonavi/wh/navigation/engine/l;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/navigation/engine/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;

    return-void
.end method

.method public a(I)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    int-to-float v5, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GHMapView;ZFFF)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public a(II)Z
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/m;->f()Lcom/autonavi/navigation/api/map/model/MapMode;

    move-result-object v0

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapMode;->MODE_3D:Lcom/autonavi/navigation/api/map/model/MapMode;

    if-ne v0, v1, :cond_0

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p2, p2, 0x2

    :cond_0
    new-instance v0, Lcom/autonavi/wh/navigation/server/map/GMoveMap;

    sget-object v1, Lcom/autonavi/wh/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_DRAG:Lcom/autonavi/wh/navigation/server/map/GMoveMapOp;

    new-instance v2, Lcom/autonavi/wh/navigation/server/GCoord;

    invoke-direct {v2, p1, p2}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    invoke-direct {v0, v1, v2}, Lcom/autonavi/wh/navigation/server/map/GMoveMap;-><init>(Lcom/autonavi/wh/navigation/server/map/GMoveMapOp;Lcom/autonavi/wh/navigation/server/GCoord;)V

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GHMapView;Lcom/autonavi/wh/navigation/server/map/GMoveMap;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/LatLng;I)Z
    .locals 4

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    new-instance v1, Lcom/autonavi/wh/navigation/server/GCoord;

    iget v2, p1, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v3, p1, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    invoke-virtual {v0, v1, p2}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/GCoord;I)Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public a(Lcom/autonavi/navigation/api/map/model/MapMode;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/m;->f()Lcom/autonavi/navigation/api/map/model/MapMode;

    move-result-object v2

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/MapMode;->ordinal()I

    move-result v4

    invoke-static {v4}, Lcom/autonavi/wh/navigation/server/map/GMapViewMode;->valueOf(I)Lcom/autonavi/wh/navigation/server/map/GMapViewMode;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GHMapView;ILcom/autonavi/wh/navigation/server/map/GMapViewMode;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v2, v3, :cond_2

    :goto_1
    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/m;->h:Lcom/autonavi/navigation/api/map/model/MapMode;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/MapType;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/navigation/api/map/internal/m;->a(Lcom/autonavi/navigation/api/map/model/MapType;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public varargs a(Lcom/autonavi/navigation/api/map/model/MapType;[Ljava/lang/Object;)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->i:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/m;->k:Lcom/autonavi/navigation/api/map/model/MapType;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->l:Ljava/util/ArrayList;

    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->l:Ljava/util/ArrayList;

    aget-object v1, p2, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->l:Ljava/util/ArrayList;

    aget-object v1, p2, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return v5

    :cond_0
    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/map/internal/m;->b(Lcom/autonavi/navigation/api/map/model/MapType;)Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    move-result-object v6

    iget-object v7, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    array-length v0, p2

    if-lez v0, :cond_2

    aget-object v0, p2, v5

    :goto_1
    array-length v2, p2

    if-le v2, v4, :cond_3

    aget-object v2, p2, v4

    :goto_2
    array-length v3, p2

    if-le v3, v8, :cond_4

    aget-object v3, p2, v8

    :goto_3
    invoke-virtual {v7, v6, v0, v2, v3}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GMapViewType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->g:Lcom/autonavi/navigation/api/map/model/MapType;

    if-eq v2, p1, :cond_1

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/m;->g:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-direct {p0, v6}, Lcom/autonavi/navigation/api/map/internal/m;->a(Lcom/autonavi/wh/navigation/server/map/GMapViewType;)Lcom/autonavi/wh/navigation/server/map/GHMapView;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/m;->b()V

    :cond_1
    iput-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->k:Lcom/autonavi/navigation/api/map/model/MapType;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_5

    move v0, v4

    :goto_4
    move v5, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_2

    :cond_4
    move-object v3, v1

    goto :goto_3

    :cond_5
    move v0, v5

    goto :goto_4
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/Marker;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/ZoomLevel;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    iget v3, p1, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->value:I

    invoke-static {v3}, Lcom/autonavi/wh/navigation/server/map/GZoomLevel;->valueOfZoom(I)Lcom/autonavi/wh/navigation/server/map/GZoomLevel;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GHMapView;ILcom/autonavi/wh/navigation/server/map/GZoomLevel;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public a(Lcom/autonavi/navigation/api/route/model/Route;)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->d:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-static {p1}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/navigation/api/route/model/Route;)Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;)Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public b(IIII)Ljava/nio/ByteBuffer;
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    sub-int v3, p3, p1

    sub-int v4, p4, p2

    invoke-virtual {v2, v3, v4}, Lcom/autonavi/wh/navigation/engine/g;->a(II)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "========GDBL_GetPixel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/map/GMapView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    invoke-virtual {v3, v0}, Lcom/autonavi/wh/navigation/engine/g;->a([Lcom/autonavi/wh/navigation/server/map/GMapView;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "========GDBL_GetMapView: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v3, v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/map/GMapView;->Bitmap:Lcom/autonavi/wh/navigation/server/map/GBitmap;

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/map/GBitmap;->pData:Ljava/nio/ByteBuffer;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/graphics/Point;)Ljava/util/List;
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-array v3, v7, [I

    new-array v4, v7, [[Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;

    new-instance v0, Lcom/autonavi/wh/navigation/server/map/GSelectParam;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/server/map/GSelectParam;-><init>()V

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->g:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-direct {p0, v2}, Lcom/autonavi/navigation/api/map/internal/m;->b(Lcom/autonavi/navigation/api/map/model/MapType;)Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/wh/navigation/server/map/GSelectParam;->eViewType:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    new-instance v2, Lcom/autonavi/wh/navigation/server/GCoord;

    iget v5, p1, Landroid/graphics/Point;->x:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v5, v6}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    iput-object v2, v0, Lcom/autonavi/wh/navigation/server/map/GSelectParam;->pos:Lcom/autonavi/wh/navigation/server/GCoord;

    iput v7, v0, Lcom/autonavi/wh/navigation/server/map/GSelectParam;->eCmd:I

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    invoke-virtual {v2, v0, v4, v3}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GSelectParam;[[Ljava/lang/Object;[I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    aget v0, v3, v1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_0
    aget v5, v3, v1

    if-ge v0, v5, :cond_0

    aget-object v5, v4, v1

    aget-object v5, v5, v0

    invoke-static {v5}, Lcom/autonavi/navigation/api/map/internal/k;->a(Lcom/autonavi/wh/navigation/server/tmc/GEventInfo;)Lcom/autonavi/navigation/api/map/model/TrafficIncident;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_1
    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/g;->c(Lcom/autonavi/wh/navigation/server/map/GHMapView;)Lcom/autonavi/wh/navigation/server/GStatus;

    return-void
.end method

.method public b(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficFlowUpdatedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->q:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->q:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized b(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficIncidentUpdatedListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->r:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->r:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
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

.method public b(Lcom/autonavi/navigation/api/map/AnMap$OnTrafficStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->p:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->p:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized b(Lcom/autonavi/navigation/api/map/internal/a$a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->m:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->m:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
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

.method public declared-synchronized b(Lcom/autonavi/navigation/api/map/internal/a$b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->n:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->n:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
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

.method public declared-synchronized b(Lcom/autonavi/navigation/api/map/internal/l$b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->o:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->o:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
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

.method public b(Lcom/autonavi/navigation/api/route/model/Route;)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->d:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    iget-object v1, p1, Lcom/autonavi/navigation/api/route/model/Route;->rule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a(I)Lcom/autonavi/wh/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->d:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    new-instance v1, Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;

    iget-wide v2, p1, Lcom/autonavi/navigation/api/route/model/Route;->id:J

    invoke-direct {v1, v2, v3}, Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->c(Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;)Lcom/autonavi/wh/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->e:Lcom/autonavi/wh/navigation/engine/a;

    sget-object v1, Lcom/autonavi/wh/navigation/server/GParam;->G_ROUTE_OPTION:Lcom/autonavi/wh/navigation/server/GParam;

    iget-object v2, p1, Lcom/autonavi/navigation/api/route/model/Route;->rule:Lcom/autonavi/navigation/api/route/model/CalculationRule;

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/route/model/CalculationRule;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;I)Lcom/autonavi/wh/navigation/server/GStatus;

    return-void
.end method

.method public b(Lcom/autonavi/wh/navigation/server/GStatus;)V
    .locals 2

    const/4 v0, -0x1

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->t:Lcom/autonavi/navigation/api/map/AnMap$OnTrafficAuthListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->t:Lcom/autonavi/navigation/api/map/AnMap$OnTrafficAuthListener;

    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/map/AnMap$OnTrafficAuthListener;->onTrafficAuthError(I)V

    :cond_1
    return-void

    :cond_2
    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne p1, v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_TIMEOUT:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne p1, v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_REQUESTFAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0
.end method

.method public b(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/autonavi/navigation/api/map/internal/m;->i:Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/engine/g;->a(Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->k:Lcom/autonavi/navigation/api/map/model/MapType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public b(I)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    int-to-float v5, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GHMapView;ZFFF)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public b(Lcom/autonavi/navigation/api/map/model/LatLng;)Z
    .locals 5

    new-instance v0, Lcom/autonavi/wh/navigation/server/map/GMoveMap;

    sget-object v1, Lcom/autonavi/wh/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_GEO_DIRECT:Lcom/autonavi/wh/navigation/server/map/GMoveMapOp;

    new-instance v2, Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, p1, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v4, p1, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v2, v3, v4}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    invoke-direct {v0, v1, v2}, Lcom/autonavi/wh/navigation/server/map/GMoveMap;-><init>(Lcom/autonavi/wh/navigation/server/map/GMoveMapOp;Lcom/autonavi/wh/navigation/server/GCoord;)V

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GHMapView;Lcom/autonavi/wh/navigation/server/map/GMoveMap;)Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public b(Lcom/autonavi/navigation/api/map/model/Marker;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/graphics/Point;)Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x0

    new-array v0, v1, [I

    new-array v1, v1, [[Lcom/autonavi/wh/navigation/server/poi/GPoi;

    new-instance v2, Lcom/autonavi/wh/navigation/server/map/GSelectParam;

    invoke-direct {v2}, Lcom/autonavi/wh/navigation/server/map/GSelectParam;-><init>()V

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/m;->g:Lcom/autonavi/navigation/api/map/model/MapType;

    invoke-direct {p0, v3}, Lcom/autonavi/navigation/api/map/internal/m;->b(Lcom/autonavi/navigation/api/map/model/MapType;)Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    move-result-object v3

    iput-object v3, v2, Lcom/autonavi/wh/navigation/server/map/GSelectParam;->eViewType:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    new-instance v3, Lcom/autonavi/wh/navigation/server/GCoord;

    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v4, v5}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    iput-object v3, v2, Lcom/autonavi/wh/navigation/server/map/GSelectParam;->pos:Lcom/autonavi/wh/navigation/server/GCoord;

    const/4 v3, 0x2

    iput v3, v2, Lcom/autonavi/wh/navigation/server/map/GSelectParam;->eCmd:I

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    invoke-virtual {v3, v2, v1, v0}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GSelectParam;[[Ljava/lang/Object;[I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v2, v3, :cond_0

    aget v0, v0, v6

    if-lez v0, :cond_0

    aget-object v0, v1, v6

    aget-object v0, v0, v6

    invoke-static {v0}, Lcom/autonavi/navigation/api/poi/a/b;->a(Lcom/autonavi/wh/navigation/server/poi/GPoi;)Lcom/autonavi/navigation/api/poi/model/Poi;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/route/model/Road;
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/guide/GRoadInfo;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    new-instance v2, Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, p1, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v4, p1, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v2, v3, v4}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/GCoord;[Lcom/autonavi/wh/navigation/server/guide/GRoadInfo;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/wh/navigation/server/guide/GRoadInfo;)Lcom/autonavi/navigation/api/route/model/Road;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    int-to-float v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GHMapView;ZFFF)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public c(Z)Z
    .locals 3

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->s:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v2, "show_traffic_tmc_option"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/autonavi/navigation/api/map/internal/m;->c()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    invoke-virtual {v2, v1}, Lcom/autonavi/wh/navigation/engine/g;->a(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v2, v3, :cond_0

    sput-boolean v0, Lcom/autonavi/navigation/api/map/internal/c;->a:Z

    :cond_0
    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v2, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public d(I)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    int-to-float v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GHMapView;ZFFF)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public d(Z)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public e()Z
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/autonavi/navigation/api/map/internal/c;->a:Z

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    invoke-virtual {v1}, Lcom/autonavi/wh/navigation/engine/g;->c()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public e(I)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/engine/g;->b(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/m;->a()Z

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(I)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/autonavi/navigation/api/internal/a/a/g;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/autonavi/navigation/api/map/model/MapMode;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->h:Lcom/autonavi/navigation/api/map/model/MapMode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GHMapView;[Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;->eMapMode:Lcom/autonavi/wh/navigation/server/map/GMapViewMode;

    iget v0, v0, Lcom/autonavi/wh/navigation/server/map/GMapViewMode;->nativeValue:I

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/model/MapMode;->valueOf(I)Lcom/autonavi/navigation/api/map/model/MapMode;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->h:Lcom/autonavi/navigation/api/map/model/MapMode;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->h:Lcom/autonavi/navigation/api/map/model/MapMode;

    return-object v0
.end method

.method public g()Lcom/autonavi/navigation/api/map/model/MapType;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->g:Lcom/autonavi/navigation/api/map/model/MapType;

    return-object v0
.end method

.method public h()Lcom/autonavi/navigation/api/map/model/MyLocation;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/autonavi/wh/navigation/server/map/GCarInfo;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/g;->a([Lcom/autonavi/wh/navigation/server/map/GCarInfo;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/map/model/MyLocation;

    new-instance v2, Lcom/autonavi/navigation/api/map/model/LatLng;

    aget-object v3, v1, v5

    iget-object v3, v3, Lcom/autonavi/wh/navigation/server/map/GCarInfo;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    aget-object v4, v1, v5

    iget-object v4, v4, Lcom/autonavi/wh/navigation/server/map/GCarInfo;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    invoke-direct {v2, v3, v4}, Lcom/autonavi/navigation/api/map/model/LatLng;-><init>(II)V

    aget-object v3, v1, v5

    iget-short v3, v3, Lcom/autonavi/wh/navigation/server/map/GCarInfo;->nAzimuth:S

    aget-object v1, v1, v5

    iget-object v1, v1, Lcom/autonavi/wh/navigation/server/map/GCarInfo;->szRoadName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lcom/autonavi/navigation/api/map/model/MyLocation;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;ILjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v4, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->k:Lcom/autonavi/navigation/api/map/model/MapType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->k:Lcom/autonavi/navigation/api/map/model/MapType;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/navigation/api/map/internal/m;->a(Lcom/autonavi/navigation/api/map/model/MapType;[Ljava/lang/Object;)Z

    :cond_0
    return v3
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/g;->b(Lcom/autonavi/wh/navigation/server/map/GHMapView;)Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public j()Lcom/autonavi/navigation/api/map/model/MapCursorInfo;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/autonavi/wh/navigation/server/map/GMapCenterInfo;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GHMapView;[Lcom/autonavi/wh/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;

    new-instance v2, Lcom/autonavi/navigation/api/map/model/LatLng;

    aget-object v3, v1, v5

    iget-object v3, v3, Lcom/autonavi/wh/navigation/server/map/GMapCenterInfo;->CenterCoord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    aget-object v4, v1, v5

    iget-object v4, v4, Lcom/autonavi/wh/navigation/server/map/GMapCenterInfo;->CenterCoord:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    invoke-direct {v2, v3, v4}, Lcom/autonavi/navigation/api/map/model/LatLng;-><init>(II)V

    aget-object v1, v1, v5

    iget-object v1, v1, Lcom/autonavi/wh/navigation/server/map/GMapCenterInfo;->szRoadName:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/autonavi/navigation/api/map/model/MapCursorInfo;-><init>(Lcom/autonavi/navigation/api/map/model/LatLng;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Lcom/autonavi/navigation/api/map/model/CameraPosition;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GHMapView;[Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;-><init>()V

    aget-object v2, v0, v5

    iget-object v2, v2, Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;->eMapMode:Lcom/autonavi/wh/navigation/server/map/GMapViewMode;

    iget v2, v2, Lcom/autonavi/wh/navigation/server/map/GMapViewMode;->nativeValue:I

    invoke-static {v2}, Lcom/autonavi/navigation/api/map/model/MapMode;->valueOf(I)Lcom/autonavi/navigation/api/map/model/MapMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->mode(Lcom/autonavi/navigation/api/map/model/MapMode;)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    move-result-object v1

    new-instance v2, Lcom/autonavi/navigation/api/map/model/LatLng;

    aget-object v3, v0, v5

    iget-object v3, v3, Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;->MapCenter:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    aget-object v4, v0, v5

    iget-object v4, v4, Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;->MapCenter:Lcom/autonavi/wh/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    invoke-direct {v2, v3, v4}, Lcom/autonavi/navigation/api/map/model/LatLng;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->target(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    move-result-object v1

    aget-object v2, v0, v5

    iget-object v2, v2, Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;->eScaleLevel:Lcom/autonavi/wh/navigation/server/map/GZoomLevel;

    iget v2, v2, Lcom/autonavi/wh/navigation/server/map/GZoomLevel;->zoomValue:I

    invoke-static {v2}, Lcom/autonavi/navigation/api/map/model/ZoomLevel;->valueOf(I)Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->zoom(Lcom/autonavi/navigation/api/map/model/ZoomLevel;)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    move-result-object v1

    aget-object v2, v0, v5

    iget v2, v2, Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;->nPitchAngle:I

    invoke-virtual {v1, v2}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->tilt(I)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    move-result-object v1

    aget-object v0, v0, v5

    iget v0, v0, Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;->nMapAngle:I

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->bearing(I)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->build()Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GHMapView;ILcom/autonavi/wh/navigation/server/map/GZoomLevel;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->u:Ljava/util/List;

    return-object v0
.end method

.method public n()Z
    .locals 4

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GHMapView;ILcom/autonavi/wh/navigation/server/map/GZoomLevel;)Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public o()Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/g;->d(Lcom/autonavi/wh/navigation/server/map/GHMapView;)Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public p()Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/g;->e(Lcom/autonavi/wh/navigation/server/map/GHMapView;)Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public q()Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/g;->f(Lcom/autonavi/wh/navigation/server/map/GHMapView;)Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public r()Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/g;->d()Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public s()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GHMapView;)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public t()Lcom/autonavi/navigation/api/map/model/TrafficFlow;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/guide/GGuideRoadTmcList;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->d:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a([Lcom/autonavi/wh/navigation/server/guide/GGuideRoadTmcList;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/k;->a(Lcom/autonavi/wh/navigation/server/guide/GGuideRoadTmcList;)Lcom/autonavi/navigation/api/map/model/TrafficFlow;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()V
    .locals 0

    return-void
.end method

.method public v()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/m;->b:Lcom/autonavi/wh/navigation/engine/g;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/m;->f:Lcom/autonavi/wh/navigation/server/map/GHMapView;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/wh/navigation/engine/g;->a(Lcom/autonavi/wh/navigation/server/map/GHMapView;[Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;->nMinPitchAngle:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public w()V
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->m:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/internal/a$a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a$a;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->n:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/internal/a$b;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a$b;->h()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public x()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/m;->m:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/internal/a$a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a$a;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public y()V
    .locals 0

    return-void
.end method

.method public z()V
    .locals 0

    return-void
.end method
