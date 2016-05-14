.class public Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private list:Ljava/util/ArrayList;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;->list:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;->handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    new-instance v1, Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter$ViewHolder;-><init>(Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03000d

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f080083

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter$ViewHolder;->btnView:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, v1, Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter$ViewHolder;->btnView:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter$ViewHolder;->btnView:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter$ViewHolder;->btnView:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/base/widget/CityKeyListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0
.end method
