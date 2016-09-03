.class public final Lcom/autonavi/navigation/api/demo/a/c;
.super Lcom/autonavi/navigation/api/demo/a/a;


# instance fields
.field private final b:Lcom/autonavi/wh/navigation/engine/b;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/navigation/api/demo/a/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/demo/a/c;->c:Z

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/b;->a()Lcom/autonavi/wh/navigation/engine/b;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/demo/a/c;->b:Lcom/autonavi/wh/navigation/engine/b;

    return-void
.end method

.method private a(Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;)Lcom/autonavi/navigation/api/demo/model/DemoItem;
    .locals 6

    new-instance v0, Lcom/autonavi/navigation/api/demo/model/DemoItem;

    iget-object v1, p1, Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;->szModelName:Ljava/lang/String;

    iget-object v2, p1, Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;->szSPCode:Ljava/lang/String;

    iget v3, p1, Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;->nScaleLevel:I

    iget v4, p1, Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;->nElevation:I

    iget v5, p1, Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;->nRadius:I

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/navigation/api/demo/model/DemoItem;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method private a(Lcom/autonavi/wh/navigation/server/demo/GDemoJourneyInfo;)Lcom/autonavi/navigation/api/demo/model/JourneyDemo;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/autonavi/navigation/api/demo/model/JourneyDemo;

    iget v1, p1, Lcom/autonavi/wh/navigation/server/demo/GDemoJourneyInfo;->nID:I

    iget-object v2, p1, Lcom/autonavi/wh/navigation/server/demo/GDemoJourneyInfo;->szJourneyName:Ljava/lang/String;

    new-instance v3, Lcom/autonavi/navigation/api/map/model/LatLng;

    iget-object v4, p1, Lcom/autonavi/wh/navigation/server/demo/GDemoJourneyInfo;->stCoord:[Lcom/autonavi/wh/navigation/server/GCoord;

    aget-object v4, v4, v6

    iget v4, v4, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    iget-object v5, p1, Lcom/autonavi/wh/navigation/server/demo/GDemoJourneyInfo;->stCoord:[Lcom/autonavi/wh/navigation/server/GCoord;

    aget-object v5, v5, v6

    iget v5, v5, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    invoke-direct {v3, v4, v5}, Lcom/autonavi/navigation/api/map/model/LatLng;-><init>(II)V

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/demo/model/JourneyDemo;-><init>(ILjava/lang/String;Lcom/autonavi/navigation/api/map/model/LatLng;)V

    return-object v0
.end method

.method private b(Lcom/autonavi/navigation/api/demo/model/DemoItem;)Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;
    .locals 6

    new-instance v0, Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;

    iget-object v1, p1, Lcom/autonavi/navigation/api/demo/model/DemoItem;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/autonavi/navigation/api/demo/model/DemoItem;->spCode:Ljava/lang/String;

    iget v3, p1, Lcom/autonavi/navigation/api/demo/model/DemoItem;->zoomLevel:I

    iget v4, p1, Lcom/autonavi/navigation/api/demo/model/DemoItem;->tilt:I

    iget v5, p1, Lcom/autonavi/navigation/api/demo/model/DemoItem;->bearing:I

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method


# virtual methods
.method public a(I)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/a/c;->b:Lcom/autonavi/wh/navigation/engine/b;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/engine/b;->a(I)Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/a/c;->b:Lcom/autonavi/wh/navigation/engine/b;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/b;->f()Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public c()Ljava/util/List;
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v3, v0, [Lcom/autonavi/wh/navigation/server/demo/GDemoJourneyList;

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/a/c;->b:Lcom/autonavi/wh/navigation/engine/b;

    invoke-virtual {v0, v3}, Lcom/autonavi/wh/navigation/engine/b;->a([Lcom/autonavi/wh/navigation/server/demo/GDemoJourneyList;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    aget-object v0, v3, v2

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/demo/GDemoJourneyList;->pDemoJourney:[Lcom/autonavi/wh/navigation/server/demo/GDemoJourneyInfo;

    array-length v4, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v2

    iget-object v5, v5, Lcom/autonavi/wh/navigation/server/demo/GDemoJourneyList;->pDemoJourney:[Lcom/autonavi/wh/navigation/server/demo/GDemoJourneyInfo;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lcom/autonavi/navigation/api/demo/a/c;->a(Lcom/autonavi/wh/navigation/server/demo/GDemoJourneyInfo;)Lcom/autonavi/navigation/api/demo/model/JourneyDemo;

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

.method public d()Ljava/util/List;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v4, v0, [I

    new-array v5, v0, [[Lcom/autonavi/wh/navigation/server/demo/GDemoModelList;

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/a/c;->b:Lcom/autonavi/wh/navigation/engine/b;

    invoke-virtual {v0, v5, v4}, Lcom/autonavi/wh/navigation/engine/b;->a([[Lcom/autonavi/wh/navigation/server/demo/GDemoModelList;[I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    aget v0, v4, v1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_0
    aget v3, v4, v1

    if-ge v0, v3, :cond_2

    aget-object v3, v5, v1

    aget-object v6, v3, v0

    iget-object v3, v6, Lcom/autonavi/wh/navigation/server/demo/GDemoModelList;->pDemoModel:[Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;

    if-eqz v3, :cond_1

    iget-object v3, v6, Lcom/autonavi/wh/navigation/server/demo/GDemoModelList;->pDemoModel:[Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;

    array-length v7, v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v1

    :goto_1
    if-ge v3, v7, :cond_0

    iget-object v9, v6, Lcom/autonavi/wh/navigation/server/demo/GDemoModelList;->pDemoModel:[Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;

    aget-object v9, v9, v3

    invoke-direct {p0, v9}, Lcom/autonavi/navigation/api/demo/a/c;->a(Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;)Lcom/autonavi/navigation/api/demo/model/DemoItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/autonavi/navigation/api/demo/model/DemoInfo;

    iget-object v6, v6, Lcom/autonavi/wh/navigation/server/demo/GDemoModelList;->szAdminName:Ljava/lang/String;

    invoke-direct {v3, v6, v8}, Lcom/autonavi/navigation/api/demo/model/DemoInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_2
    return-object v0

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method public e()Z
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/demo/a/c;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/a/c;->b:Lcom/autonavi/wh/navigation/engine/b;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/b;->d()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/demo/a/c;->c:Z

    :goto_0
    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/a/c;->b:Lcom/autonavi/wh/navigation/engine/b;

    iget-object v2, p0, Lcom/autonavi/navigation/api/demo/a/c;->a:Lcom/autonavi/navigation/api/demo/model/DemoItem;

    invoke-direct {p0, v2}, Lcom/autonavi/navigation/api/demo/a/c;->b(Lcom/autonavi/navigation/api/demo/model/DemoItem;)Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navigation/engine/b;->a(Lcom/autonavi/wh/navigation/server/demo/GDemoModelInfo;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public f()Z
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/demo/a/c;->c:Z

    iget-object v1, p0, Lcom/autonavi/navigation/api/demo/a/c;->b:Lcom/autonavi/wh/navigation/engine/b;

    invoke-virtual {v1}, Lcom/autonavi/wh/navigation/engine/b;->c()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/demo/a/c;->c:Z

    iget-object v1, p0, Lcom/autonavi/navigation/api/demo/a/c;->b:Lcom/autonavi/wh/navigation/engine/b;

    invoke-virtual {v1}, Lcom/autonavi/wh/navigation/engine/b;->e()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
