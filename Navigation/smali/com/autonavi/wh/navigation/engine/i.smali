.class public Lcom/autonavi/wh/navigation/engine/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/wh/a/b$a;


# static fields
.field private static a:Lcom/autonavi/wh/navigation/engine/i;

.field private static final f:[Ljava/lang/String;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Lcom/autonavi/wh/a/b;

.field private d:Z

.field private e:I

.field private g:Lcom/autonavi/wh/navigation/engine/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NaviEngine60"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "GNaviMid-POI"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "navi_mid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/wh/navigation/engine/i;->f:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/i;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/wh/navigation/engine/i;->e:I

    return-void
.end method

.method static synthetic a(Lcom/autonavi/wh/navigation/engine/i;)Lcom/autonavi/wh/navigation/engine/i$a;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/i;->g:Lcom/autonavi/wh/navigation/engine/i$a;

    return-object v0
.end method

.method public static final declared-synchronized a()Lcom/autonavi/wh/navigation/engine/i;
    .locals 2

    const-class v1, Lcom/autonavi/wh/navigation/engine/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/wh/navigation/engine/i;->a:Lcom/autonavi/wh/navigation/engine/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navigation/engine/i;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/engine/i;-><init>()V

    sput-object v0, Lcom/autonavi/wh/navigation/engine/i;->a:Lcom/autonavi/wh/navigation/engine/i;

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/engine/i;->a:Lcom/autonavi/wh/navigation/engine/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ILcom/autonavi/wh/navigation/server/GStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/i;->b:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/wh/navigation/engine/i$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/autonavi/wh/navigation/engine/i$3;-><init>(Lcom/autonavi/wh/navigation/engine/i;ILcom/autonavi/wh/navigation/server/GStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/autonavi/wh/navigation/engine/i;ILcom/autonavi/wh/navigation/server/GStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/wh/navigation/engine/i;->a(ILcom/autonavi/wh/navigation/server/GStatus;)V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/wh/navigation/engine/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/wh/navigation/engine/i;->d:Z

    return p1
.end method


# virtual methods
.method public a(I[Lcom/autonavi/wh/navigation/server/poi/GAdareaInfoEx;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidPoi;->a(I[Lcom/autonavi/wh/navigation/server/poi/GAdareaInfoEx;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(I[Lcom/autonavi/wh/navigation/server/poi/GAdareaList;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidPoi;->a(I[Lcom/autonavi/wh/navigation/server/poi/GAdareaList;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(I[Lcom/autonavi/wh/navigation/server/poi/GAdareaList;Lcom/autonavi/wh/navigation/server/poi/GAdareaType;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/autonavi/wh/navigation/engine/MidPoi;->a(I[Lcom/autonavi/wh/navigation/server/poi/GAdareaList;Lcom/autonavi/wh/navigation/server/poi/GAdareaType;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(I[Lcom/autonavi/wh/navigation/server/poi/GPoiCategoryList;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidPoi;->a(I[Lcom/autonavi/wh/navigation/server/poi/GPoiCategoryList;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/os/Looper;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/wh/navigation/engine/i;->b:Landroid/os/Handler;

    new-instance v0, Lcom/autonavi/wh/a/b;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/a/b;-><init>(Lcom/autonavi/wh/a/b$a;)V

    iput-object v0, p0, Lcom/autonavi/wh/navigation/engine/i;->c:Lcom/autonavi/wh/a/b;

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/engine/i$a;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    iput-object p1, p0, Lcom/autonavi/wh/navigation/engine/i;->g:Lcom/autonavi/wh/navigation/engine/i$a;

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/GCoord;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/i;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iput-boolean v1, p0, Lcom/autonavi/wh/navigation/engine/i;->d:Z

    iput v1, p0, Lcom/autonavi/wh/navigation/engine/i;->e:I

    new-instance v0, Lcom/autonavi/wh/navigation/engine/i$2;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/wh/navigation/engine/i$2;-><init>(Lcom/autonavi/wh/navigation/engine/i;Lcom/autonavi/wh/navigation/server/GCoord;)V

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/i$2;->start()V

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;[[Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidPoi;->a(Lcom/autonavi/wh/navigation/server/poi/G4SSearchCondition;[[Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/poi/GAdareaType;I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidPoi;->a(Lcom/autonavi/wh/navigation/server/poi/GAdareaType;I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/poi/GCandidateCondition;[Lcom/autonavi/wh/navigation/server/poi/GCandidateList;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidPoi;->a(Lcom/autonavi/wh/navigation/server/poi/GCandidateCondition;[Lcom/autonavi/wh/navigation/server/poi/GCandidateList;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/poi/GCoordTel;[I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidPoi;->a(Lcom/autonavi/wh/navigation/server/poi/GCoordTel;[I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/poi/GGetPoiInput;[Lcom/autonavi/wh/navigation/server/poi/GPoiResult;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidPoi;->a(Lcom/autonavi/wh/navigation/server/poi/GGetPoiInput;[Lcom/autonavi/wh/navigation/server/poi/GPoiResult;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/i;->d:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/i;->d:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/wh/navigation/engine/i;->e:I

    invoke-static {p1}, Lcom/autonavi/wh/navigation/engine/MidPoi;->a(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v0, Lcom/autonavi/wh/navigation/engine/i$1;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/wh/navigation/engine/i$1;-><init>(Lcom/autonavi/wh/navigation/engine/i;Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)V

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/i$1;->start()V

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;[Lcom/autonavi/wh/navigation/server/poi/GAdareaInfoList;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidPoi;->a(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;[Lcom/autonavi/wh/navigation/server/poi/GAdareaInfoList;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/wh/navigation/engine/MidPoi;->a([I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/wh/navigation/server/GVersion;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/wh/navigation/engine/MidPoi;->a([Lcom/autonavi/wh/navigation/server/GVersion;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/wh/navigation/server/poi/GDisplayPoiPriority;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/wh/navigation/engine/MidPoi;->a([Lcom/autonavi/wh/navigation/server/poi/GDisplayPoiPriority;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/wh/navigation/server/poi/GPoi;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/wh/navigation/engine/MidPoi;->a([Lcom/autonavi/wh/navigation/server/poi/GPoi;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/a/b$b;I)V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_TIMEOUT:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/autonavi/wh/navigation/engine/i;->a(ILcom/autonavi/wh/navigation/server/GStatus;)V

    return-void

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NET_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0
.end method

.method public a(Lcom/autonavi/wh/a/b$b;Ljava/io/InputStream;)V
    .locals 2

    invoke-virtual {p1, p2}, Lcom/autonavi/wh/a/b$b;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/autonavi/wh/navigation/engine/MidPoi;->a([BI)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/autonavi/wh/navigation/engine/i;->a(ILcom/autonavi/wh/navigation/server/GStatus;)V

    goto :goto_0
.end method

.method b()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/i;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method public b(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 4

    if-nez p1, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/i;->d:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/i;->d:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/autonavi/wh/navigation/engine/i;->e:I

    invoke-static {p1}, Lcom/autonavi/wh/navigation/engine/MidPoi;->c(Lcom/autonavi/wh/navigation/server/poi/GSearchCondition;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/i;->c:Lcom/autonavi/wh/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://telematics.autonavi.com:80"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/wh/a/b;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0
.end method

.method public c()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    iget v0, p0, Lcom/autonavi/wh/navigation/engine/i;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :cond_0
    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidPoi;->a()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/autonavi/wh/navigation/engine/i;->d:Z

    return-object v0
.end method
