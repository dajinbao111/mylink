.class Lcom/autonavi/navigation/api/poi/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;

.field final synthetic b:Lcom/autonavi/navigation/api/poi/a/d;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/poi/a/d;Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/a/d$1;->b:Lcom/autonavi/navigation/api/poi/a/d;

    iput-object p2, p0, Lcom/autonavi/navigation/api/poi/a/d$1;->a:Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d$1;->b:Lcom/autonavi/navigation/api/poi/a/d;

    invoke-static {v0}, Lcom/autonavi/navigation/api/poi/a/d;->a(Lcom/autonavi/navigation/api/poi/a/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d$1;->b:Lcom/autonavi/navigation/api/poi/a/d;

    invoke-static {v0}, Lcom/autonavi/navigation/api/poi/a/d;->a(Lcom/autonavi/navigation/api/poi/a/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;

    iget-object v2, p0, Lcom/autonavi/navigation/api/poi/a/d$1;->a:Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;

    invoke-interface {v0, v2}, Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;->onPoiQueryResult(Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
