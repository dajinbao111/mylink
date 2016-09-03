.class public Lcom/autonavi/wh/navigation/engine/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/autonavi/wh/navigation/engine/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized a()Lcom/autonavi/wh/navigation/engine/d;
    .locals 2

    const-class v1, Lcom/autonavi/wh/navigation/engine/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/wh/navigation/engine/d;->a:Lcom/autonavi/wh/navigation/engine/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navigation/engine/d;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/engine/d;-><init>()V

    sput-object v0, Lcom/autonavi/wh/navigation/engine/d;->a:Lcom/autonavi/wh/navigation/engine/d;

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/engine/d;->a:Lcom/autonavi/wh/navigation/engine/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method a(Landroid/os/Looper;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    invoke-static {p1}, Lcom/autonavi/wh/navigation/engine/MidFavorite;->a(Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/g;->a()Lcom/autonavi/wh/navigation/engine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/wh/navigation/engine/g;->e()Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;Lcom/autonavi/wh/navigation/server/favorite/GFavoriteIcon;Lcom/autonavi/wh/navigation/server/poi/GPoi;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    invoke-static {p1, p2, p3}, Lcom/autonavi/wh/navigation/engine/MidFavorite;->a(Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;Lcom/autonavi/wh/navigation/server/favorite/GFavoriteIcon;Lcom/autonavi/wh/navigation/server/poi/GPoi;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/g;->a()Lcom/autonavi/wh/navigation/engine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/wh/navigation/engine/g;->e()Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;[Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoiList;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidFavorite;->a(Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;[Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoiList;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    invoke-static {p1}, Lcom/autonavi/wh/navigation/engine/MidFavorite;->a(Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/g;->a()Lcom/autonavi/wh/navigation/engine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/wh/navigation/engine/g;->e()Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method public a([II)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidFavorite;->a([II)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/g;->a()Lcom/autonavi/wh/navigation/engine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/wh/navigation/engine/g;->e()Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method b()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method
