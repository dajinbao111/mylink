.class public Lcom/autonavi/wh/navigation/engine/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/autonavi/wh/navigation/engine/e;

.field private static i:Z


# instance fields
.field private b:Z

.field private c:Lcom/autonavi/wh/navigation/engine/e$a;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Z

.field private final j:Ljava/nio/ByteBuffer;

.field private k:Ljava/io/OutputStream;

.field private l:[B

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/autonavi/wh/navigation/engine/e;->i:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/autonavi/wh/navigation/engine/e;->b:Z

    iput-boolean v1, p0, Lcom/autonavi/wh/navigation/engine/e;->d:Z

    iput-boolean v1, p0, Lcom/autonavi/wh/navigation/engine/e;->e:Z

    iput v1, p0, Lcom/autonavi/wh/navigation/engine/e;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/e;->g:Z

    iput-boolean v1, p0, Lcom/autonavi/wh/navigation/engine/e;->h:Z

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/engine/e;->j:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/wh/navigation/engine/e;->m:J

    return-void
.end method

.method public static final declared-synchronized a()Lcom/autonavi/wh/navigation/engine/e;
    .locals 2

    const-class v1, Lcom/autonavi/wh/navigation/engine/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/wh/navigation/engine/e;->a:Lcom/autonavi/wh/navigation/engine/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navigation/engine/e;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/engine/e;-><init>()V

    sput-object v0, Lcom/autonavi/wh/navigation/engine/e;->a:Lcom/autonavi/wh/navigation/engine/e;

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/engine/e;->a:Lcom/autonavi/wh/navigation/engine/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/autonavi/wh/navigation/engine/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/engine/e;->e()V

    return-void
.end method

.method static synthetic b(Lcom/autonavi/wh/navigation/engine/e;)Lcom/autonavi/wh/navigation/engine/e$a;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/e;->c:Lcom/autonavi/wh/navigation/engine/e$a;

    return-object v0
.end method

.method private d()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/e;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/autonavi/wh/navigation/engine/e;->d:Z

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/e;->c:Lcom/autonavi/wh/navigation/engine/e$a;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/e$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/e;->c:Lcom/autonavi/wh/navigation/engine/e$a;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/e$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/e;->g:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/e;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidLocation;->b()Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/autonavi/wh/navigation/engine/MidMap;->e(J)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/autonavi/wh/navigation/engine/e;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/autonavi/wh/navigation/engine/e;->f:I

    const/16 v1, 0xf0

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/e;->e:Z

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/autonavi/wh/navigation/engine/e;->f:I

    iput-boolean v2, p0, Lcom/autonavi/wh/navigation/engine/e;->e:Z

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/engine/e;->f()V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidGuide;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/autonavi/wh/navigation/engine/e;->i:Z

    if-nez v0, :cond_3

    sput-boolean v3, Lcom/autonavi/wh/navigation/engine/e;->i:Z

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a()Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->m()V

    :cond_3
    :goto_2
    invoke-static {}, Lcom/autonavi/wh/navigation/engine/g;->a()Lcom/autonavi/wh/navigation/engine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/g;->e()Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :cond_4
    iput v2, p0, Lcom/autonavi/wh/navigation/engine/e;->f:I

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/e;->e:Z

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/autonavi/wh/navigation/engine/e;->e:Z

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/engine/e;->d()V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a()Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->p()V

    goto :goto_2
.end method

.method private f()V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/e;->d:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/e;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/e;->d:Z

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/e;->c:Lcom/autonavi/wh/navigation/engine/e$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/e$a;->removeMessages(I)V

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/app/Application;Landroid/os/Looper;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/e;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/autonavi/wh/navigation/engine/e$a;

    invoke-direct {v0, p0, p2}, Lcom/autonavi/wh/navigation/engine/e$a;-><init>(Lcom/autonavi/wh/navigation/engine/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/wh/navigation/engine/e;->c:Lcom/autonavi/wh/navigation/engine/e$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/e;->b:Z

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/location/GECompassData;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 3

    invoke-static {p1}, Lcom/autonavi/wh/navigation/engine/MidLocation;->a(Lcom/autonavi/wh/navigation/server/location/GECompassData;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/wh/navigation/engine/e;->a(J)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 4

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/autonavi/wh/navigation/server/location/GGpsPos;

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    :goto_0
    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/e;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    check-cast p1, Lcom/autonavi/wh/a/c;

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/e;->j:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1}, Lcom/autonavi/wh/a/c;->writeToBuffer(Ljava/nio/ByteBuffer;)V

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/e;->j:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/autonavi/wh/navigation/engine/e;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/wh/navigation/engine/MidLocation;->a(ILjava/nio/ByteBuffer;I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/autonavi/wh/navigation/server/location/GGpsAzi;

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/autonavi/wh/navigation/server/location/GGpsSpd;

    if-eqz v0, :cond_2

    const/16 v0, 0x13

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/autonavi/wh/navigation/server/location/GGpsSataNum;

    if-eqz v0, :cond_3

    const/16 v0, 0x14

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/autonavi/wh/navigation/server/location/GGpsAlt;

    if-eqz v0, :cond_4

    const/16 v0, 0x15

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/autonavi/wh/navigation/server/location/GGpsDate;

    if-eqz v0, :cond_5

    const/16 v0, 0x16

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/autonavi/wh/navigation/server/location/GGpsTime;

    if-eqz v0, :cond_6

    const/16 v0, 0x17

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/autonavi/wh/navigation/server/location/GGpsMistake;

    if-eqz v0, :cond_7

    const/16 v0, 0x19

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/autonavi/wh/navigation/server/location/GGpsStatus;

    if-eqz v0, :cond_9

    const/16 v1, 0x1b

    move-object v0, p1

    check-cast v0, Lcom/autonavi/wh/navigation/server/location/GGpsStatus;

    iget-byte v0, v0, Lcom/autonavi/wh/navigation/server/location/GGpsStatus;->cStatus:B

    const/16 v3, 0x41

    if-ne v0, v3, :cond_8

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/engine/e;->d()V

    :goto_1
    invoke-static {}, Lcom/autonavi/wh/navigation/engine/g;->a()Lcom/autonavi/wh/navigation/engine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/g;->e()Lcom/autonavi/wh/navigation/server/GStatus;

    move v0, v1

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/autonavi/wh/navigation/engine/e;->f()V

    goto :goto_1

    :cond_9
    instance-of v0, p1, Lcom/autonavi/wh/navigation/server/location/GECompassData;

    if-eqz v0, :cond_a

    const/16 v0, 0x1d

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/engine/e;->d()V

    goto :goto_0

    :cond_a
    instance-of v0, p1, Lcom/autonavi/wh/navigation/server/location/GGyroData;

    if-eqz v0, :cond_b

    const/16 v0, 0x100

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/engine/e;->d()V

    goto :goto_0

    :cond_b
    instance-of v0, p1, Lcom/autonavi/wh/navigation/server/location/GPulseData;

    if-eqz v0, :cond_c

    const/16 v0, 0x200

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/engine/e;->d()V

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto/16 :goto_0
.end method

.method public a(J)V
    .locals 6

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/e;->h:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/autonavi/wh/navigation/engine/e;->m:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iput-wide v0, p0, Lcom/autonavi/wh/navigation/engine/e;->m:J

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/e;->k:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/f;->a()Lcom/autonavi/wh/navigation/engine/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/f;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd_HH-mm-ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_4

    :goto_1
    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GNaviLoc_"

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

    invoke-static {v2}, Lcom/autonavi/wh/a/a;->a(Ljava/io/File;)Z

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/autonavi/wh/navigation/engine/e;->k:Ljava/io/OutputStream;

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/autonavi/wh/navigation/engine/e;->l:[B

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/e;->l:[B

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/e;->l:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/autonavi/wh/navigation/engine/MidLocation;->a([BI)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/e;->k:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/autonavi/wh/navigation/engine/e;->l:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/e;->k:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/e;->k:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/engine/e;->k:Ljava/io/OutputStream;

    goto/16 :goto_0

    :cond_4
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide p1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/wh/navigation/engine/e;->h:Z

    return-void
.end method

.method b()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/e;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_NOT_START:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidLocation;->a()Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/autonavi/wh/navigation/engine/MidMap;->e(J)Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/g;->a()Lcom/autonavi/wh/navigation/engine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/g;->e()Lcom/autonavi/wh/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/e;->c:Lcom/autonavi/wh/navigation/engine/e$a;

    invoke-virtual {v0, v2}, Lcom/autonavi/wh/navigation/engine/e$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-class v1, Lcom/autonavi/wh/navigation/engine/e;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/autonavi/wh/navigation/engine/e;->a:Lcom/autonavi/wh/navigation/engine/e;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/e;->b:Z

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Z)V
    .locals 0

    sput-boolean p1, Lcom/autonavi/wh/navigation/engine/e;->i:Z

    return-void
.end method

.method c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/wh/navigation/engine/e;->g:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/e;->h:Z

    return v0
.end method
