.class Lcom/autonavi/xm/navi/around/AroundSearcherFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/poi/PoiManager$OnPoiQueryResultListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/around/AroundSearcherFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/around/AroundSearcherFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/around/AroundSearcherFragment$1;->this$0:Lcom/autonavi/xm/navi/around/AroundSearcherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPoiQueryResult(Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;)V
    .locals 3

    const v2, 0x7f0b00a3

    iget-object v0, p0, Lcom/autonavi/xm/navi/around/AroundSearcherFragment$1;->this$0:Lcom/autonavi/xm/navi/around/AroundSearcherFragment;

    # invokes: Lcom/autonavi/xm/navi/around/AroundSearcherFragment;->isOnTop()Z
    invoke-static {v0}, Lcom/autonavi/xm/navi/around/AroundSearcherFragment;->access$200(Lcom/autonavi/xm/navi/around/AroundSearcherFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/around/AroundSearcherFragment$1;->this$0:Lcom/autonavi/xm/navi/around/AroundSearcherFragment;

    # getter for: Lcom/autonavi/xm/navi/around/AroundSearcherFragment;->mDlgSearching:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/xm/navi/around/AroundSearcherFragment;->access$300(Lcom/autonavi/xm/navi/around/AroundSearcherFragment;)Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/around/AroundSearcherFragment$1;->this$0:Lcom/autonavi/xm/navi/around/AroundSearcherFragment;

    # getter for: Lcom/autonavi/xm/navi/around/AroundSearcherFragment;->mDlgSearching:Lcom/autonavi/xm/navigation/app/NaviDialogFragment;
    invoke-static {v0}, Lcom/autonavi/xm/navi/around/AroundSearcherFragment;->access$300(Lcom/autonavi/xm/navi/around/AroundSearcherFragment;)Lcom/autonavi/xm/navigation/app/NaviDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/around/AroundSearcherFragment$1;->this$0:Lcom/autonavi/xm/navi/around/AroundSearcherFragment;

    const/4 v1, 0x0

    # invokes: Lcom/autonavi/xm/navi/around/AroundSearcherFragment;->dismissDialog(I)V
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/around/AroundSearcherFragment;->access$400(Lcom/autonavi/xm/navi/around/AroundSearcherFragment;I)V

    :cond_1
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;->getPois()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;->getPois()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/PoiManager$PoiQueryResult;->getPois()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/navigation/api/poi/model/Poi;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/around/AroundSearcherFragment$1;->this$0:Lcom/autonavi/xm/navi/around/AroundSearcherFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/around/AroundSearcherFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/xm/navi/around/AroundSearcherFragment$1;->this$0:Lcom/autonavi/xm/navi/around/AroundSearcherFragment;

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navi/around/AroundSearcherFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/autonavi/xm/navi/around/AroundSearcherFragment$1;->this$0:Lcom/autonavi/xm/navi/around/AroundSearcherFragment;

    # invokes: Lcom/autonavi/xm/navi/around/AroundSearcherFragment;->showPoiData([Lcom/autonavi/navigation/api/poi/model/Poi;)V
    invoke-static {v1, v0}, Lcom/autonavi/xm/navi/around/AroundSearcherFragment;->access$500(Lcom/autonavi/xm/navi/around/AroundSearcherFragment;[Lcom/autonavi/navigation/api/poi/model/Poi;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xm/navi/around/AroundSearcherFragment$1;->this$0:Lcom/autonavi/xm/navi/around/AroundSearcherFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/around/AroundSearcherFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/xm/navi/around/AroundSearcherFragment$1;->this$0:Lcom/autonavi/xm/navi/around/AroundSearcherFragment;

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navi/around/AroundSearcherFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method
