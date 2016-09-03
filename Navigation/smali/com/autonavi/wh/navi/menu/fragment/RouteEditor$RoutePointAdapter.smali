.class Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;


# direct methods
.method private constructor <init>(Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter;-><init>(Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030038

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter$ViewHolder;

    invoke-direct {v1, p0, v3}, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter$ViewHolder;-><init>(Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter;Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$1;)V

    const v0, 0x7f080065

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0800b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f0800c1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter$ViewHolder;->delete:Landroid/widget/Button;

    iget-object v0, v1, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter$ViewHolder;->delete:Landroid/widget/Button;

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    iget-object v0, v0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->mPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    # getter for: Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->mListView:Lcom/autonavi/wh/navi/base/widget/CircularListView;
    invoke-static {v2}, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->access$900(Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;)Lcom/autonavi/wh/navi/base/widget/CircularListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->getCheckedItemPosition()I

    move-result v2

    add-int/lit8 v5, p1, 0x1

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    move v5, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    const v2, 0x7f020505

    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v6, v1, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter;->this$0:Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;

    iget-object v7, v2, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_3

    add-int/lit8 v2, p1, 0x56

    :goto_3
    invoke-static {v7, v2}, Lcom/autonavi/wh/navigation/res/ResUtils;->getTurningIconRes(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, v1, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter$ViewHolder;->name:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, v1, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter$ViewHolder;->delete:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter$ViewHolder;->delete:Landroid/widget/Button;

    if-eqz v0, :cond_5

    move v0, v4

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navi/menu/fragment/RouteEditor$RoutePointAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    :cond_1
    move v5, v4

    goto :goto_1

    :cond_2
    const v2, 0x7f020503

    goto :goto_2

    :cond_3
    const/16 v2, 0x5b

    goto :goto_3

    :cond_4
    move-object v2, v3

    goto :goto_4

    :cond_5
    const/16 v0, 0x8

    goto :goto_5
.end method
