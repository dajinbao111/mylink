.class Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPoiCategories:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

.field final synthetic this$0:Lcom/autonavi/wh/navi/around/AroundSearcherFragment;


# direct methods
.method public constructor <init>(Lcom/autonavi/wh/navi/around/AroundSearcherFragment;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->this$0:Lcom/autonavi/wh/navi/around/AroundSearcherFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->mPoiCategories:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->mPoiCategories:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->mPoiCategories:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->mPoiCategories:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->mPoiCategories:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->mPoiCategories:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->id:I

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f0800b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080065

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->mPoiCategories:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->this$0:Lcom/autonavi/wh/navi/around/AroundSearcherFragment;

    # getter for: Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mIsSubCate:Z
    invoke-static {v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->access$000(Lcom/autonavi/wh/navi/around/AroundSearcherFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->this$0:Lcom/autonavi/wh/navi/around/AroundSearcherFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v2, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->mPoiCategories:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->id:I

    invoke-static {v0, v2}, Lcom/autonavi/wh/navi/around/PoiIconUtils;->getPoiSubCategoryIconRes(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->this$0:Lcom/autonavi/wh/navi/around/AroundSearcherFragment;

    # getter for: Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mListView:Lcom/autonavi/wh/navi/base/widget/CircularListView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->access$100(Lcom/autonavi/wh/navi/around/AroundSearcherFragment;)Lcom/autonavi/wh/navi/base/widget/CircularListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->this$0:Lcom/autonavi/wh/navi/around/AroundSearcherFragment;

    # getter for: Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mListView:Lcom/autonavi/wh/navi/base/widget/CircularListView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->access$100(Lcom/autonavi/wh/navi/around/AroundSearcherFragment;)Lcom/autonavi/wh/navi/base/widget/CircularListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CircularListView;->requestFocus()Z

    :cond_1
    return-object p2

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->this$0:Lcom/autonavi/wh/navi/around/AroundSearcherFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mHost:Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    iget-object v2, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->mPoiCategories:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->id:I

    invoke-static {v0, v2}, Lcom/autonavi/wh/navi/around/PoiIconUtils;->getPoiCategoryIconRes(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method public setData([Lcom/autonavi/navigation/api/poi/model/PoiCategory;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->this$0:Lcom/autonavi/wh/navi/around/AroundSearcherFragment;

    # getter for: Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->mIsSubCate:Z
    invoke-static {v0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment;->access$000(Lcom/autonavi/wh/navi/around/AroundSearcherFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/autonavi/navigation/api/poi/model/PoiCategory;->name:Ljava/lang/String;

    const-string v1, "\u5168\u90e8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    new-array v0, v0, [Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    iput-object v0, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->mPoiCategories:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->mPoiCategories:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    add-int/lit8 v3, v0, -0x1

    aget-object v4, p1, v0

    aput-object v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->mPoiCategories:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    iput-object p1, p0, Lcom/autonavi/wh/navi/around/AroundSearcherFragment$CategoryAdapter;->mPoiCategories:[Lcom/autonavi/navigation/api/poi/model/PoiCategory;

    goto :goto_1
.end method