.class public final Lcom/autonavi/navigation/api/track/TrackManager;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/track/a/a;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getTrackManagerDelegate()Lcom/autonavi/navigation/api/track/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/track/TrackManager;->a:Lcom/autonavi/navigation/api/track/a/a;

    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/TrackManager;->a:Lcom/autonavi/navigation/api/track/a/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/track/a/a;->b()Z

    move-result v0

    return v0
.end method

.method public getAll()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/TrackManager;->a:Lcom/autonavi/navigation/api/track/a/a;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/track/a/a;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/track/TrackManager;->remove(I)Z

    move-result v0

    return v0
.end method

.method public varargs remove([I)Z
    .locals 1

    const-string v0, "ids can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/TrackManager;->a:Lcom/autonavi/navigation/api/track/a/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/track/a/a;->a([I)Z

    move-result v0

    return v0
.end method

.method public save(Lcom/autonavi/navigation/api/track/model/TrackInfo;)Z
    .locals 1

    const-string v0, "track can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/track/TrackManager;->a:Lcom/autonavi/navigation/api/track/a/a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/track/a/a;->a(Lcom/autonavi/navigation/api/track/model/TrackInfo;)Z

    move-result v0

    return v0
.end method
