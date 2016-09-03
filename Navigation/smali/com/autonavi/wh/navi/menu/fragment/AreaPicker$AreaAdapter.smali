.class Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private mAreaInfos:Ljava/util/List;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;


# direct methods
.method public constructor <init>(Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;->this$0:Lcom/autonavi/wh/navi/menu/fragment/AreaPicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;->mAreaInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;->mAreaInfos:Ljava/util/List;

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

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;->mAreaInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;->mAreaInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/data/model/AdminArea;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;->mAreaInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;->mAreaInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/data/model/AdminArea;

    iget v0, v0, Lcom/autonavi/navigation/api/data/model/AdminArea;->adminCode:I

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;->mAreaInfos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/navigation/api/data/model/AdminArea;

    iget-object v2, v2, Lcom/autonavi/navigation/api/data/model/AdminArea;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;->mAreaInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;->mAreaInfos:Ljava/util/List;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/menu/fragment/AreaPicker$AreaAdapter;->notifyDataSetChanged()V

    return-void
.end method
