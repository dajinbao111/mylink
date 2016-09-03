.class public Lcom/autonavi/wh/navi/search/Car4SSearch;
.super Lcom/autonavi/wh/navi/search/SearchResult;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CARSEARVICETAG:Ljava/lang/String; = "car_service_tag"


# instance fields
.field private mAdminAreaDetail:Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

.field protected mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

.field private mBtnCity:Landroid/widget/Button;

.field protected mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

.field private mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

.field onDealerQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnDealerQueryResultListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/wh/navi/search/SearchResult;-><init>()V

    new-instance v0, Lcom/autonavi/wh/navi/search/Car4SSearch$1;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/search/Car4SSearch$1;-><init>(Lcom/autonavi/wh/navi/search/Car4SSearch;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->onDealerQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnDealerQueryResultListener;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/wh/navi/search/Car4SSearch;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/search/Car4SSearch;->isOnTop()Z

    move-result v0

    return v0
.end method

.method private queryMyLocationCarDealer(Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;)V
    .locals 4

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->isMunicipality()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->adminCode:I

    div-int/lit16 v0, v0, 0x3e8

    mul-int/lit16 v0, v0, 0x3e8

    :goto_0
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->isMunicipality()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->provinceName:Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    iget-object v3, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->onDealerQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnDealerQueryResultListener;

    invoke-virtual {v2, v3}, Lcom/autonavi/navigation/api/poi/PoiManager;->addOnDealerQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnDealerQueryResultListener;)V

    new-instance v2, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;

    invoke-direct {v2}, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;-><init>()V

    invoke-virtual {v2, v0}, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->setAdminCode(I)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->setMotorCategory(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/poi/PoiManager;->queryCarDealer(Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->mBtnCity:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget v0, p1, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->adminCode:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->cityName:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "com.autonavi.xm.extra.ADMIN_AREA_INFO"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/data/model/AdminArea;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navi/search/Car4SSearch;->notifyDataChanged([Lcom/autonavi/navigation/api/poi/model/Poi;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->mBtnCity:Landroid/widget/Button;

    iget-object v2, v0, Lcom/autonavi/navigation/api/data/model/AdminArea;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;

    invoke-direct {v1}, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;-><init>()V

    iget v0, v0, Lcom/autonavi/navigation/api/data/model/AdminArea;->adminCode:I

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->setAdminCode(I)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;->setMotorCategory(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    iget-object v2, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->onDealerQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnDealerQueryResultListener;

    invoke-virtual {v0, v2}, Lcom/autonavi/navigation/api/poi/PoiManager;->addOnDealerQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnDealerQueryResultListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/PoiManager;->queryCarDealer(Lcom/autonavi/navigation/api/poi/PoiManager$DealerQuery;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    const-class v2, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "car_service_tag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/search/Car4SSearch;->startFragmentForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f08017c
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 3

    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/search/Car4SSearch;->setContentView(I)V

    const v0, 0x7f0b0120

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/search/Car4SSearch;->setTitle(I)V

    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/search/Car4SSearch;->setTitleRightContent(I)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/search/Car4SSearch;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getAnMap()Lcom/autonavi/navigation/api/map/AnMap;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getPoiManager()Lcom/autonavi/navigation/api/poi/PoiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    const v0, 0x7f08017c

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/search/Car4SSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->mBtnCity:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->mBtnCity:Landroid/widget/Button;

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {v1}, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0124

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->mBtnCity:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/search/Car4SSearch;->init()V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/map/AnMap;->getMyAdminCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/data/DataManager;->getAdminAreaDetail(I)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->mAdminAreaDetail:Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->mAdminAreaDetail:Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/search/Car4SSearch;->queryMyLocationCarDealer(Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/wh/navi/search/SearchResult;->onDestroy()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->onDealerQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnDealerQueryResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->mPoiManager:Lcom/autonavi/navigation/api/poi/PoiManager;

    iget-object v1, p0, Lcom/autonavi/wh/navi/search/Car4SSearch;->onDealerQueryResultListener:Lcom/autonavi/navigation/api/poi/PoiManager$OnDealerQueryResultListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/poi/PoiManager;->removeOnDealerQueryResultListener(Lcom/autonavi/navigation/api/poi/PoiManager$OnDealerQueryResultListener;)V

    :cond_0
    return-void
.end method
