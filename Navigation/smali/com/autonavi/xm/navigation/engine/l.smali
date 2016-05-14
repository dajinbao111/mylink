.class public Lcom/autonavi/xm/navigation/engine/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/a/b$a;


# static fields
.field private static a:Lcom/autonavi/xm/navigation/engine/l;


# instance fields
.field private b:Z

.field private c:J

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Lcom/autonavi/xm/a/b;

.field private j:Lcom/autonavi/xm/navigation/engine/l$c;

.field private k:Lcom/autonavi/xm/navigation/engine/l$b;

.field private l:Z

.field private m:Lcom/autonavi/xm/navigation/engine/l$a;


# direct methods
.method private constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/autonavi/xm/navigation/engine/l;->b:Z

    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/autonavi/xm/navigation/engine/l;->c:J

    iput v3, p0, Lcom/autonavi/xm/navigation/engine/l;->e:I

    iput-boolean v2, p0, Lcom/autonavi/xm/navigation/engine/l;->f:Z

    iput-boolean v2, p0, Lcom/autonavi/xm/navigation/engine/l;->g:Z

    iput v3, p0, Lcom/autonavi/xm/navigation/engine/l;->h:I

    iput-boolean v2, p0, Lcom/autonavi/xm/navigation/engine/l;->l:Z

    return-void
.end method

.method public static final declared-synchronized a()Lcom/autonavi/xm/navigation/engine/l;
    .locals 2

    const-class v1, Lcom/autonavi/xm/navigation/engine/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/l;->a:Lcom/autonavi/xm/navigation/engine/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/engine/l;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/engine/l;-><init>()V

    sput-object v0, Lcom/autonavi/xm/navigation/engine/l;->a:Lcom/autonavi/xm/navigation/engine/l;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/l;->a:Lcom/autonavi/xm/navigation/engine/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/autonavi/xm/navigation/engine/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/l;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xm/navigation/engine/l;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(J)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->j:Lcom/autonavi/xm/navigation/engine/l$c;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/l;->j:Lcom/autonavi/xm/navigation/engine/l$c;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navigation/engine/l$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/autonavi/xm/navigation/engine/l$c;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xm/navigation/engine/l;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/l;->b(J)V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xm/navigation/engine/l;Lcom/autonavi/xm/navigation/server/GStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/l;->c(Lcom/autonavi/xm/navigation/server/GStatus;)V

    return-void
.end method

