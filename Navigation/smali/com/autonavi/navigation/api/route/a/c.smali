.class public Lcom/autonavi/navigation/api/route/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/route/a/b;


# instance fields
.field private final a:Lcom/autonavi/xm/navigation/engine/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/c;->a()Lcom/autonavi/xm/navigation/engine/c;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/route/a/c;->a:Lcom/autonavi/xm/navigation/engine/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/autonavi/xm/navigation/server/guide/GDetourRegionList;

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/c;->a:Lcom/autonavi/xm/navigation/engine/c;

    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navigation/engine/c;->a([Lcom/autonavi/xm/navigation/server/guide/GDetourRegionList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v3, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionList;->pDetourRegion:[Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-static {v4}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;)Lcom/autonavi/navigation/api/route/model/DetourRegion;

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

.method public a(I)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/route/a/c;->a([I)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/LatLng;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, p1, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v3, p1, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v1, v2, v3}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    const/4 v2, 0x1

    new-array v2, v2, [Z

    iget-object v3, p0, Lcom/autonavi/navigation/api/route/a/c;->a:Lcom/autonavi/xm/navigation/engine/c;

    invoke-virtual {v3, v1, v2}, Lcom/autonavi/xm/navigation/engine/c;->a(Lcom/autonavi/xm/navigation/server/GCoord;[Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v3, v1, :cond_0

    aget-boolean v0, v2, v0

    :cond_0
    return v0
.end method

.method public a(Lcom/autonavi/navigation/api/route/model/DetourRegion;)Z
    .locals 11

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/navigation/api/route/model/DetourRegion;)Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;

    move-result-object v5

    if-nez v5, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    new-array v6, v3, [Lcom/autonavi/xm/navigation/server/guide/GDetourRegionList;

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/c;->a:Lcom/autonavi/xm/navigation/engine/c;

    invoke-virtual {v0, v6}, Lcom/autonavi/xm/navigation/engine/c;->a([Lcom/autonavi/xm/navigation/server/guide/GDetourRegionList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v4, v0, :cond_2

    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionList;->pDetourRegion:[Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;

    array-length v4, v4

    const/16 v7, 0x14

    if-lt v4, v7, :cond_2

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NO_SPACE:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_1
    :goto_1
    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v0, :cond_7

    move v0, v3

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v4, v0, :cond_6

    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionList;->pDetourRegion:[Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;

    array-length v7, v4

    move v4, v2

    :goto_2
    if-ge v4, v7, :cond_1

    aget-object v8, v6, v2

    iget-object v8, v8, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionList;->pDetourRegion:[Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;

    aget-object v8, v8, v4

    iget v9, v5, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->nIndex:I

    if-eq v1, v9, :cond_3

    iget v9, v8, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->nIndex:I

    iget v10, v5, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->nIndex:I

    if-ne v9, v10, :cond_3

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/c;->a:Lcom/autonavi/xm/navigation/engine/c;

    invoke-virtual {v0, v5}, Lcom/autonavi/xm/navigation/engine/c;->b(Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v9, v8, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v9, v9, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v10, v5, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v10, v10, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    if-ne v9, v10, :cond_4

    iget-object v9, v8, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v9, v9, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget-object v10, v5, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v10, v10, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    if-ne v9, v10, :cond_4

    iget v0, v8, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->nIndex:I

    iput v0, v5, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->nIndex:I

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/c;->a:Lcom/autonavi/xm/navigation/engine/c;

    invoke-virtual {v0, v5}, Lcom/autonavi/xm/navigation/engine/c;->b(Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    iget v2, v8, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->nIndex:I

    iput v2, v5, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->nIndex:I

    goto :goto_1

    :cond_4
    add-int/lit8 v8, v7, -0x1

    if-ne v8, v4, :cond_5

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/c;->a:Lcom/autonavi/xm/navigation/engine/c;

    invoke-virtual {v0, v5}, Lcom/autonavi/xm/navigation/engine/c;->a(Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/c;->a:Lcom/autonavi/xm/navigation/engine/c;

    invoke-virtual {v0, v5}, Lcom/autonavi/xm/navigation/engine/c;->a(Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_1

    :cond_7
    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NO_SPACE:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v2, :cond_8

    const/4 v0, 0x2

    :goto_3
    new-instance v1, Lcom/autonavi/navigation/api/AnException;

    invoke-direct {v1, v0}, Lcom/autonavi/navigation/api/AnException;-><init>(I)V

    throw v1

    :cond_8
    move v0, v1

    goto :goto_3
.end method

.method public a([I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v2, p0, Lcom/autonavi/navigation/api/route/a/c;->a:Lcom/autonavi/xm/navigation/engine/c;

    array-length v3, p1

    invoke-virtual {v2, p1, v3}, Lcom/autonavi/xm/navigation/engine/c;->a([II)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v3, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    array-length v2, p1

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public b()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v2, v0, [Lcom/autonavi/xm/navigation/server/guide/GDetourRegionList;

    iget-object v3, p0, Lcom/autonavi/navigation/api/route/a/c;->a:Lcom/autonavi/xm/navigation/engine/c;

    invoke-virtual {v3, v2}, Lcom/autonavi/xm/navigation/engine/c;->a([Lcom/autonavi/xm/navigation/server/guide/GDetourRegionList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v3

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v4, v3, :cond_2

    aget-object v0, v2, v1

    iget v3, v0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionList;->nNumberOfDetourRegion:I

    new-array v4, v3, [I

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionList;->pDetourRegion:[Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->nIndex:I

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Lcom/autonavi/navigation/api/route/a/c;->a([I)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    :cond_2
    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_1
.end method
