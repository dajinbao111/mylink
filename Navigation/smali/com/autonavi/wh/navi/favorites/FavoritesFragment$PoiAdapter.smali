.class Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private mPois:Ljava/util/List;

.field final synthetic this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;


# direct methods
.method private constructor <init>(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;Lcom/autonavi/wh/navi/favorites/FavoritesFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;-><init>(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->mPois:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->mPois:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->mPois:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->mPois:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->mPois:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->mPois:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-wide v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->id:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x8

    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->access$400(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$ViewHolder;

    invoke-direct {v1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$ViewHolder;-><init>()V

    const v0, 0x7f0800b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$ViewHolder;->tvName:Landroid/widget/TextView;

    const v0, 0x7f0800cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$ViewHolder;->tvAddress:Landroid/widget/TextView;

    const v0, 0x7f0800ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$ViewHolder;->chkFav:Landroid/widget/CheckBox;

    const v0, 0x7f08009e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$ViewHolder;->btnDetail:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, v1, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->mPois:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->mPois:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->mPois:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v2, v1, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$ViewHolder;->tvAddress:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->access$400(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    move-result-object v3

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->mPois:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-static {v3, v0}, Lcom/autonavi/wh/navi/base/util/Formatter;->formatBriefAddress(Landroid/content/Context;Lcom/autonavi/navigation/api/poi/model/Poi;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, v1, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$ViewHolder;->btnDetail:Landroid/widget/Button;

    const v2, 0x7f0b00c9

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v0, v1, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$ViewHolder;->btnDetail:Landroid/widget/Button;

    iget-object v2, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mIsRequestPoi:Z
    invoke-static {v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->access$600(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$ViewHolder;->btnDetail:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->access$900(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Lcom/autonavi/wh/navi/base/widget/CircularListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mListPois:Lcom/autonavi/wh/navi/base/widget/CircularListView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->access$900(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Lcom/autonavi/wh/navi/base/widget/CircularListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->requestFocus()Z

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTextDelete:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->access$1000(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mTextDelete:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->access$1000(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    :cond_2
    return-object p2

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$ViewHolder;

    move-object v1, v0

    goto/16 :goto_0

    :cond_4
    iget-object v2, v1, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$ViewHolder;->tvAddress:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->mPois:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;

    iget-object v0, v0, Lcom/autonavi/navigation/api/favorite/model/FavoritePoi;->poi:Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    # invokes: Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->isMultiChoice()Z
    invoke-static {v0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->access$700(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$ViewHolder;->btnDetail:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, v1, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$ViewHolder;->chkFav:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, v1, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$ViewHolder;->chkFav:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->this$0:Lcom/autonavi/wh/navi/favorites/FavoritesFragment;

    # getter for: Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->mCheckStatus:Landroid/util/SparseBooleanArray;
    invoke-static {v1}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment;->access$800(Lcom/autonavi/wh/navi/favorites/FavoritesFragment;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_6
    iget-object v0, v1, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$ViewHolder;->btnDetail:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, v1, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$ViewHolder;->chkFav:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, v1, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$ViewHolder;->btnDetail:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public setData(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->mPois:Ljava/util/List;

    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/wh/navi/favorites/FavoritesFragment$PoiAdapter;->mPois:Ljava/util/List;

    goto :goto_0
.end method
