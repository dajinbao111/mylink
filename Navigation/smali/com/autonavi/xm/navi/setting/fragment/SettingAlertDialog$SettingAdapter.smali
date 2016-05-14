.class Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private mBooleans:[Z

.field private mContentList:Ljava/util/ArrayList;

.field private mSingleCheckedId:J

.field private final mlayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;


# direct methods
.method public constructor <init>(Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->this$0:Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->mContentList:Ljava/util/ArrayList;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->mlayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->mContentList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->mContentList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/setting/fragment/SettingItem;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->mContentList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/setting/fragment/SettingItem;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/setting/fragment/SettingItem;->getId()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    if-nez p2, :cond_0

    new-instance v1, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$ViewHolder;

    invoke-direct {v1}, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$ViewHolder;-><init>()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->mlayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030035

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f080141

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, v1, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$ViewHolder;->ctv:Landroid/widget/CheckedTextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$ViewHolder;

    iget-object v2, v0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$ViewHolder;->ctv:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xm/navi/setting/fragment/SettingItem;

    invoke-virtual {v1}, Lcom/autonavi/xm/navi/setting/fragment/SettingItem;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->this$0:Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;->mChoiceModel:I
    invoke-static {v1}, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;->access$000(Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;)I

    move-result v1

    if-ne v1, v5, :cond_2

    iget-object v0, v0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$ViewHolder;->ctv:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->this$0:Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;->mMultipleBooleans:[Z
    invoke-static {v1}, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;->access$100(Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;)[Z

    move-result-object v1

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->mBooleans:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->this$0:Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;->mSelectds:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;->access$200(Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->this$0:Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;->mChoiceModel:I
    invoke-static {v1}, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;->access$000(Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->getItemId(I)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->mSingleCheckedId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$ViewHolder;->ctv:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$ViewHolder;->ctv:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method

.method public setDataSource(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setMultipleChecked([Z)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->mBooleans:[Z

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSingleCheckedId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->mSingleCheckedId:J

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/fragment/SettingAlertDialog$SettingAdapter;->notifyDataSetChanged()V

    return-void
.end method
