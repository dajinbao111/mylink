.class public Lcom/autonavi/navigation/api/internal/a/e;
.super Lcom/autonavi/navigation/api/internal/a/a;

# interfaces
.implements Lcom/autonavi/wh/navigation/engine/f$a;


# instance fields
.field private final a:Lcom/autonavi/wh/navigation/engine/f;

.field private final b:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/navigation/api/internal/a/a;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/a/e;->b:Ljava/util/LinkedList;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/f;->a()Lcom/autonavi/wh/navigation/engine/f;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navigation/engine/f;->a(Lcom/autonavi/wh/navigation/engine/f$a;)Lcom/autonavi/wh/navigation/server/GStatus;

    return-void
.end method

.method private a(IIII)F
    .locals 5

    const/high16 v4, 0x43340000    # 180.0f

    if-ne p3, p1, :cond_2

    if-le p4, p2, :cond_1

    const/high16 v0, 0x42b40000    # 90.0f

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v0, -0x3d4c0000    # -90.0f

    goto :goto_0

    :cond_2
    sub-int v0, p4, p2

    sub-int v1, p3, p1

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    if-le p3, p1, :cond_3

    if-le p4, p2, :cond_3

    neg-float v0, v0

    goto :goto_0

    :cond_3
    if-le p3, p1, :cond_4

    if-lt p4, p2, :cond_0

    :cond_4
    if-ge p3, p1, :cond_5

    if-le p4, p2, :cond_5

    sub-float/2addr v0, v4

    goto :goto_0

    :cond_5
    sub-float v0, v4, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/LatLng;)I
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    new-instance v1, Lcom/autonavi/wh/navigation/server/GCoord;

    iget v2, p1, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v3, p1, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    new-instance v2, Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, p2, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v4, p2, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v2, v3, v4}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    iget-object v3, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    invoke-virtual {v3, v1, v2, v0}, Lcom/autonavi/wh/navigation/engine/f;->a(Lcom/autonavi/wh/navigation/server/GCoord;Lcom/autonavi/wh/navigation/server/GCoord;[I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v2, v1, [Lcom/autonavi/wh/navigation/server/GVersion;

    iget-object v3, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    invoke-virtual {v3, p1, v2}, Lcom/autonavi/wh/navigation/engine/f;->a(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GVersion;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v3

    sget-object v4, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v3, v4, :cond_0

    new-array v3, v1, [Lcom/autonavi/wh/navigation/server/GVersion;

    iget-object v4, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    invoke-virtual {v4, p2, v3}, Lcom/autonavi/wh/navigation/engine/f;->a(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GVersion;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v4

    sget-object v5, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v4, v5, :cond_0

    new-array v4, v1, [Lcom/autonavi/wh/navigation/server/GVerCheckResult;

    iget-object v5, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    aget-object v2, v2, v0

    aget-object v3, v3, v0

    invoke-virtual {v5, v2, v3, v4}, Lcom/autonavi/wh/navigation/engine/f;->b(Lcom/autonavi/wh/navigation/server/GVersion;Lcom/autonavi/wh/navigation/server/GVersion;[Lcom/autonavi/wh/navigation/server/GVerCheckResult;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/autonavi/wh/navigation/server/GVerCheckResult;->GVERSION_SAME:Lcom/autonavi/wh/navigation/server/GVerCheckResult;

    aget-object v3, v4, v0

    invoke-virtual {v2, v3}, Lcom/autonavi/wh/navigation/server/GVerCheckResult;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/autonavi/wh/navigation/server/GVerCheckResult;->GVERSION_OLDER:Lcom/autonavi/wh/navigation/server/GVerCheckResult;

    aget-object v3, v4, v0

    invoke-virtual {v2, v3}, Lcom/autonavi/wh/navigation/server/GVerCheckResult;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/autonavi/wh/navigation/server/GVerCheckResult;->GVERSION_NEWER:Lcom/autonavi/wh/navigation/server/GVerCheckResult;

    aget-object v3, v4, v0

    invoke-virtual {v2, v3}, Lcom/autonavi/wh/navigation/server/GVerCheckResult;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/LatLng;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    new-instance v2, Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, p1, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v4, p1, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v2, v3, v4}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v0, v3}, Lcom/autonavi/wh/navigation/engine/f;->a(Lcom/autonavi/wh/navigation/server/GCoord;[Ljava/lang/String;I)Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/f;->a(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_2

    const/16 v0, 0x1001

    :cond_1
    :goto_0
    new-instance v1, Lcom/autonavi/navigation/api/StartupException;

    invoke-direct {v1, v0}, Lcom/autonavi/navigation/api/StartupException;-><init>(I)V

    throw v1

    :cond_2
    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_MEMORY:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_1

    const/16 v0, 0x1004

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/autonavi/navigation/api/internal/a/d$a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/e;->b:Ljava/util/LinkedList;

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

.method public a(Landroid/app/Application;)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/engine/f;->a(Landroid/app/Application;)Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/engine/f;->a(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public a(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Z

    iget-object v2, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    invoke-virtual {v2, p1, p2, v1}, Lcom/autonavi/wh/navigation/engine/f;->a(Ljava/lang/String;I[Z)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v2, v3, :cond_0

    aget-boolean v0, v1, v0

    :cond_0
    return v0
.end method

.method public b(Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/LatLng;)F
    .locals 4

    iget v0, p1, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v1, p1, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    iget v2, p2, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v3, p2, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/autonavi/navigation/api/internal/a/e;->a(IIII)F

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;I)Ljava/util/List;
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v4, 0x64

    new-array v3, v4, [Lcom/autonavi/wh/navigation/server/GDataDirInfo;

    new-array v5, v7, [I

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/wh/navigation/engine/f;->a(Ljava/lang/String;I[Lcom/autonavi/wh/navigation/server/GDataDirInfo;I[I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    aget v0, v5, v6

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v3

    move v2, v6

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    if-eqz v0, :cond_0

    aget-object v0, v3, v2

    iget v0, v0, Lcom/autonavi/wh/navigation/server/GDataDirInfo;->bDel:I

    if-nez v0, :cond_3

    move v0, v6

    :goto_1
    new-instance v5, Lcom/autonavi/navigation/api/data/model/AdminAreaFile;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/a/a;->a()Lcom/autonavi/navigation/api/internal/a/a/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/autonavi/navigation/api/internal/a/a/a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v2

    iget-object v9, v9, Lcom/autonavi/wh/navigation/server/GDataDirInfo;->szDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v0, v8}, Lcom/autonavi/navigation/api/data/model/AdminAreaFile;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_3
    move v0, v7

    goto :goto_1
.end method

.method public declared-synchronized b(Lcom/autonavi/navigation/api/internal/a/d$a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/e;->b:Ljava/util/LinkedList;

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

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/f;->b()Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public b(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/engine/f;->b(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/f;->c()Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public c(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/engine/f;->c(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public d()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/GVersion;

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/navigation/engine/f;->a([Lcom/autonavi/wh/navigation/server/GVersion;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/GVersion;->szVersion:Ljava/lang/String;

    const-string v1, "[Vv ]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/GVersion;

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    invoke-virtual {v1, p1, v0}, Lcom/autonavi/wh/navigation/engine/f;->a(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GVersion;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/GVersion;->szVersion:Ljava/lang/String;

    const-string v1, "[Vv ]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/GVersion;

    iget-object v1, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    invoke-virtual {v1, p1, v0}, Lcom/autonavi/wh/navigation/engine/f;->b(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GVersion;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/GVersion;->szVersion:Ljava/lang/String;

    const-string v1, "[Vv ]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/internal/a/d$a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/d$a;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)I
    .locals 7

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v0, 0x0

    new-array v3, v2, [Lcom/autonavi/wh/navigation/server/GVersion;

    iget-object v4, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    invoke-virtual {v4, v3}, Lcom/autonavi/wh/navigation/engine/f;->a([Lcom/autonavi/wh/navigation/server/GVersion;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v4

    sget-object v5, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v4, v5, :cond_2

    new-array v4, v2, [Lcom/autonavi/wh/navigation/server/GVersion;

    iget-object v5, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    invoke-virtual {v5, p1, v4}, Lcom/autonavi/wh/navigation/engine/f;->a(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GVersion;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v5

    sget-object v6, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v5, v6, :cond_2

    new-array v5, v2, [Lcom/autonavi/wh/navigation/server/GVerCheckResult;

    iget-object v6, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    aget-object v3, v3, v0

    aget-object v4, v4, v0

    invoke-virtual {v6, v3, v4, v5}, Lcom/autonavi/wh/navigation/engine/f;->a(Lcom/autonavi/wh/navigation/server/GVersion;Lcom/autonavi/wh/navigation/server/GVersion;[Lcom/autonavi/wh/navigation/server/GVerCheckResult;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v3

    sget-object v4, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/autonavi/wh/navigation/server/GVerCheckResult;->GVERSION_SAME:Lcom/autonavi/wh/navigation/server/GVerCheckResult;

    aget-object v4, v5, v0

    invoke-virtual {v3, v4}, Lcom/autonavi/wh/navigation/server/GVerCheckResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v3, Lcom/autonavi/wh/navigation/server/GVerCheckResult;->GVERSION_OLDER:Lcom/autonavi/wh/navigation/server/GVerCheckResult;

    aget-object v4, v5, v0

    invoke-virtual {v3, v4}, Lcom/autonavi/wh/navigation/server/GVerCheckResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/autonavi/wh/navigation/server/GVerCheckResult;->GVERSION_NEWER:Lcom/autonavi/wh/navigation/server/GVerCheckResult;

    aget-object v0, v5, v0

    invoke-virtual {v3, v0}, Lcom/autonavi/wh/navigation/server/GVerCheckResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/internal/a/d$a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/d$a;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;)Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/autonavi/wh/navigation/server/GCoord;

    iget-object v0, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    invoke-virtual {v0, p1, v1}, Lcom/autonavi/wh/navigation/engine/f;->a(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GCoord;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/map/model/LatLng;

    aget-object v2, v1, v3

    iget v2, v2, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    aget-object v1, v1, v3

    iget v1, v1, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    invoke-direct {v0, v2, v1}, Lcom/autonavi/navigation/api/map/model/LatLng;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Z

    iget-object v2, p0, Lcom/autonavi/navigation/api/internal/a/e;->a:Lcom/autonavi/wh/navigation/engine/f;

    invoke-virtual {v2, p1, v1}, Lcom/autonavi/wh/navigation/engine/f;->a(Ljava/lang/String;[Z)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v2, v3, :cond_0

    aget-boolean v0, v1, v0

    :cond_0
    return v0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
