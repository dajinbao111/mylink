.class Lcom/autonavi/navigation/api/map/internal/r$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/map/internal/j$a;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/map/internal/r;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/map/internal/r;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/r$3;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(F)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r$3;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/r;->n(Lcom/autonavi/navigation/api/map/internal/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r$3;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/r;->b(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v0

    float-to-int v1, p1

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/map/internal/l;->b(I)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=======================onTilt======================angle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r$3;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/r;->o(Lcom/autonavi/navigation/api/map/internal/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r$3;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/r;->b(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v0

    float-to-int v1, p1

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/map/internal/l;->d(I)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r$3;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/r;->a(Lcom/autonavi/navigation/api/map/internal/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/r$3;->a:Lcom/autonavi/navigation/api/map/internal/r;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/r;->b(Lcom/autonavi/navigation/api/map/internal/r;)Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/l;->n()Z

    :cond_0
    return-void
.end method
