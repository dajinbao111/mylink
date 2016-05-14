.class Lcom/autonavi/navigation/api/route/a/e$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/guide/a/a$a;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/route/model/CalculationInput;

.field final synthetic b:I

.field final synthetic c:Lcom/autonavi/navigation/api/route/a/e;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/route/a/e;Lcom/autonavi/navigation/api/route/model/CalculationInput;I)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/route/a/e$3;->c:Lcom/autonavi/navigation/api/route/a/e;

    iput-object p2, p0, Lcom/autonavi/navigation/api/route/a/e$3;->a:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iput p3, p0, Lcom/autonavi/navigation/api/route/a/e$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/autonavi/xm/navigation/server/GStatus;[Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e$3;->c:Lcom/autonavi/navigation/api/route/a/e;

    invoke-static {v0}, Lcom/autonavi/navigation/api/route/a/e;->a(Lcom/autonavi/navigation/api/route/a/e;)Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    move-result-object v0

    new-instance v1, Lcom/autonavi/navigation/api/route/model/CalculationInput;

    iget-object v2, p0, Lcom/autonavi/navigation/api/route/a/e$3;->a:Lcom/autonavi/navigation/api/route/model/CalculationInput;

    invoke-direct {v1, v2}, Lcom/autonavi/navigation/api/route/model/CalculationInput;-><init>(Lcom/autonavi/navigation/api/route/model/CalculationInput;)V

    invoke-static {v0, p2, p3, v1}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;Lcom/autonavi/xm/navigation/server/GStatus;[Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;Lcom/autonavi/navigation/api/route/model/CalculationInput;)Lcom/autonavi/navigation/api/route/model/CalculationResult;

    move-result-object v1

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e$3;->c:Lcom/autonavi/navigation/api/route/a/e;

    invoke-static {v0}, Lcom/autonavi/navigation/api/route/a/e;->c(Lcom/autonavi/navigation/api/route/a/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/route/RouteManager$OnDetourCalculationResultListener;

    iget v3, p0, Lcom/autonavi/navigation/api/route/a/e$3;->b:I

    invoke-interface {v0, v3, v1}, Lcom/autonavi/navigation/api/route/RouteManager$OnDetourCalculationResultListener;->OnDetourCalculationResult(ILcom/autonavi/navigation/api/route/model/CalculationResult;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e$3;->c:Lcom/autonavi/navigation/api/route/a/e;

    invoke-static {v0}, Lcom/autonavi/navigation/api/route/a/e;->b(Lcom/autonavi/navigation/api/route/a/e;)Lcom/autonavi/navigation/api/guide/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/guide/a/a;->b(Lcom/autonavi/navigation/api/guide/a/a$a;)V

    return-void
.end method
