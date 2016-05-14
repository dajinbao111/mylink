.class public Lcom/autonavi/xm/tts/b;
.super Ljava/lang/Object;


# static fields
.field private static b:[B


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Lcom/autonavi/xm/tts/TtsSynthesizer;

.field private d:Lcom/autonavi/xm/tts/b$e;

.field private final e:Ljava/util/Map;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Lcom/autonavi/xm/tts/b$a;

.field private j:Lcom/autonavi/xm/tts/b$c;

.field private k:Lcom/autonavi/xm/tts/b$b;

.field private l:Ljava/lang/Integer;

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/media/AudioManager;

.field private t:I

.field private u:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final v:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xm/tts/b;->b:[B

    :try_start_0
    const-string v0, "stlport_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "tts_player"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/Looper;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TtsPlayer"

    iput-object v0, p0, Lcom/autonavi/xm/tts/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/tts/b;->e:Ljava/util/Map;

    iput v2, p0, Lcom/autonavi/xm/tts/b;->f:I

    iput v1, p0, Lcom/autonavi/xm/tts/b;->g:I

    iput-boolean v1, p0, Lcom/autonavi/xm/tts/b;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xm/tts/b;->l:Ljava/lang/Integer;

    iput v1, p0, Lcom/autonavi/xm/tts/b;->m:I

    iput v2, p0, Lcom/autonavi/xm/tts/b;->n:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/autonavi/xm/tts/b;->o:I

    iput-boolean v1, p0, Lcom/autonavi/xm/tts/b;->p:Z

    iput-boolean v1, p0, Lcom/autonavi/xm/tts/b;->q:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/tts/b;->r:Z

    iput v1, p0, Lcom/autonavi/xm/tts/b;->t:I

    new-instance v0, Lcom/autonavi/xm/tts/b$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/tts/b$1;-><init>(Lcom/autonavi/xm/tts/b;)V

    iput-object v0, p0, Lcom/autonavi/xm/tts/b;->v:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    new-instance v0, Lcom/autonavi/xm/tts/TtsSynthesizer;

    invoke-direct {v0, p1}, Lcom/autonavi/xm/tts/TtsSynthesizer;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/autonavi/xm/tts/b;->a(Lcom/autonavi/xm/tts/TtsSynthesizer;ILandroid/os/Looper;)V

    return-void
.end method

.method private a(ILjava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->i:Lcom/autonavi/xm/tts/b$a;

    const/4 v1, 0x1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/autonavi/xm/tts/b$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->h()V

    return-void
.end method

.method private a(Lcom/autonavi/xm/tts/TtsSynthesizer;ILandroid/os/Looper;)V
    .locals 3

    iput-object p1, p0, Lcom/autonavi/xm/tts/b;->c:Lcom/autonavi/xm/tts/TtsSynthesizer;

    sget-object v0, Lcom/autonavi/xm/tts/c;->c:Lcom/autonavi/xm/tts/c;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/tts/b;->a(Lcom/autonavi/xm/tts/c;)V

    sget-object v0, Lcom/autonavi/xm/tts/c;->c:Lcom/autonavi/xm/tts/c;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/tts/b;->b(Lcom/autonavi/xm/tts/c;)V

    sget-object v0, Lcom/autonavi/xm/tts/c;->v:Lcom/autonavi/xm/tts/c;

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/tts/b;->c(Lcom/autonavi/xm/tts/c;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/tts/b;->b(Z)V

    iput p2, p0, Lcom/autonavi/xm/tts/b;->f:I

    invoke-direct {p0, p2}, Lcom/autonavi/xm/tts/b;->c(I)Landroid/media/AudioTrack;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/tts/b;->e:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    :cond_0
    new-instance v0, Lcom/autonavi/xm/tts/b$a;

    invoke-direct {v0, p0, p3}, Lcom/autonavi/xm/tts/b$a;-><init>(Lcom/autonavi/xm/tts/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xm/tts/b;->i:Lcom/autonavi/xm/tts/b$a;

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xm/tts/b;ILjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xm/tts/b;->a(ILjava/lang/Integer;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->i:Lcom/autonavi/xm/tts/b$a;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v2, v1}, Lcom/autonavi/xm/tts/b$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->d:Lcom/autonavi/xm/tts/b$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->d:Lcom/autonavi/xm/tts/b$e;

    invoke-virtual {v0}, Lcom/autonavi/xm/tts/b$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->d:Lcom/autonavi/xm/tts/b$e;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xm/tts/b$e;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/autonavi/xm/tts/b$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/autonavi/xm/tts/b$e;-><init>(Lcom/autonavi/xm/tts/b;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/autonavi/xm/tts/b;->d:Lcom/autonavi/xm/tts/b$e;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/autonavi/xm/tts/b;->d:Lcom/autonavi/xm/tts/b$e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/autonavi/xm/tts/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/tts/b;->q:Z

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/autonavi/xm/tts/b;->q:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This player has been released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v1, p0, Lcom/autonavi/xm/tts/b;->r:Z

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/autonavi/xm/tts/b;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/autonavi/xm/tts/b;->l:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v1, v2, :cond_3

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->l()Z

    move-result v1

    if-nez v1, :cond_4

    monitor-exit p0

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/autonavi/xm/tts/b;->n:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->k()V

    :cond_5
    iput-object p2, p0, Lcom/autonavi/xm/tts/b;->l:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xm/tts/b;->m:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xm/tts/b;->n:I

    invoke-direct {p0, p1, p3}, Lcom/autonavi/xm/tts/b;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/autonavi/xm/tts/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->i()V

    return-void
.end method

.method private c(I)Landroid/media/AudioTrack;
    .locals 7

    const/16 v2, 0x3e80

    const/4 v3, 0x4

    const/4 v6, 0x1

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const/16 v1, 0x414e

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-instance v0, Landroid/media/AudioTrack;

    move v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack failed to initialize!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v1, Lcom/autonavi/xm/tts/b;->b:[B

    if-nez v1, :cond_1

    new-array v1, v5, [B

    sput-object v1, Lcom/autonavi/xm/tts/b;->b:[B

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioFormat()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    :goto_0
    mul-int/2addr v1, v6

    iput v1, p0, Lcom/autonavi/xm/tts/b;->g:I

    iget-object v1, p0, Lcom/autonavi/xm/tts/b;->v:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    iget-object v2, p0, Lcom/autonavi/xm/tts/b;->i:Lcom/autonavi/xm/tts/b$a;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    return-object v0

    :cond_2
    move v6, v4

    goto :goto_0
.end method

.method static synthetic c(Lcom/autonavi/xm/tts/b;)Lcom/autonavi/xm/tts/b$c;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->j:Lcom/autonavi/xm/tts/b$c;

    return-object v0
.end method

.method private d()Landroid/media/AudioTrack;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->e:Ljava/util/Map;

    iget v1, p0, Lcom/autonavi/xm/tts/b;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/autonavi/xm/tts/b;->f:I

    invoke-direct {p0, v0}, Lcom/autonavi/xm/tts/b;->c(I)Landroid/media/AudioTrack;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/tts/b;->e:Ljava/util/Map;

    iget v2, p0, Lcom/autonavi/xm/tts/b;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->e:Ljava/util/Map;

    iget v1, p0, Lcom/autonavi/xm/tts/b;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic d(Lcom/autonavi/xm/tts/b;)Lcom/autonavi/xm/tts/b$b;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->k:Lcom/autonavi/xm/tts/b$b;

    return-object v0
.end method

.method private d(I)Z
    .locals 3

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    sub-float/2addr v1, v0

    add-int/lit8 v2, p1, 0x0

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->d()Landroid/media/AudioTrack;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/autonavi/xm/tts/b;)Landroid/media/AudioTrack;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->d()Landroid/media/AudioTrack;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/autonavi/xm/tts/b;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0, v3, v3}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/autonavi/xm/tts/b;)Lcom/autonavi/xm/tts/b$a;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->i:Lcom/autonavi/xm/tts/b$a;

    return-object v0
.end method

.method private f()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->d()Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->d()Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->d()Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    iput-boolean v1, p0, Lcom/autonavi/xm/tts/b;->h:Z

    return-void
.end method

.method static synthetic g(Lcom/autonavi/xm/tts/b;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/tts/b;->m:I

    return v0
.end method

.method private g()V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/tts/b;->h:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->d()Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/tts/b;->h:Z

    goto :goto_0
.end method

.method private h()V
    .locals 4

    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->f()V

    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->j()V

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->i:Lcom/autonavi/xm/tts/b$a;

    const/4 v1, 0x0

    const/4 v2, 0x3

    iget v3, p0, Lcom/autonavi/xm/tts/b;->m:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/xm/tts/b$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic h(Lcom/autonavi/xm/tts/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->g()V

    return-void
.end method

.method static synthetic i(Lcom/autonavi/xm/tts/b;)Lcom/autonavi/xm/tts/TtsSynthesizer;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->c:Lcom/autonavi/xm/tts/TtsSynthesizer;

    return-object v0
.end method

.method private i()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->f()V

    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->j()V

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->i:Lcom/autonavi/xm/tts/b$a;

    const/4 v1, 0x2

    iget v2, p0, Lcom/autonavi/xm/tts/b;->m:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/autonavi/xm/tts/b$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->i:Lcom/autonavi/xm/tts/b$a;

    const/4 v1, 0x3

    iget v2, p0, Lcom/autonavi/xm/tts/b;->m:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/autonavi/xm/tts/b$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private declared-synchronized j()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->m()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xm/tts/b;->l:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xm/tts/b;->m:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/autonavi/xm/tts/b;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic j(Lcom/autonavi/xm/tts/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->h()V

    return-void
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->d:Lcom/autonavi/xm/tts/b$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->d:Lcom/autonavi/xm/tts/b$e;

    invoke-virtual {v0}, Lcom/autonavi/xm/tts/b$e;->b()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->c:Lcom/autonavi/xm/tts/TtsSynthesizer;

    invoke-virtual {v0}, Lcom/autonavi/xm/tts/TtsSynthesizer;->a()V

    return-void
.end method

.method private l()Z
    .locals 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/autonavi/xm/tts/b;->t:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/tts/b;->s:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/autonavi/xm/tts/b;->u:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget v3, p0, Lcom/autonavi/xm/tts/b;->f:I

    iget v4, p0, Lcom/autonavi/xm/tts/b;->t:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 2

    iget v0, p0, Lcom/autonavi/xm/tts/b;->t:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->s:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/autonavi/xm/tts/b;->u:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/autonavi/xm/tts/b;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->k()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/media/AudioManager;I)V
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/tts/b;->t:I

    if-eq v0, p2, :cond_0

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/autonavi/xm/tts/b;->s:Landroid/media/AudioManager;

    iput p2, p0, Lcom/autonavi/xm/tts/b;->t:I

    if-lez p2, :cond_2

    new-instance v0, Lcom/autonavi/xm/tts/b$2;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/tts/b$2;-><init>(Lcom/autonavi/xm/tts/b;)V

    iput-object v0, p0, Lcom/autonavi/xm/tts/b;->u:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->u:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->u:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xm/tts/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/tts/b;->j:Lcom/autonavi/xm/tts/b$c;

    return-void
.end method

.method public a(Lcom/autonavi/xm/tts/c;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->c:Lcom/autonavi/xm/tts/TtsSynthesizer;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/tts/TtsSynthesizer;->a(Lcom/autonavi/xm/tts/c;)V

    return-void
.end method

.method public a(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-boolean v0, p0, Lcom/autonavi/xm/tts/b;->p:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iput v1, p0, Lcom/autonavi/xm/tts/b;->o:I

    :cond_0
    return v0

    :cond_1
    invoke-direct {p0, v1}, Lcom/autonavi/xm/tts/b;->d(I)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/xm/tts/b;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .locals 1

    iput-boolean p1, p0, Lcom/autonavi/xm/tts/b;->p:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/autonavi/xm/tts/b;->d(I)Z

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/autonavi/xm/tts/b;->o:I

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/tts/b;->f:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/tts/b;->a()V

    :cond_0
    iput p1, p0, Lcom/autonavi/xm/tts/b;->f:I

    return-void
.end method

.method public b(Lcom/autonavi/xm/tts/c;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->c:Lcom/autonavi/xm/tts/TtsSynthesizer;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/tts/TtsSynthesizer;->b(Lcom/autonavi/xm/tts/c;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->c:Lcom/autonavi/xm/tts/TtsSynthesizer;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/tts/TtsSynthesizer;->a(Z)V

    return-void
.end method

.method public b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/autonavi/xm/tts/b;->n:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->k()V

    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->j()V

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->i:Lcom/autonavi/xm/tts/b$a;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/tts/b$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->c:Lcom/autonavi/xm/tts/TtsSynthesizer;

    invoke-virtual {v0}, Lcom/autonavi/xm/tts/TtsSynthesizer;->b()I

    invoke-direct {p0}, Lcom/autonavi/xm/tts/b;->e()V

    iput-object v1, p0, Lcom/autonavi/xm/tts/b;->j:Lcom/autonavi/xm/tts/b$c;

    iput-object v1, p0, Lcom/autonavi/xm/tts/b;->k:Lcom/autonavi/xm/tts/b$b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/tts/b;->q:Z

    return-void
.end method

.method public c(Lcom/autonavi/xm/tts/c;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/tts/b;->c:Lcom/autonavi/xm/tts/TtsSynthesizer;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/tts/TtsSynthesizer;->c(Lcom/autonavi/xm/tts/c;)V

    return-void
.end method
