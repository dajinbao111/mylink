.class public Lcom/autonavi/navigation/api/track/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/track/a/a;
.implements Lcom/autonavi/wh/navigation/engine/m$a;


# instance fields
.field private final a:Lcom/autonavi/wh/navigation/engine/m;

.field private b:Lcom/autonavi/navigation/api/track/model/TrackInfo;

.field private c:Z

.field private d:Lcom/autonavi/navigation/api/track/TrackPlayer$OnCompletionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/track/a/b;->c:Z

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/m;->a()Lcom/autonavi/wh/navigation/engine/m;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/track/a/b;->a:Lcom/autonavi/wh/navigation/engine/m;

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/a/b;->a:Lcom/autonavi/wh/navigation/engine/m;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navigation/engine/m;->a(Lcom/autonavi/wh/navigation/engine/m$a;)Lcom/autonavi/wh/navigation/server/GStatus;

    return-void
.end method

.method private a(Lcom/autonavi/wh/navigation/server/map/GTrackInfo;)Lcom/autonavi/navigation/api/track/model/TrackInfo;
    .locals 4

    new-instance v0, Lcom/autonavi/navigation/api/track/model/TrackInfo;

    iget v1, p1, Lcom/autonavi/wh/navigation/server/map/GTrackInfo;->nIndex:I

    iget-object v2, p1, Lcom/autonavi/wh/navigation/server/map/GTrackInfo;->szTrackName:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/autonavi/wh/navigation/server/map/GTrackInfo;->bLoaded:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/track/model/TrackInfo;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method private c(Lcom/autonavi/navigation/api/track/model/TrackInfo;)Lcom/autonavi/wh/navigation/server/map/GTrackInfo;
    .locals 2

    new-instance v0, Lcom/autonavi/wh/navigation/server/map/GTrackInfo;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/server/map/GTrackInfo;-><init>()V

    iget v1, p1, Lcom/autonavi/navigation/api/track/model/TrackInfo;->id:I

    iput v1, v0, Lcom/autonavi/wh/navigation/server/map/GTrackInfo;->nIndex:I

    iget-object v1, p1, Lcom/autonavi/navigation/api/track/model/TrackInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/wh/navigation/server/map/GTrackInfo;->szTrackName:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/autonavi/navigation/api/track/model/TrackInfo;->isLoaded:Z

    iput-boolean v1, v0, Lcom/autonavi/wh/navigation/server/map/GTrackInfo;->bLoaded:Z

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v3, v0, [Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/a/b;->a:Lcom/autonavi/wh/navigation/engine/m;

    invoke-virtual {v0, v3}, Lcom/autonavi/wh/navigation/engine/m;->a([Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    aget-object v0, v3, v2

    iget v4, v0, Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;->nNumberOfTrack:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v2

    iget-object v5, v5, Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;->pTrackInfo:[Lcom/autonavi/wh/navigation/server/map/GTrackInfo;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lcom/autonavi/navigation/api/track/a/b;->a(Lcom/autonavi/wh/navigation/server/map/GTrackInfo;)Lcom/autonavi/navigation/api/track/model/TrackInfo;

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

.method public a(Lcom/autonavi/navigation/api/track/TrackPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/track/a/b;->d:Lcom/autonavi/navigation/api/track/TrackPlayer$OnCompletionListener;

    return-void
.end method

.method public a(J)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/a/b;->a:Lcom/autonavi/wh/navigation/engine/m;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/navigation/engine/m;->a(J)Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public a(Lcom/autonavi/navigation/api/track/model/TrackInfo;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Lcom/autonavi/navigation/api/track/model/TrackInfo;->id:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/track/a/b;->a:Lcom/autonavi/wh/navigation/engine/m;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/track/a/b;->c(Lcom/autonavi/navigation/api/track/model/TrackInfo;)Lcom/autonavi/wh/navigation/server/map/GTrackInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navigation/engine/m;->a(Lcom/autonavi/wh/navigation/server/map/GTrackInfo;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public varargs a([I)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/a/b;->a:Lcom/autonavi/wh/navigation/engine/m;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/autonavi/wh/navigation/engine/m;->a([II)Lcom/autonavi/wh/navigation/server/GStatus;

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

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/a/b;->a:Lcom/autonavi/wh/navigation/engine/m;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/m;->c()Lcom/autonavi/wh/navigation/server/GStatus;

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

.method public b(Lcom/autonavi/navigation/api/track/model/TrackInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/a/b;->a:Lcom/autonavi/wh/navigation/engine/m;

    iget-object v1, p0, Lcom/autonavi/navigation/api/track/a/b;->b:Lcom/autonavi/navigation/api/track/model/TrackInfo;

    iget-object v1, v1, Lcom/autonavi/navigation/api/track/model/TrackInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/m;->a(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/autonavi/navigation/api/track/a/b;->b:Lcom/autonavi/navigation/api/track/model/TrackInfo;

    :cond_0
    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/a/b;->b:Lcom/autonavi/navigation/api/track/model/TrackInfo;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/track/a/b;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/a/b;->a:Lcom/autonavi/wh/navigation/engine/m;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/m;->e()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/track/a/b;->c:Z

    :goto_1
    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/track/a/b;->a:Lcom/autonavi/wh/navigation/engine/m;

    iget-object v2, p0, Lcom/autonavi/navigation/api/track/a/b;->b:Lcom/autonavi/navigation/api/track/model/TrackInfo;

    iget-object v2, v2, Lcom/autonavi/navigation/api/track/model/TrackInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navigation/engine/m;->c(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/track/a/b;->c:Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public d()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/navigation/api/track/a/b;->a:Lcom/autonavi/wh/navigation/engine/m;

    invoke-virtual {v1}, Lcom/autonavi/wh/navigation/engine/m;->f()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/track/a/b;->c:Z

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public e()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/a/b;->a:Lcom/autonavi/wh/navigation/engine/m;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/m;->d()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/autonavi/navigation/api/track/a/b;->c:Z

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()J
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [J

    iget-object v1, p0, Lcom/autonavi/navigation/api/track/a/b;->a:Lcom/autonavi/wh/navigation/engine/m;

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/navigation/engine/m;->a([J)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/navigation/api/track/a/b;->b:Lcom/autonavi/navigation/api/track/model/TrackInfo;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/navigation/api/track/a/b;->a:Lcom/autonavi/wh/navigation/engine/m;

    iget-object v2, p0, Lcom/autonavi/navigation/api/track/a/b;->b:Lcom/autonavi/navigation/api/track/model/TrackInfo;

    iget-object v2, v2, Lcom/autonavi/navigation/api/track/model/TrackInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navigation/engine/m;->b(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/autonavi/navigation/api/track/a/b;->b:Lcom/autonavi/navigation/api/track/model/TrackInfo;

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/a/b;->d:Lcom/autonavi/navigation/api/track/TrackPlayer$OnCompletionListener;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/track/TrackPlayer$OnCompletionListener;->onCompletion()V

    return-void
.end method
