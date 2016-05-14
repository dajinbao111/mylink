.class Lcom/autonavi/navigation/api/poi/a/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/poi/a/d;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/poi/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/a/d$3;->a:Lcom/autonavi/navigation/api/poi/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d$3;->a:Lcom/autonavi/navigation/api/poi/a/d;

    invoke-static {v0}, Lcom/autonavi/navigation/api/poi/a/d;->a(Lcom/autonavi/navigation/api/poi/a/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d$3;->a:Lcom/autonavi/navigation/api/poi/a/d;

    invoke-static {v0}, Lcom/autonavi/navigation/api/poi/a/d;->a(Lcom/autonavi/navigation/api/poi/a/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

    new-instance v3, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/autonavi/navigation/api/poi/a/d$3;->a:Lcom/autonavi/navigation/api/poi/a/d;

    iget-object v5, v5, Lcom/autonavi/navigation/api/poi/a/d;->a:Lcom/autonavi/navigation/api/poi/PoiManager$Query;

    invoke-direct {v3, v2, v4, v5}, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;-><init>(ILjava/util/List;Lcom/autonavi/navigation/api/poi/PoiManager$Query;)V

    invoke-interface {v0, v3}, Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;->onPoiQueryResult(Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
