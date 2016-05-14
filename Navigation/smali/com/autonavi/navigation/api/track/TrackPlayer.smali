.class public final Lcom/autonavi/navigation/api/track/TrackPlayer;
.super Ljava/lang/Object;


# static fields
.field public static final RATE_MAX:J = 0x190L

.field public static final RATE_MIN:J = 0x64L

.field private static c:Lcom/autonavi/navigation/api/track/TrackPlayer;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/track/a/a;

.field private final b:Lcom/autonavi/navigation/api/settings/a/b;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getTrackManagerDelegate()Lcom/autonavi/navigation/api/track/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/track/TrackPlayer;->a:Lcom/autonavi/navigation/api/track/a/a;

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getSettingsDelegate()Lcom/autonavi/navigation/api/settings/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/track/TrackPlayer;->b:Lcom/autonavi/navigation/api/settings/a/b;

    return-void
.end method

.method public static getMaxPlaybackRate()J
    .locals 2

    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method public static getMinPlaybackRate()J
    .locals 2

    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static getTrackPlayer()Lcom/autonavi/navigation/api/track/TrackPlayer;
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/track/TrackPlayer;->c:Lcom/autonavi/navigation/api/track/TrackPlayer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/navigation/api/track/TrackPlayer;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/track/TrackPlayer;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/track/TrackPlayer;->c:Lcom/autonavi/navigation/api/track/TrackPlayer;

    :cond_0
    sget-object v0, Lcom/autonavi/navigation/api/track/TrackPlayer;->c:Lcom/autonavi/navigation/api/track/TrackPlayer;

    return-object v0
.end method

.method public static getTrackPlayer(Lcom/autonavi/navigation/api/track/model/TrackInfo;)Lcom/autonavi/navigation/api/track/TrackPlayer;
    .locals 1

    invoke-static {}, Lcom/autonavi/navigation/api/track/TrackPlayer;->getTrackPlayer()Lcom/autonavi/navigation/api/track/TrackPlayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/track/TrackPlayer;->setDataSource(Lcom/autonavi/navigation/api/track/model/TrackInfo;)V

    return-object v0
.end method


# virtual methods
.method public getPlaybackRate()J
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/TrackPlayer;->a:Lcom/autonavi/navigation/api/track/a/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/track/a/a;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public isDisplayOnMapEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/TrackPlayer;->b:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "show_track"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public pause()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/TrackPlayer;->a:Lcom/autonavi/navigation/api/track/a/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/track/a/a;->e()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/TrackPlayer;->a:Lcom/autonavi/navigation/api/track/a/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/track/a/a;->g()Z

    return-void
.end method

.method public setDataSource(Lcom/autonavi/navigation/api/track/model/TrackInfo;)V
    .locals 2

    const-string v0, "dataSource can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "dataSource name can not be empty"

    iget-object v1, p1, Lcom/autonavi/navigation/api/track/model/TrackInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertFalse(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/TrackPlayer;->a:Lcom/autonavi/navigation/api/track/a/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/track/a/a;->b(Lcom/autonavi/navigation/api/track/model/TrackInfo;)Z

    return-void
.end method

.method public setDisplayOnMapEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/TrackPlayer;->b:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "show_track"

    invoke-interface {v0, v1, p1}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;Z)Z

    return-void
.end method

.method public setOnCompletionListener(Lcom/autonavi/navigation/api/track/TrackPlayer$OnCompletionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/TrackPlayer;->a:Lcom/autonavi/navigation/api/track/a/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/track/a/a;->a(Lcom/autonavi/navigation/api/track/TrackPlayer$OnCompletionListener;)V

    return-void
.end method

.method public setPlaybackRate(J)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/TrackPlayer;->a:Lcom/autonavi/navigation/api/track/a/a;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/track/a/a;->a(J)Z

    return-void
.end method

.method public start()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/TrackPlayer;->a:Lcom/autonavi/navigation/api/track/a/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/track/a/a;->c()Z

    move-result v0

    return v0
.end method

.method public stop()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/TrackPlayer;->a:Lcom/autonavi/navigation/api/track/a/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/track/a/a;->d()Z

    move-result v0

    return v0
.end method
