.class public Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFormatter:Lcom/autonavi/xm/navi/base/util/Formatter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsShowDetailAddress:Z

.field private mIsShowPhone:Z

.field private mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mIsShowDetailAddress:Z

    iput-boolean v0, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mIsShowPhone:Z

    iput-object p1, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/autonavi/xm/navi/base/util/Formatter;

    invoke-direct {v0, p1}, Lcom/autonavi/xm/navi/base/util/Formatter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mFormatter:Lcom/autonavi/xm/navi/base/util/Formatter;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getId()Lcom/autonavi/navigation/api/internal/ObjectId;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/internal/ObjectId;->objectId:I

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const v4, 0x7f0800cb

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03003c

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f080161

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/autonavi/navigation/api/poi/model/Poi;->getCategory()I

    move-result v3

    invoke-static {v1, v3}, Lcom/autonavi/xm/navi/search/PoiIconUtils;->getPoiSubCategoryIconRes(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0800b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mIsShowPhone:Z

    if-eqz v0, :cond_6

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    iget-object v1, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAdminCode()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v1

    iget-object v3, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/autonavi/navigation/api/data/DataManager;->getAdminCode(Lcom/autonavi/navigation/api/map/model/LatLng;)I

    move-result v1

    iget-object v3, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->setAdminCode(I)Lcom/autonavi/navigation/api/poi/model/Poi;

    :cond_1
    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/navigation/api/AnApi;->getDataManager()Lcom/autonavi/navigation/api/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/autonavi/navigation/api/data/DataManager;->getAdminAreaDetail(I)Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;

    move-result-object v1

    if-eqz v1, :cond_8

    iget v1, v1, Lcom/autonavi/navigation/api/data/model/AdminAreaDetail;->areaCode:I

    :goto_0
    const/16 v2, 0x354

    if-eq v1, v2, :cond_2

    const/16 v2, 0x355

    if-ne v1, v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/poi/model/Poi;->getTel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/poi/model/Poi;->getTel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/poi/model/Poi;->getTel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const v0, 0x7f0800b7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mFormatter:Lcom/autonavi/xm/navi/base/util/Formatter;

    iget-object v2, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/poi/model/Poi;->getDistance()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navi/base/util/Formatter;->getDistance(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2

    :cond_3
    if-eqz v1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v1, ""

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getTel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mIsShowDetailAddress:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAddress()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Lcom/autonavi/xm/navi/base/util/Formatter;->formatBriefAddress(Landroid/content/Context;Lcom/autonavi/navigation/api/poi/model/Poi;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_8
    move v1, v2

    goto/16 :goto_0
.end method

.method public isShowPhone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mIsShowPhone:Z

    return-void
.end method

.method public setData([Lcom/autonavi/navigation/api/poi/model/Poi;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mPois:[Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public toggleShowDetailAddress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navi/search/SearchResult$PoiListAdapter;->mIsShowDetailAddress:Z

    return-void
.end method
