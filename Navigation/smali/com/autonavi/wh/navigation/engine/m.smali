.class public Lcom/autonavi/wh/navigation/engine/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/autonavi/wh/navigation/engine/m;


# instance fields
.field private b:Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;

.field private c:Lcom/autonavi/wh/navigation/engine/m$b;

.field private d:Z

.field private e:J

.field private f:Lcom/autonavi/wh/navigation/engine/m$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/m;->d:Z

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/autonavi/wh/navigation/engine/m;->e:J

    return-void
.end method

.method public static final declared-synchronized a()Lcom/autonavi/wh/navigation/engine/m;
    .locals 2

    const-class v1, Lcom/autonavi/wh/navigation/engine/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/wh/navigation/engine/m;->a:Lcom/autonavi/wh/navigation/engine/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navigation/engine/m;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/engine/m;-><init>()V

    sput-object v0, Lcom/autonavi/wh/navigation/engine/m;->a:Lcom/autonavi/wh/navigation/engine/m;

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/engine/m;->a:Lcom/autonavi/wh/navigation/engine/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/autonavi/wh/navigation/engine/m;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/m;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/autonavi/wh/navigation/engine/m;)J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/wh/navigation/engine/m;->e:J

    return-wide v0
.end method

.method static synthetic c(Lcom/autonavi/wh/navigation/engine/m;)Lcom/autonavi/wh/navigation/engine/m$a;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/m;->f:Lcom/autonavi/wh/navigation/engine/m$a;

    return-object v0
.end method

