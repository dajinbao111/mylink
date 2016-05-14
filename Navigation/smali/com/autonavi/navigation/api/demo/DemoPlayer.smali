.class public final Lcom/autonavi/navigation/api/demo/DemoPlayer;
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

    iput-object v0, p0, Lcom/autonavi/navigation/api/demo/DemoPlayer;->a:Lcom/autonavi/navigation/api/demo/a/b;

    return-void
.end method

.method public static create(Lcom/autonavi/navigation/api/demo/model/DemoItem;)Lcom/autonavi/navigation/api/demo/DemoPlayer;
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/demo/DemoPlayer;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/demo/DemoPlayer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/autonavi/navigation/api/demo/DemoPlayer;->setDataSource(Lcom/autonavi/navigation/api/demo/model/DemoItem;)V

    return-object v0
.end method


# virtual methods
.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/DemoPlayer;->a:Lcom/autonavi/navigation/api/demo/a/b;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/demo/a/b;->f()Z

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/DemoPlayer;->a:Lcom/autonavi/navigation/api/demo/a/b;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/demo/a/b;->a()Z

    return-void
.end method

.method public setDataSource(Lcom/autonavi/navigation/api/demo/model/DemoItem;)V
    .locals 1

    const-string v0, "dataSource can not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/DemoPlayer;->a:Lcom/autonavi/navigation/api/demo/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/demo/a/b;->a(Lcom/autonavi/navigation/api/demo/model/DemoItem;)Z

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/DemoPlayer;->a:Lcom/autonavi/navigation/api/demo/a/b;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/demo/a/b;->e()Z

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/demo/DemoPlayer;->a:Lcom/autonavi/navigation/api/demo/a/b;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/demo/a/b;->g()Z

    return-void
.end method
