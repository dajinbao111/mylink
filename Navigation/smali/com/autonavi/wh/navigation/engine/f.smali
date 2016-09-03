.class public Lcom/autonavi/wh/navigation/engine/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/autonavi/wh/tts/b$c;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/autonavi/wh/navigation/engine/f;


# instance fields
.field private c:Landroid/app/Application;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/autonavi/wh/tts/b;

.field private g:Landroid/os/Handler;

.field private final h:Lcom/autonavi/wh/navigation/server/guide/GSoundCallback;

.field private i:J

.field private j:Lcom/autonavi/wh/navigation/engine/f$a;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/autonavidata/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/wh/navigation/engine/f;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/autonavi/wh/navigation/engine/f$1;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navigation/engine/f$1;-><init>(Lcom/autonavi/wh/navigation/engine/f;)V

    iput-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->h:Lcom/autonavi/wh/navigation/server/guide/GSoundCallback;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/wh/navigation/engine/f;->i:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/f;->k:Z

    return-void
.end method

.method public static final declared-synchronized a()Lcom/autonavi/wh/navigation/engine/f;
    .locals 2

    const-class v1, Lcom/autonavi/wh/navigation/engine/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/wh/navigation/engine/f;->b:Lcom/autonavi/wh/navigation/engine/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navigation/engine/f;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/engine/f;-><init>()V

    sput-object v0, Lcom/autonavi/wh/navigation/engine/f;->b:Lcom/autonavi/wh/navigation/engine/f;

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/engine/f;->b:Lcom/autonavi/wh/navigation/engine/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d(I)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->f:Lcom/autonavi/wh/tts/b;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/autonavi/wh/tts/c;->c:Lcom/autonavi/wh/tts/c;

    sparse-switch p1, :sswitch_data_0

    sget-object v0, Lcom/autonavi/wh/tts/c;->c:Lcom/autonavi/wh/tts/c;

    :goto_1
    :sswitch_0
    sget-object v1, Lcom/autonavi/wh/tts/a;->b:Lcom/autonavi/wh/tts/a;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/tts/c;->a(Lcom/autonavi/wh/tts/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/autonavi/wh/tts/a;->c:Lcom/autonavi/wh/tts/a;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/tts/c;->a(Lcom/autonavi/wh/tts/a;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/f;->f:Lcom/autonavi/wh/tts/b;

    sget-object v2, Lcom/autonavi/wh/tts/c;->v:Lcom/autonavi/wh/tts/c;

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/tts/b;->c(Lcom/autonavi/wh/tts/c;)V

    :cond_1
    sget-object v1, Lcom/autonavi/wh/tts/a;->c:Lcom/autonavi/wh/tts/a;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/tts/c;->a(Lcom/autonavi/wh/tts/a;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/autonavi/wh/tts/a;->b:Lcom/autonavi/wh/tts/a;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/tts/c;->a(Lcom/autonavi/wh/tts/a;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/f;->f:Lcom/autonavi/wh/tts/b;

    sget-object v2, Lcom/autonavi/wh/tts/c;->c:Lcom/autonavi/wh/tts/c;

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/tts/b;->b(Lcom/autonavi/wh/tts/c;)V

    :cond_2
    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/f;->f:Lcom/autonavi/wh/tts/b;

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/tts/b;->a(Lcom/autonavi/wh/tts/c;)V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/autonavi/wh/tts/c;->e:Lcom/autonavi/wh/tts/c;

    goto :goto_1

    :sswitch_2
    sget-object v0, Lcom/autonavi/wh/tts/c;->c:Lcom/autonavi/wh/tts/c;

    goto :goto_1

    :sswitch_3
    sget-object v0, Lcom/autonavi/wh/tts/c;->q:Lcom/autonavi/wh/tts/c;

    goto :goto_1

    :sswitch_4
    sget-object v0, Lcom/autonavi/wh/tts/c;->m:Lcom/autonavi/wh/tts/c;

    goto :goto_1

    :sswitch_5
    sget-object v0, Lcom/autonavi/wh/tts/c;->p:Lcom/autonavi/wh/tts/c;

    goto :goto_1

    :sswitch_6
    sget-object v0, Lcom/autonavi/wh/tts/c;->x:Lcom/autonavi/wh/tts/c;

    goto :goto_1

    :sswitch_7
    sget-object v0, Lcom/autonavi/wh/tts/c;->s:Lcom/autonavi/wh/tts/c;

    goto :goto_1

    :sswitch_8
    sget-object v0, Lcom/autonavi/wh/tts/c;->v:Lcom/autonavi/wh/tts/c;

    goto :goto_1

    :sswitch_9
    sget-object v0, Lcom/autonavi/wh/tts/c;->z:Lcom/autonavi/wh/tts/c;

    goto :goto_1

    :sswitch_a
    sget-object v0, Lcom/autonavi/wh/tts/c;->A:Lcom/autonavi/wh/tts/c;

    goto :goto_1

    :sswitch_b
    sget-object v0, Lcom/autonavi/wh/tts/c;->I:Lcom/autonavi/wh/tts/c;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_3
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_0
        0x7 -> :sswitch_5
        0x8 -> :sswitch_0
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0xc -> :sswitch_0
        0xd -> :sswitch_9
        0xe -> :sswitch_a
        0x63 -> :sswitch_b
    .end sparse-switch
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->j:Lcom/autonavi/wh/navigation/engine/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->j:Lcom/autonavi/wh/navigation/engine/f$a;

    invoke-interface {v0}, Lcom/autonavi/wh/navigation/engine/f$a;->e()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->j:Lcom/autonavi/wh/navigation/engine/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->j:Lcom/autonavi/wh/navigation/engine/f$a;

    invoke-interface {v0}, Lcom/autonavi/wh/navigation/engine/f$a;->f()V

    :cond_0
    return-void
.end method

.method private g()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 3

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/e;->a()Lcom/autonavi/wh/navigation/engine/e;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/f;->c:Landroid/app/Application;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/f;->i()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navigation/engine/e;->a(Landroid/app/Application;Landroid/os/Looper;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/f;->k:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/engine/f;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/f;->c:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/wh/navigation/engine/MidHelper;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/engine/f;->k:Z

    goto :goto_0
.end method

.method private static i()Landroid/os/Looper;
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->c:Landroid/app/Application;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The application can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/f;->i()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->g:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/engine/f;->h()V

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/engine/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/wh/navigation/engine/MidMain;->a(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-eq v0, v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/autonavi/wh/navigation/engine/a;->a()Lcom/autonavi/wh/navigation/engine/a;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/f;->c:Landroid/app/Application;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/f;->i()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/navigation/engine/a;->a(Landroid/app/Application;Landroid/os/Looper;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/i;->a()Lcom/autonavi/wh/navigation/engine/i;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/f;->i()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/i;->a(Landroid/os/Looper;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/g;->a()Lcom/autonavi/wh/navigation/engine/g;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/f;->i()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/g;->a(Landroid/os/Looper;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a()Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/f;->i()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a(Landroid/os/Looper;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/a;->a()Lcom/autonavi/wh/navigation/engine/a;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GParam;->G_DISABLE_GPS:Lcom/autonavi/wh/navigation/server/GParam;

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/engine/f;->g()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_1

    :cond_3
    invoke-static {}, Lcom/autonavi/wh/navigation/engine/d;->a()Lcom/autonavi/wh/navigation/engine/d;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/f;->i()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/d;->a(Landroid/os/Looper;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/m;->a()Lcom/autonavi/wh/navigation/engine/m;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/f;->i()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/m;->a(Landroid/os/Looper;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidTmc;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/l;->a()Lcom/autonavi/wh/navigation/engine/l;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/f;->i()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/l;->a(Landroid/os/Looper;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_1

    :cond_4
    invoke-static {}, Lcom/autonavi/wh/navigation/engine/b;->a()Lcom/autonavi/wh/navigation/engine/b;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/f;->i()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/b;->a(Landroid/os/Looper;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/k;->a()Lcom/autonavi/wh/navigation/engine/k;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/f;->i()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/k;->a(Landroid/os/Looper;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/n;->a()Lcom/autonavi/wh/navigation/engine/n;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/f;->i()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/engine/n;->a(Landroid/os/Looper;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->e:Ljava/lang/String;

    if-nez v0, :cond_5

    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v0}, Lcom/autonavi/wh/navigation/engine/MidConfigs;->a([Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Resource.irf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->e:Ljava/lang/String;

    :cond_5
    new-instance v0, Lcom/autonavi/wh/tts/b;

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/f;->e:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/f;->i()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/wh/tts/b;-><init>(Ljava/lang/String;ILandroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->f:Lcom/autonavi/wh/tts/b;

    new-array v0, v5, [Z

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/a;->a()Lcom/autonavi/wh/navigation/engine/a;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GParam;->G_MUTE:Lcom/autonavi/wh/navigation/server/GParam;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;[Z)Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/a;->a()Lcom/autonavi/wh/navigation/engine/a;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GParam;->G_MUTE:Lcom/autonavi/wh/navigation/server/GParam;

    aget-boolean v0, v0, v4

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;Z)Lcom/autonavi/wh/navigation/server/GStatus;

    new-array v0, v5, [I

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/a;->a()Lcom/autonavi/wh/navigation/engine/a;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GParam;->G_SPEAKER_OPTION:Lcom/autonavi/wh/navigation/server/GParam;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;[I)Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/a;->a()Lcom/autonavi/wh/navigation/engine/a;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GParam;->G_SPEAKER_OPTION:Lcom/autonavi/wh/navigation/server/GParam;

    aget v0, v0, v4

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;I)Lcom/autonavi/wh/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->f:Lcom/autonavi/wh/tts/b;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/tts/b;->a(Lcom/autonavi/wh/tts/b$c;)V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->h:Lcom/autonavi/wh/navigation/server/guide/GSoundCallback;

    invoke-static {v0}, Lcom/autonavi/wh/navigation/engine/MidGuide;->a(Lcom/autonavi/wh/navigation/server/guide/GSoundCallback;)Lcom/autonavi/wh/navigation/server/GStatus;

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    goto/16 :goto_0
.end method

.method public a(IZ)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidMain;->a(IZ)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Application;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iput-object p1, p0, Lcom/autonavi/wh/navigation/engine/f;->c:Landroid/app/Application;

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/engine/f;->h()V

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0
.end method

.method public a(Lcom/autonavi/wh/navigation/engine/f$a;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    iput-object p1, p0, Lcom/autonavi/wh/navigation/engine/f;->j:Lcom/autonavi/wh/navigation/engine/f$a;

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/GCoord;Lcom/autonavi/wh/navigation/server/GCoord;[I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/autonavi/wh/navigation/engine/MidMain;->a(Lcom/autonavi/wh/navigation/server/GCoord;Lcom/autonavi/wh/navigation/server/GCoord;[I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/GCoord;[Ljava/lang/String;I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/autonavi/wh/navigation/engine/MidMain;->a(Lcom/autonavi/wh/navigation/server/GCoord;[Ljava/lang/String;I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/wh/navigation/server/GVersion;Lcom/autonavi/wh/navigation/server/GVersion;[Lcom/autonavi/wh/navigation/server/GVerCheckResult;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/autonavi/wh/navigation/engine/MidMain;->a(Lcom/autonavi/wh/navigation/server/GVersion;Lcom/autonavi/wh/navigation/server/GVersion;[Lcom/autonavi/wh/navigation/server/GVerCheckResult;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    iput-object p1, p0, Lcom/autonavi/wh/navigation/engine/f;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->d:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->d:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I[Lcom/autonavi/wh/navigation/server/GDataDirInfo;I[I)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3, p4, p5}, Lcom/autonavi/wh/navigation/engine/MidMain;->a(Ljava/lang/String;I[Lcom/autonavi/wh/navigation/server/GDataDirInfo;I[I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;I[Z)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/autonavi/wh/navigation/engine/MidMain;->a(Ljava/lang/String;I[Z)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GCoord;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidMain;->a(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GCoord;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GVersion;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidMain;->a(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GVersion;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;[Z)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidMain;->a(Ljava/lang/String;[Z)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a([Lcom/autonavi/wh/navigation/server/GVersion;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/wh/navigation/engine/MidMain;->a([Lcom/autonavi/wh/navigation/server/GVersion;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(II)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/autonavi/wh/navigation/engine/f;->e()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/autonavi/wh/navigation/engine/f;->f()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Lcom/autonavi/wh/navigation/server/GParam;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/autonavi/wh/navigation/server/GParam;

    sget-object v0, Lcom/autonavi/wh/navigation/engine/f$2;->a:[I

    invoke-virtual {p1}, Lcom/autonavi/wh/navigation/server/GParam;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {p2}, Lcom/autonavi/wh/navigation/engine/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/l;->a()Lcom/autonavi/wh/navigation/engine/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/l;->c()Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/autonavi/wh/navigation/engine/l;->a()Lcom/autonavi/wh/navigation/engine/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/l;->d()Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :pswitch_1
    invoke-static {p2}, Lcom/autonavi/wh/navigation/engine/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/e;->a()Lcom/autonavi/wh/navigation/engine/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/e;->b()Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/autonavi/wh/navigation/engine/f;->g()Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navigation/engine/f;->d(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->f:Lcom/autonavi/wh/tts/b;

    invoke-static {p2}, Lcom/autonavi/wh/navigation/engine/a;->a(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/tts/b;->a(Z)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->f:Lcom/autonavi/wh/tts/b;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/tts/b;->a(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public b()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/i;->a()Lcom/autonavi/wh/navigation/engine/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/i;->b()Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/a;->a()Lcom/autonavi/wh/navigation/engine/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/a;->b()Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {v1}, Lcom/autonavi/wh/navigation/engine/MidGuide;->a(Lcom/autonavi/wh/navigation/server/guide/GSoundCallback;)Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/n;->a()Lcom/autonavi/wh/navigation/engine/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/n;->b()Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/k;->a()Lcom/autonavi/wh/navigation/engine/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/k;->b()Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/b;->a()Lcom/autonavi/wh/navigation/engine/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/b;->b()Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/l;->a()Lcom/autonavi/wh/navigation/engine/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/l;->b()Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/m;->a()Lcom/autonavi/wh/navigation/engine/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/m;->b()Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/d;->a()Lcom/autonavi/wh/navigation/engine/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/d;->b()Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/e;->a()Lcom/autonavi/wh/navigation/engine/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/e;->b()Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a()Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->b()Lcom/autonavi/wh/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/g;->a()Lcom/autonavi/wh/navigation/engine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/g;->b()Lcom/autonavi/wh/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->f:Lcom/autonavi/wh/tts/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->f:Lcom/autonavi/wh/tts/b;

    invoke-virtual {v0}, Lcom/autonavi/wh/tts/b;->c()V

    :cond_0
    iput-object v1, p0, Lcom/autonavi/wh/navigation/engine/f;->c:Landroid/app/Application;

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/MidMain;->a()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/autonavi/wh/navigation/server/GVersion;Lcom/autonavi/wh/navigation/server/GVersion;[Lcom/autonavi/wh/navigation/server/GVerCheckResult;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/autonavi/wh/navigation/engine/MidMain;->b(Lcom/autonavi/wh/navigation/server/GVersion;Lcom/autonavi/wh/navigation/server/GVersion;[Lcom/autonavi/wh/navigation/server/GVerCheckResult;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/wh/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iput-object p1, p0, Lcom/autonavi/wh/navigation/engine/f;->e:Ljava/lang/String;

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GVersion;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/wh/navigation/engine/MidMain;->b(Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/GVersion;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->f:Lcom/autonavi/wh/tts/b;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/tts/b;->b(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public c()Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->f:Lcom/autonavi/wh/tts/b;

    invoke-virtual {v0}, Lcom/autonavi/wh/tts/b;->a()V

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GStatus;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navigation/engine/f;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    return-object v0
.end method

.method public c(I)Z
    .locals 3

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/f;->f:Lcom/autonavi/wh/tts/b;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->c:Landroid/app/Application;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v1, v0, p1}, Lcom/autonavi/wh/tts/b;->a(Landroid/media/AudioManager;I)V

    const/4 v0, 0x1

    return v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/engine/f;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method d(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->f:Lcom/autonavi/wh/tts/b;

    invoke-virtual {v0}, Lcom/autonavi/wh/tts/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->j:Lcom/autonavi/wh/navigation/engine/f$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->j:Lcom/autonavi/wh/navigation/engine/f$a;

    invoke-interface {v0, p1}, Lcom/autonavi/wh/navigation/engine/f$a;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/f;->f:Lcom/autonavi/wh/tts/b;

    iget-wide v1, p0, Lcom/autonavi/wh/navigation/engine/f;->i:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/autonavi/wh/navigation/engine/f;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {v0, p1}, Lcom/autonavi/wh/tts/b;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    return v0
.end method
