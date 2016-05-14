.class Lcom/autonavi/navigation/api/util/AnTtsPlayer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/internal/a/d$a;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/util/AnTtsPlayer;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/util/AnTtsPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/util/AnTtsPlayer$1;->a:Lcom/autonavi/navigation/api/util/AnTtsPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/AnTtsPlayer$1;->a:Lcom/autonavi/navigation/api/util/AnTtsPlayer;

    invoke-static {v0}, Lcom/autonavi/navigation/api/util/AnTtsPlayer;->a(Lcom/autonavi/navigation/api/util/AnTtsPlayer;)Lcom/autonavi/navigation/api/util/AnTtsPlayer$OnSpeakListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/AnTtsPlayer$1;->a:Lcom/autonavi/navigation/api/util/AnTtsPlayer;

    invoke-static {v0}, Lcom/autonavi/navigation/api/util/AnTtsPlayer;->a(Lcom/autonavi/navigation/api/util/AnTtsPlayer;)Lcom/autonavi/navigation/api/util/AnTtsPlayer$OnSpeakListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/util/AnTtsPlayer$OnSpeakListener;->onStart()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/AnTtsPlayer$1;->a:Lcom/autonavi/navigation/api/util/AnTtsPlayer;

    invoke-static {v0}, Lcom/autonavi/navigation/api/util/AnTtsPlayer;->a(Lcom/autonavi/navigation/api/util/AnTtsPlayer;)Lcom/autonavi/navigation/api/util/AnTtsPlayer$OnSpeakListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/AnTtsPlayer$1;->a:Lcom/autonavi/navigation/api/util/AnTtsPlayer;

    invoke-static {v0}, Lcom/autonavi/navigation/api/util/AnTtsPlayer;->a(Lcom/autonavi/navigation/api/util/AnTtsPlayer;)Lcom/autonavi/navigation/api/util/AnTtsPlayer$OnSpeakListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/util/AnTtsPlayer$OnSpeakListener;->onEnd()V

    :cond_0
    return-void
.end method
