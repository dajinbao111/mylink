.class Lcom/autonavi/xm/navi/search/Searcher$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/search/Searcher;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/search/Searcher;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/search/Searcher$1;->this$0:Lcom/autonavi/xm/navi/search/Searcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPoiQueryResult(Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/Searcher$1;->this$0:Lcom/autonavi/xm/navi/search/Searcher;

    # invokes: Lcom/autonavi/xm/navi/search/Searcher;->isOnTop()Z
    invoke-static {v0}, Lcom/autonavi/xm/navi/search/Searcher;->access$000(Lcom/autonavi/xm/navi/search/Searcher;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/search/Searcher$1;->this$0:Lcom/autonavi/xm/navi/search/Searcher;

    # getter for: Lcom/autonavi/xm/navi/search/Searcher;->mDlgSearching:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/xm/navi/search/Searcher;->access$100(Lcom/autonavi/xm/navi/search/Searcher;)Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/Searcher$1;->this$0:Lcom/autonavi/xm/navi/search/Searcher;

    # getter for: Lcom/autonavi/xm/navi/search/Searcher;->mDlgSearching:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/xm/navi/search/Searcher;->access$100(Lcom/autonavi/xm/navi/search/Searcher;)Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_2
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;->getResultCode()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;->getPois()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;->getPois()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Lcom/autonavi/navigation/api/poi/model/Poi;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;->getPois()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xm/navi/search/Searcher$1;->this$0:Lcom/autonavi/xm/navi/search/Searcher;

    invoke-virtual {v0, v3}, Lcom/autonavi/xm/navi/search/Searcher;->preproccessSearchResult([Lcom/autonavi/navigation/api/poi/model/Poi;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/Searcher$1;->this$0:Lcom/autonavi/xm/navi/search/Searcher;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;->getPois()Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/autonavi/xm/navi/search/Searcher;->showPoiData(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/search/Searcher;->access$200(Lcom/autonavi/xm/navi/search/Searcher;Ljava/util/List;)V

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/Searcher$1;->this$0:Lcom/autonavi/xm/navi/search/Searcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/search/Searcher;->preproccessSearchResult([Lcom/autonavi/navigation/api/poi/model/Poi;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/Searcher$1;->this$0:Lcom/autonavi/xm/navi/search/Searcher;

    iget-object v0, v0, Lcom/autonavi/xm/navi/search/Searcher;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const v1, 0x7f0b00a3

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0
.end method