.method private a(Lcom/autonavi/xm/navigation/server/GStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->j:Lcom/autonavi/xm/navigation/engine/l$c;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/xm/navigation/engine/l$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private a(Lcom/autonavi/xm/navigation/server/GStatus;Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->m:Lcom/autonavi/xm/navigation/engine/l$a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->m:Lcom/autonavi/xm/navigation/engine/l$a;

    invoke-interface {v0, p2}, Lcom/autonavi/xm/navigation/engine/l$a;->a(Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->m:Lcom/autonavi/xm/navigation/engine/l$a;

    invoke-interface {v0, p1}, Lcom/autonavi/xm/navigation/engine/l$a;->b(Lcom/autonavi/xm/navigation/server/GStatus;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/autonavi/xm/navigation/engine/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/l;->l:Z

    return v0
.end method

.method static synthetic a(Lcom/autonavi/xm/navigation/engine/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navigation/engine/l;->g:Z

    return p1
.end method

.method private b(J)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->j:Lcom/autonavi/xm/navigation/engine/l$c;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/l;->j:Lcom/autonavi/xm/navigation/engine/l$c;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navigation/engine/l$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/autonavi/xm/navigation/engine/l$c;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic b(Lcom/autonavi/xm/navigation/engine/l;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/l;->a(J)V

    return-void
.end method

.method private b(Lcom/autonavi/xm/navigation/server/GStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->j:Lcom/autonavi/xm/navigation/engine/l$c;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/xm/navigation/engine/l$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic b(Lcom/autonavi/xm/navigation/engine/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/l;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/autonavi/xm/navigation/engine/l;)Lcom/autonavi/xm/a/b;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->i:Lcom/autonavi/xm/a/b;

    return-object v0
.end method

.method private c(J)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->j:Lcom/autonavi/xm/navigation/engine/l$c;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/l;->j:Lcom/autonavi/xm/navigation/engine/l$c;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navigation/engine/l$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/autonavi/xm/navigation/engine/l$c;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private c(Lcom/autonavi/xm/navigation/server/GStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->j:Lcom/autonavi/xm/navigation/engine/l$c;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/xm/navigation/engine/l$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic d(Lcom/autonavi/xm/navigation/engine/l;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/l;->h:I

    return v0
.end method

.method private e()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/l;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidTmc;->a()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    new-array v1, v5, [I

    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/MidTmc;->a([I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v2, :cond_0

    aget v0, v1, v4

    if-lez v0, :cond_2

    aget v0, v1, v4

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/autonavi/xm/navigation/engine/l;->c:J

    :cond_2
    new-array v1, v5, [Ljava/lang/String;

    new-array v2, v5, [I

    invoke-static {v1, v2}, Lcom/autonavi/xm/navigation/engine/MidTmc;->a([Ljava/lang/String;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v3, :cond_0

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/autonavi/xm/navigation/engine/l;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/l;->d:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/autonavi/xm/navigation/engine/l;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xm/navigation/engine/l;->d:Ljava/lang/String;

    :cond_3
    aget v1, v2, v4

    iput v1, p0, Lcom/autonavi/xm/navigation/engine/l;->e:I

    iget v1, p0, Lcom/autonavi/xm/navigation/engine/l;->e:I

    if-gtz v1, :cond_4

    const/16 v1, 0x50

    iput v1, p0, Lcom/autonavi/xm/navigation/engine/l;->e:I

    :cond_4
    iput-boolean v5, p0, Lcom/autonavi/xm/navigation/engine/l;->b:Z

    goto :goto_0
.end method

.method static synthetic e(Lcom/autonavi/xm/navigation/engine/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/l;->g:Z

    return v0
.end method

.method private declared-synchronized f()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidMap;->c()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    const-string v2, "ET"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GDMID_TMC_Update: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/autonavi/xm/navigation/server/GStatus;->nativeValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    new-array v2, v0, [Z

    sget-object v0, Lcom/autonavi/xm/navigation/server/GParam;->G_GUIDE_STATUS:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-static {v0, v2}, Lcom/autonavi/xm/navigation/engine/MidConfigs;->a(Lcom/autonavi/xm/navigation/server/GParam;[Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    new-array v2, v0, [I

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v2}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a(J[I)Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v0, 0x1

    new-array v3, v0, [Z

    sget-object v0, Lcom/autonavi/xm/navigation/server/GParam;->G_ROUTE_TMC_RECALCULATE:Lcom/autonavi/xm/navigation/server/GParam;

    invoke-static {v0, v3}, Lcom/autonavi/xm/navigation/engine/MidConfigs;->a(Lcom/autonavi/xm/navigation/server/GParam;[Z)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v4, :cond_3

    const/4 v4, 0x0

    aget v2, v2, v4

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    const/4 v2, 0x0

    aget-boolean v2, v3, v2

    if-ne v2, v5, :cond_3

    const/4 v0, 0x7

    new-array v2, v0, [Lcom/autonavi/xm/navigation/server/poi/GPoi;

    invoke-static {v2}, Lcom/autonavi/xm/navigation/engine/MidGuide;->b([Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_2

    if-eqz v0, :cond_0

    aget-object v1, v2, v0

    if-eqz v1, :cond_1

    aget-object v1, v2, v0

    iget-byte v1, v1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Reserved:B

    if-ne v1, v5, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;->valueOf(I)Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a(Lcom/autonavi/xm/navigation/server/guide/GJourneyPointType;)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a()Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->n()V

    :cond_3
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/g;->a()Lcom/autonavi/xm/navigation/engine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/engine/g;->e()Lcom/autonavi/xm/navigation/server/GStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lcom/autonavi/xm/navigation/engine/l;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/l;->f()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/autonavi/xm/navigation/engine/l;)Lcom/autonavi/xm/navigation/engine/l$b;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->k:Lcom/autonavi/xm/navigation/engine/l$b;

    return-object v0
.end method

.method static synthetic h(Lcom/autonavi/xm/navigation/engine/l;)J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/xm/navigation/engine/l;->c:J

    return-wide v0
.end method


# virtual methods
.method public a(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p1, v0, v2

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/MidTmc;->b([I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    aget v0, v0, v2

    iput v0, p0, Lcom/autonavi/xm/navigation/engine/l;->h:I

    return-object v1
.end method

.method a(Landroid/os/Looper;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidTmc;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NOT_SUPPORT:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/xm/navigation/engine/l$c;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/xm/navigation/engine/l$c;-><init>(Lcom/autonavi/xm/navigation/engine/l;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->j:Lcom/autonavi/xm/navigation/engine/l$c;

    new-instance v0, Lcom/autonavi/xm/a/b;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/a/b;-><init>(Lcom/autonavi/xm/a/b$a;)V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->i:Lcom/autonavi/xm/a/b;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xm/navigation/engine/l$a;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/l;->m:Lcom/autonavi/xm/navigation/engine/l$a;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/navigation/engine/l$b;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/l;->k:Lcom/autonavi/xm/navigation/engine/l$b;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/autonavi/xm/navigation/engine/MidTmc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "TMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/l;->i:Lcom/autonavi/xm/a/b;

    const-string v2, "text/xml"

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/a/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/l;->i:Lcom/autonavi/xm/a/b;

    const-string v2, "http://114.247.50.27/License/outer/validHondaTmc.do"

    aget-object v0, v0, v4

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v0, v3}, Lcom/autonavi/xm/a/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a([[Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;[I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/MidTmc;->a([[Lcom/autonavi/xm/navigation/server/tmc/GEventInfo;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xm/a/b$b;I)V
    .locals 3

    const/4 v2, -0x3

    invoke-virtual {p1}, Lcom/autonavi/xm/a/b$b;->a()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    if-ne p2, v2, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NET_TIMEOUT:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/server/GStatus;Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;)V

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NET_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_2

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NET_TIMEOUT:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_2
    invoke-direct {p0, v0}, Lcom/autonavi/xm/navigation/engine/l;->c(Lcom/autonavi/xm/navigation/server/GStatus;)V

    const-wide/16 v0, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xm/navigation/engine/l;->c(J)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NET_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_2
.end method

.method public a(Lcom/autonavi/xm/a/b$b;Ljava/io/InputStream;)V
    .locals 5

    invoke-virtual {p1}, Lcom/autonavi/xm/a/b$b;->a()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/autonavi/xm/a/b$b;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    array-length v0, v1

    invoke-static {v1, v0}, Lcom/autonavi/xm/navigation/engine/MidTmc;->a([BI)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/server/GStatus;)V

    goto :goto_0

    :sswitch_1
    array-length v0, v1

    invoke-static {v1, v0}, Lcom/autonavi/xm/navigation/engine/MidTmc;->b([BI)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navigation/engine/l;->b(Lcom/autonavi/xm/navigation/server/GStatus;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "GBK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "TMC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tmc  ============="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;

    array-length v2, v1

    invoke-static {v1, v2, v0}, Lcom/autonavi/xm/navigation/engine/MidTmc;->a([BI[Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-direct {p0, v1, v0}, Lcom/autonavi/xm/navigation/engine/l;->a(Lcom/autonavi/xm/navigation/server/GStatus;Lcom/autonavi/xm/navigation/server/tmc/GTrafficAuthResponse;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Lcom/autonavi/xm/navigation/server/GStatus;[B)V
    .locals 4

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/l;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->k:Lcom/autonavi/xm/navigation/engine/l$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->k:Lcom/autonavi/xm/navigation/engine/l$b;

    invoke-interface {v0, p1}, Lcom/autonavi/xm/navigation/engine/l$b;->a(Lcom/autonavi/xm/navigation/server/GStatus;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navigation/engine/l;->a(I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    const-string v1, "ET"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GDBL_SelectCity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GStatus;->nativeValue:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Lcom/autonavi/xm/navigation/engine/MidTmc;->b([BI)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    const-string v1, "ET"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ParseDownloadedData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GStatus;->nativeValue:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/l;->f()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    const-string v1, "ET"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tmc_Update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GStatus;->nativeValue:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->k:Lcom/autonavi/xm/navigation/engine/l$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->k:Lcom/autonavi/xm/navigation/engine/l$b;

    invoke-interface {v0}, Lcom/autonavi/xm/navigation/engine/l$b;->B()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->k:Lcom/autonavi/xm/navigation/engine/l$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->k:Lcom/autonavi/xm/navigation/engine/l$b;

    invoke-interface {v0, p1}, Lcom/autonavi/xm/navigation/engine/l$b;->a(Lcom/autonavi/xm/navigation/server/GStatus;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navigation/engine/l;->l:Z

    return-void
.end method

.method b()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidTmc;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NOT_SUPPORT:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->j:Lcom/autonavi/xm/navigation/engine/l$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/l$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidTmc;->c()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/l;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidTmc;->b()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_1
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method c()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/l;->l:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/l;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navigation/engine/l;->c(Lcom/autonavi/xm/navigation/server/GStatus;)V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/l;->b:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/l;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/autonavi/xm/navigation/engine/l;->c(Lcom/autonavi/xm/navigation/server/GStatus;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->i:Lcom/autonavi/xm/a/b;

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/a/b;->a(Lcom/autonavi/xm/a/b$a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/l;->f:Z

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xm/navigation/engine/l;->c(J)V

    :cond_2
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method d()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/l;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NOT_START:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->i:Lcom/autonavi/xm/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/a/b;->a(Lcom/autonavi/xm/a/b$a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/l;->f:Z

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->j:Lcom/autonavi/xm/navigation/engine/l$c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/l$c;->removeMessages(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->j:Lcom/autonavi/xm/navigation/engine/l$c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/l$c;->removeMessages(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/l;->j:Lcom/autonavi/xm/navigation/engine/l$c;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/l$c;->removeMessages(I)V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidTmc;->c()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method
