.class Lcom/autonavi/navigation/api/poi/a/d$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/poi/a/d;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/poi/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/a/d$6;->a:Lcom/autonavi/navigation/api/poi/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d$6;->a:Lcom/autonavi/navigation/api/poi/a/d;

    invoke-static {v0}, Lcom/autonavi/navigation/api/poi/a/d;->b(Lcom/autonavi/navigation/api/poi/a/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/poi/a/d$6;->a:Lcom/autonavi/navigation/api/poi/a/d;

    invoke-static {v0}, Lcom/autonavi/navigation/api/poi/a/d;->b(Lcom/autonavi/navigation/api/poi/a/d;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/PoiManager$OnDealerQueryResultListener;

    iget-object v2, p0, Lcom/autonavi/navigation/api/poi/a/d$6;->a:Lcom/autonavi/navigation/api/poi/a/d;

    invoke-static {v2}, Lcom/autonavi/navigation/api/poi/a/d;->c(Lcom/autonavi/navigation/api/poi/a/d;)Lcom/autonavi/navigation/api/poi/PoiManager$DealerQueryResult;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/autonavi/navigation/api/poi/PoiManager$OnDealerQueryResultListener;->onDealerQueryResult(Lcom/autonavi/navigation/api/poi/PoiManager$DealerQueryResult;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
