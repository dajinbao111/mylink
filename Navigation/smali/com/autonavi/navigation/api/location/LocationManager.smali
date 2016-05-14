.class public final Lcom/autonavi/navigation/api/location/LocationManager;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/autonavi/navigation/api/location/a/c;

.field private b:Landroid/location/LocationManager;

.field private c:I

.field private final d:Landroid/location/GpsStatus$NmeaListener;

.field private e:Lcom/autonavi/navigation/api/location/LocationManager$a;

.field private final f:Landroid/content/Context;

.field private g:Z

.field private h:Ljava/io/OutputStream;

.field private final i:Landroid/location/LocationListener;

.field private final j:Landroid/location/GpsStatus$Listener;

.field private k:Z

.field private final l:Ljava/util/List;

.field private final m:Ljava/util/List;

.field private final n:Ljava/util/List;

.field private o:Landroid/location/GpsStatus;

.field private p:I

.field private q:J

.field private r:Landroid/location/Location;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/autonavi/navigation/api/location/LocationManager$1;

    invoke-direct {v0, p0}, Lcom/autonavi/navigation/api/location/LocationManager$1;-><init>(Lcom/autonavi/navigation/api/location/LocationManager;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->d:Landroid/location/GpsStatus$NmeaListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->g:Z

    new-instance v0, Lcom/autonavi/navigation/api/location/LocationManager$2;

    invoke-direct {v0, p0}, Lcom/autonavi/navigation/api/location/LocationManager$2;-><init>(Lcom/autonavi/navigation/api/location/LocationManager;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->i:Landroid/location/LocationListener;

    new-instance v0, Lcom/autonavi/navigation/api/location/LocationManager$3;

    invoke-direct {v0, p0}, Lcom/autonavi/navigation/api/location/LocationManager$3;-><init>(Lcom/autonavi/navigation/api/location/LocationManager;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->j:Landroid/location/GpsStatus$Listener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->l:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->m:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->n:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->f:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/navigation/api/location/LocationManager;)Lcom/autonavi/navigation/api/location/a/c;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->a:Lcom/autonavi/navigation/api/location/a/c;

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/navigation/api/location/LocationManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->k:Z

    return v0
.end method

.method static synthetic access$200(Lcom/autonavi/navigation/api/location/LocationManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/location/LocationManager;->doSetLocationStatus(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/autonavi/navigation/api/location/LocationManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/location/LocationManager;->setSensorAccuracy(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/autonavi/navigation/api/location/LocationManager;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/location/LocationManager;->setLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$500(Lcom/autonavi/navigation/api/location/LocationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/location/LocationManager;->refreshGpsStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/autonavi/navigation/api/location/LocationManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/location/LocationManager;->setLocationStatus(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/autonavi/navigation/api/location/LocationManager;)Lcom/autonavi/navigation/api/location/LocationManager$a;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->e:Lcom/autonavi/navigation/api/location/LocationManager$a;

    return-object v0
.end method

.method static synthetic access$802(Lcom/autonavi/navigation/api/location/LocationManager;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/location/LocationManager;->p:I

    return p1
.end method

.method private doSetLocationStatus(I)V
    .locals 4

    iget v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->c:I

    if-ne v0, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcom/autonavi/navigation/api/location/LocationManager;->c:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/autonavi/navigation/api/location/LocationManager;->saveCurLocation()V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/location/LocationManager$LocationCallback;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/location/LocationManager$LocationCallback;->onLocationStatusChanged(I)V

    goto :goto_1

    :pswitch_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->q:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->r:Landroid/location/Location;

    iget-wide v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->q:J

    invoke-direct {p0, v0, v1}, Lcom/autonavi/navigation/api/location/LocationManager;->notifyGpsTimeChanged(J)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->a:Lcom/autonavi/navigation/api/location/a/c;

    iget-object v1, p0, Lcom/autonavi/navigation/api/location/LocationManager;->r:Landroid/location/Location;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/location/a/c;->a(Landroid/location/Location;J)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCurrentSatellitesCount()I
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->o:Landroid/location/GpsStatus;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->b:Landroid/location/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->o:Landroid/location/GpsStatus;

    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/navigation/api/location/LocationManager;->o:Landroid/location/GpsStatus;

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/autonavi/navigation/api/location/LocationManager;->o:Landroid/location/GpsStatus;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isTraceLogEnabled()Z
    .locals 3

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getSettings()Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v0

    const-string v1, "trace_log_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private notifyGpsStatusChanged(ILandroid/location/GpsStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/location/LocationManager$GpsStatusCallback;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/location/LocationManager$GpsStatusCallback;->onGpsStatusChanged(ILandroid/location/GpsStatus;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyGpsTimeChanged(J)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/location/LocationManager$GpsTimeCallback;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/location/LocationManager$GpsTimeCallback;->onGpsTimeChanged(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyLocationChanged(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/location/LocationManager$LocationCallback;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/location/LocationManager$LocationCallback;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private refreshGpsStatus()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->o:Landroid/location/GpsStatus;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->b:Landroid/location/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->o:Landroid/location/GpsStatus;

    :goto_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->o:Landroid/location/GpsStatus;

    iget v1, p0, Lcom/autonavi/navigation/api/location/LocationManager;->p:I

    invoke-direct {p0, v1, v0}, Lcom/autonavi/navigation/api/location/LocationManager;->notifyGpsStatusChanged(ILandroid/location/GpsStatus;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/autonavi/navigation/api/location/LocationManager;->o:Landroid/location/GpsStatus;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/autonavi/navigation/api/location/LocationManager;->k:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->q:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->r:Landroid/location/Location;

    iput v2, p0, Lcom/autonavi/navigation/api/location/LocationManager;->c:I

    return-void
.end method

.method private saveCurLocation()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->a:Lcom/autonavi/navigation/api/location/a/c;

    iget-object v1, p0, Lcom/autonavi/navigation/api/location/LocationManager;->r:Landroid/location/Location;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/location/a/c;->a(Landroid/location/Location;J)Z

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getSettingsDelegate()Lcom/autonavi/navigation/api/settings/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/settings/a/b;->e()Z

    return-void
.end method

.method private setLocation(Landroid/location/Location;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->e:Lcom/autonavi/navigation/api/location/LocationManager$a;

    invoke-virtual {v0, v6}, Lcom/autonavi/navigation/api/location/LocationManager$a;->removeMessages(I)V

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/autonavi/navigation/api/location/LocationManager;->traceLog(JLandroid/location/Location;)V

    iput-object p1, p0, Lcom/autonavi/navigation/api/location/LocationManager;->r:Landroid/location/Location;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "satellites"

    invoke-direct {p0}, Lcom/autonavi/navigation/api/location/LocationManager;->getCurrentSatellitesCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "status"

    iget v2, p0, Lcom/autonavi/navigation/api/location/LocationManager;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/autonavi/navigation/api/location/LocationManager;->r:Landroid/location/Location;

    invoke-virtual {v1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->a:Lcom/autonavi/navigation/api/location/a/c;

    iget-object v1, p0, Lcom/autonavi/navigation/api/location/LocationManager;->r:Landroid/location/Location;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/autonavi/navigation/api/location/a/c;->a(Landroid/location/Location;J)Z

    iget v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->c:I

    if-eq v0, v4, :cond_0

    invoke-direct {p0, v4}, Lcom/autonavi/navigation/api/location/LocationManager;->setLocationStatus(I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/location/LocationManager;->notifyLocationChanged(Landroid/location/Location;)V

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/autonavi/navigation/api/location/LocationManager;->q:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/autonavi/navigation/api/location/LocationManager;->notifyGpsTimeChanged(J)V

    iput-wide v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->q:J

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->e:Lcom/autonavi/navigation/api/location/LocationManager$a;

    const-wide/16 v1, 0x1f40

    invoke-virtual {v0, v6, v1, v2}, Lcom/autonavi/navigation/api/location/LocationManager$a;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private setLocationStatus(I)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->e:Lcom/autonavi/navigation/api/location/LocationManager$a;

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/location/LocationManager$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setSensorAccuracy(I)V
    .locals 0

    return-void
.end method

.method private traceLog(JLandroid/location/Location;)V
    .locals 5

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->g:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->h:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/AnApi;->getDataSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/traces/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd_HH-mm-ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trace_loc_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".log"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/autonavi/navigation/api/internal/a/a/d;->b(Ljava/io/File;)Z

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->h:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->h:Ljava/io/OutputStream;

    const-string v1, "#v2"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_2
    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "gps,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/location/Location;->getSpeed()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/location/Location;->getBearing()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/autonavi/navigation/api/location/LocationManager;->h:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->h:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->h:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->h:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->h:Ljava/io/OutputStream;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getLocationStatus()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->c:I

    return v0
.end method

.method public notifyAccuracyChanged(I)Z
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->e:Lcom/autonavi/navigation/api/location/LocationManager$a;

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/location/LocationManager$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    return v0
.end method

.method public putGyroData(I[IJ)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->e:Lcom/autonavi/navigation/api/location/LocationManager$a;

    const/4 v1, 0x7

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p2, v2, v5

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/location/LocationManager$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return v5
.end method

.method public putPulseData(IIJ)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->e:Lcom/autonavi/navigation/api/location/LocationManager$a;

    const/16 v1, 0x8

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/location/LocationManager$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return v5
.end method

.method public removeGpsStatusUpdates(Lcom/autonavi/navigation/api/location/LocationManager$GpsStatusCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeGpsTimeUpdates(Lcom/autonavi/navigation/api/location/LocationManager$GpsTimeCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeLocationUpdates(Lcom/autonavi/navigation/api/location/LocationManager$LocationCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestGpsStatusUpdates(Lcom/autonavi/navigation/api/location/LocationManager$GpsStatusCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->p:I

    iget-object v1, p0, Lcom/autonavi/navigation/api/location/LocationManager;->o:Landroid/location/GpsStatus;

    invoke-interface {p1, v0, v1}, Lcom/autonavi/navigation/api/location/LocationManager$GpsStatusCallback;->onGpsStatusChanged(ILandroid/location/GpsStatus;)V

    :cond_0
    return-void
.end method

.method public requestGpsTimeUpdates(Lcom/autonavi/navigation/api/location/LocationManager$GpsTimeCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->q:J

    invoke-interface {p1, v0, v1}, Lcom/autonavi/navigation/api/location/LocationManager$GpsTimeCallback;->onGpsTimeChanged(J)V

    :cond_0
    return-void
.end method

.method public requestLocationUpdates(Lcom/autonavi/navigation/api/location/LocationManager$LocationCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->c:I

    invoke-interface {p1, v0}, Lcom/autonavi/navigation/api/location/LocationManager$LocationCallback;->onLocationStatusChanged(I)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->r:Landroid/location/Location;

    invoke-interface {p1, v0}, Lcom/autonavi/navigation/api/location/LocationManager$LocationCallback;->onLocationChanged(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public setLocationOffset(Lcom/autonavi/navigation/api/map/model/LatLng;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->a:Lcom/autonavi/navigation/api/location/a/c;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/location/a/c;->a(Lcom/autonavi/navigation/api/map/model/LatLng;)V

    return-void
.end method

.method start()V
    .locals 7

    invoke-direct {p0}, Lcom/autonavi/navigation/api/location/LocationManager;->reset()V

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getLocationManagerDelegate()Lcom/autonavi/navigation/api/location/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->a:Lcom/autonavi/navigation/api/location/a/c;

    invoke-direct {p0}, Lcom/autonavi/navigation/api/location/LocationManager;->isTraceLogEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->g:Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->a:Lcom/autonavi/navigation/api/location/a/c;

    iget-boolean v1, p0, Lcom/autonavi/navigation/api/location/LocationManager;->g:Z

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/location/a/c;->a(Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->f:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->b:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/autonavi/navigation/api/location/LocationManager;->i:Landroid/location/LocationListener;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/autonavi/navigation/api/location/LocationManager;->d:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/autonavi/navigation/api/location/LocationManager;->j:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    new-instance v0, Lcom/autonavi/navigation/api/location/LocationManager$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/navigation/api/location/LocationManager$a;-><init>(Lcom/autonavi/navigation/api/location/LocationManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->e:Lcom/autonavi/navigation/api/location/LocationManager$a;

    return-void
.end method

.method stop()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->h:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->h:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->h:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->k:Z

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/autonavi/navigation/api/location/LocationManager;->i:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/autonavi/navigation/api/location/LocationManager;->j:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/autonavi/navigation/api/location/LocationManager;->d:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
