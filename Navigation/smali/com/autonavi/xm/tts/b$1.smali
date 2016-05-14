.class Lcom/autonavi/xm/tts/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# instance fields
.field final synthetic a:Lcom/autonavi/xm/tts/b;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/tts/b;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/tts/b$1;->a:Lcom/autonavi/xm/tts/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/tts/b$1;->a:Lcom/autonavi/xm/tts/b;

    invoke-static {v0}, Lcom/autonavi/xm/tts/b;->a(Lcom/autonavi/xm/tts/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/tts/b$1;->a:Lcom/autonavi/xm/tts/b;

    invoke-static {v0}, Lcom/autonavi/xm/tts/b;->b(Lcom/autonavi/xm/tts/b;)V

    goto :goto_0
.end method

.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 0

    return-void
.end method
