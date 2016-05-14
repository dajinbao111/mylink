.class public final Lcom/autonavi/navigation/api/demo/DemoManager;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/demo/a/b;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getDemoManagerDelegate()Lcom/autonavi/navigation/api/demo/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/demo/DemoManager;->a:Lcom/autonavi/navigation/api/demo/a/b;

    return-void
.end method


# virtual methods
.method public getAll()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/DemoManager;->a:Lcom/autonavi/navigation/api/demo/a/b;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/demo/a/b;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getJourneyDemos()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/DemoManager;->a:Lcom/autonavi/navigation/api/demo/a/b;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/demo/a/b;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadJourneyDemo(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/DemoManager;->a:Lcom/autonavi/navigation/api/demo/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/demo/a/b;->a(I)Z

    return-void
.end method

.method public unloadJourneyDemo()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/DemoManager;->a:Lcom/autonavi/navigation/api/demo/a/b;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/demo/a/b;->b()Z

    return-void
.end method
