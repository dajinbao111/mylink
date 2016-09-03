.class Lcom/autonavi/navigation/api/route/a/e$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/guide/a/a$a;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/route/a/e;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/route/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/route/a/e$5;->a:Lcom/autonavi/navigation/api/route/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/autonavi/wh/navigation/server/GStatus;[Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e$5;->a:Lcom/autonavi/navigation/api/route/a/e;

    invoke-static {v0}, Lcom/autonavi/navigation/api/route/a/e;->a(Lcom/autonavi/navigation/api/route/a/e;)Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    move-result-object v0

    invoke-static {v0, p2, p3, v4}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/wh/navigation/engine/GDBL_Guide;Lcom/autonavi/wh/navigation/server/GStatus;[Lcom/autonavi/wh/navigation/server/guide/GHGuideRoute;Lcom/autonavi/navigation/api/route/model/CalculationInput;)Lcom/autonavi/navigation/api/route/model/CalculationResult;

    move-result-object v1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e$5;->a:Lcom/autonavi/navigation/api/route/a/e;

    iget-object v0, v0, Lcom/autonavi/navigation/api/route/a/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Lcom/autonavi/navigation/api/route/RouteManager$OnCalculationResultListener;->onCalculationResult(ILcom/autonavi/navigation/api/route/model/CalculationResult;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e$5;->a:Lcom/autonavi/navigation/api/route/a/e;

    invoke-static {v0}, Lcom/autonavi/navigation/api/route/a/e;->b(Lcom/autonavi/navigation/api/route/a/e;)Lcom/autonavi/navigation/api/guide/a/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/autonavi/navigation/api/guide/a/a;->a(Lcom/autonavi/navigation/api/guide/a/a$a;)V

    return-void
.end method