.method private g()Ljava/io/FilenameFilter;
    .locals 1

    new-instance v0, Lcom/autonavi/wh/navigation/engine/m$1;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navigation/engine/m$1;-><init>(Lcom/autonavi/wh/navigation/engine/m;)V

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/wh/navigation/engine/m;->e:J

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method a(Landroid/os/Looper;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    new-instance v0, Lcom/autonavi/wh/navigation/engine/m$b;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/wh/navigation/engine/m$b;-><init>(Lcom/autonavi/wh/navigation/engine/m;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/wh/navigation/engine/m;->c:Lcom/autonavi/wh/navigation/engine/m$b;

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/engine/m$a;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    iput-object p1, p0, Lcom/autonavi/wh/navigation/engine/m;->f:Lcom/autonavi/wh/navigation/engine/m$a;

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/map/GTrackInfo;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/autonavi/wh/navigation/server/map/GTrackInfo;->nIndex:I

    if-gez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/m;->b:Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;

    if-nez v0, :cond_2

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/autonavi/wh/navigation/server/map/GTrackInfo;->nIndex:I

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/m;->b:Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;

    iget v1, v1, Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;->nNumberOfTrack:I

    if-lt v0, v1, :cond_3

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :cond_3
    new-array v0, v2, [Z

    iget-object v1, p1, Lcom/autonavi/wh/navigation/server/map/GTrackInfo;->szTrackName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/autonavi/wh/navigation/engine/MidTrack;->a(Ljava/lang/String;[Z)Lcom/autonavi/wh/navigation/server/GStatus;

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_4

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/m;->b:Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;->pTrackInfo:[Lcom/autonavi/wh/navigation/server/map/GTrackInfo;

    iget v1, p1, Lcom/autonavi/wh/navigation/server/map/GTrackInfo;->nIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/autonavi/wh/navigation/server/map/GTrackInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_DUPLICATE_DATA:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :cond_5
    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v1}, Lcom/autonavi/wh/navigation/engine/MidTrack;->a([Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;

    aget-object v2, v1, v3

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/map/GTrackInfo;->szTrackName:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/autonavi/wh/navigation/engine/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    aget-object v1, v1, v3

    iget-object v2, p1, Lcom/autonavi/wh/navigation/server/map/GTrackInfo;->szTrackName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/autonavi/wh/navigation/engine/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    invoke-static {p1}, Lcom/autonavi/wh/navigation/engine/MidTrack;->a(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/g;->a()Lcom/autonavi/wh/navigation/engine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/wh/navigation/engine/g;->e()Lcom/autonavi/wh/navigation/server/GStatus;

    :cond_0
    return-object v0
.end method

.method public a([II)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    if-lez p2, :cond_0

    array-length v0, p1

    if-le p2, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/m;->b:Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;

    if-nez v0, :cond_2

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :cond_2
    new-array v3, v1, [Ljava/lang/String;

    invoke-static {v3}, Lcom/autonavi/wh/navigation/engine/MidTrack;->a([Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;

    new-array v4, v1, [Z

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, p2, :cond_4

    iget-object v5, p0, Lcom/autonavi/wh/navigation/engine/m;->b:Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;

    iget-object v5, v5, Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;->pTrackInfo:[Lcom/autonavi/wh/navigation/server/map/GTrackInfo;

    aget v6, p1, v1

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/autonavi/wh/navigation/server/map/GTrackInfo;->szTrackName:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/autonavi/wh/navigation/engine/MidTrack;->a(Ljava/lang/String;[Z)Lcom/autonavi/wh/navigation/server/GStatus;

    aget-boolean v6, v4, v2

    if-eqz v6, :cond_3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    aget-object v6, v3, v2

    invoke-direct {p0, v6, v5}, Lcom/autonavi/wh/navigation/engine/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    or-int/2addr v0, v5

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0
.end method

.method public a([J)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/autonavi/wh/navigation/engine/m;->e:J

    aput-wide v1, p1, v0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0
.end method

.method public a([Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 10

    const/4 v5, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v0}, Lcom/autonavi/wh/navigation/engine/MidTrack;->a([Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v2, Ljava/io/File;

    aget-object v0, v0, v1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/engine/m;->g()Ljava/io/FilenameFilter;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    if-gtz v3, :cond_3

    :cond_2
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navigation/engine/m;->b:Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/m;->b:Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;

    iput v3, v0, Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;->nNumberOfTrack:I

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/m;->b:Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;

    new-array v4, v3, [Lcom/autonavi/wh/navigation/server/map/GTrackInfo;

    iput-object v4, v0, Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;->pTrackInfo:[Lcom/autonavi/wh/navigation/server/map/GTrackInfo;

    new-instance v4, Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;

    invoke-direct {v4}, Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;-><init>()V

    iput v3, v4, Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;->nNumberOfTrack:I

    new-array v0, v3, [Lcom/autonavi/wh/navigation/server/map/GTrackInfo;

    iput-object v0, v4, Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;->pTrackInfo:[Lcom/autonavi/wh/navigation/server/map/GTrackInfo;

    new-array v5, v5, [Z

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_4

    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, ".dat"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/autonavi/wh/navigation/engine/MidTrack;->a(Ljava/lang/String;[Z)Lcom/autonavi/wh/navigation/server/GStatus;

    iget-object v7, p0, Lcom/autonavi/wh/navigation/engine/m;->b:Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;

    iget-object v7, v7, Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;->pTrackInfo:[Lcom/autonavi/wh/navigation/server/map/GTrackInfo;

    new-instance v8, Lcom/autonavi/wh/navigation/server/map/GTrackInfo;

    aget-boolean v9, v5, v1

    invoke-direct {v8, v0, v9, v6}, Lcom/autonavi/wh/navigation/server/map/GTrackInfo;-><init>(IZLjava/lang/String;)V

    aput-object v8, v7, v0

    iget-object v7, v4, Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;->pTrackInfo:[Lcom/autonavi/wh/navigation/server/map/GTrackInfo;

    new-instance v8, Lcom/autonavi/wh/navigation/server/map/GTrackInfo;

    aget-boolean v9, v5, v1

    invoke-direct {v8, v0, v9, v6}, Lcom/autonavi/wh/navigation/server/map/GTrackInfo;-><init>(IZLjava/lang/String;)V

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    aput-object v4, p1, v1

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0
.end method

.method b()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/m;->c:Lcom/autonavi/wh/navigation/engine/m$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/m$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    invoke-static {p1}, Lcom/autonavi/wh/navigation/engine/MidTrack;->b(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/g;->a()Lcom/autonavi/wh/navigation/engine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/wh/navigation/engine/g;->e()Lcom/autonavi/wh/navigation/server/GStatus;

    :cond_0
    return-object v0
.end method

.method public c()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/autonavi/wh/navigation/engine/MidTrack;->a([Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v2, Ljava/io/File;

    aget-object v1, v1, v0

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/engine/m;->g()Ljava/io/FilenameFilter;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v1, v2

    if-gtz v1, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    or-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 3

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/m;->d:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/wh/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/autonavi/wh/navigation/engine/MidTrack;->c(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/autonavi/wh/navigation/engine/m;->d:Z

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/g;->a()Lcom/autonavi/wh/navigation/engine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/wh/navigation/engine/g;->e()Lcom/autonavi/wh/navigation/server/GStatus;

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/m;->c:Lcom/autonavi/wh/navigation/engine/m$b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/navigation/engine/m$b;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public d()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/m;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NOT_START:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/m;->c:Lcom/autonavi/wh/navigation/engine/m$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/m$b;->removeMessages(I)V

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0
.end method

.method public e()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/m;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NOT_START:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/m;->c:Lcom/autonavi/wh/navigation/engine/m$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/m$b;->sendEmptyMessage(I)Z

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0
.end method

.method public f()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/m;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NOT_START:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/m;->c:Lcom/autonavi/wh/navigation/engine/m$b;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/m$b;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/autonavi/wh/navigation/engine/m;->d:Z

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidTrack;->b()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method
