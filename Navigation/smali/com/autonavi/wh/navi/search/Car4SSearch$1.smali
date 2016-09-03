.class Lcom/autonavi/wh/navi/search/Car4SSearch$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/poi/PoiManager$OnDealerQueryResultListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/search/Car4SSearch;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/search/Car4SSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/search/Car4SSearch$1;->this$0:Lcom/autonavi/wh/navi/search/Car4SSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDealerQueryResult(Lcom/autonavi/navigation/api/poi/PoiManager$DealerQueryResult;)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Car4SSearch$1;->this$0:Lcom/autonavi/wh/navi/search/Car4SSearch;

    # invokes: Lcom/autonavi/wh/navi/search/Car4SSearch;->isOnTop()Z
    invoke-static {v0}, Lcom/autonavi/wh/navi/search/Car4SSearch;->access$000(Lcom/autonavi/wh/navi/search/Car4SSearch;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQueryResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQueryResult;->getDealers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Car4SSearch$1;->this$0:Lcom/autonavi/wh/navi/search/Car4SSearch;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/autonavi/navigation/api/poi/model/DealerInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/navi/search/Car4SSearch;->notifyDataChanged([Lcom/autonavi/navigation/api/poi/model/Poi;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/autonavi/navigation/api/poi/model/DealerInfo;

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Car4SSearch$1;->this$0:Lcom/autonavi/wh/navi/search/Car4SSearch;

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/navi/search/Car4SSearch;->notifyDataChanged([Lcom/autonavi/navigation/api/poi/model/Poi;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Car4SSearch$1;->this$0:Lcom/autonavi/wh/navi/search/Car4SSearch;

    iget-object v0, v0, Lcom/autonavi/wh/navi/search/Car4SSearch;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b0125

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0
.end method
