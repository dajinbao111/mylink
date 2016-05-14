.class public Lcom/autonavi/xm/navi/base/widget/ListViewAction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/navi/base/widget/ActionListView$Action;


# instance fields
.field private final mIcon:I

.field private final mId:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mText:I

.field private mView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/autonavi/xm/navi/base/widget/ListViewAction;->mInflater:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/autonavi/xm/navi/base/widget/ListViewAction;->mId:I

    iput p3, p0, Lcom/autonavi/xm/navi/base/widget/ListViewAction;->mIcon:I

    iput p4, p0, Lcom/autonavi/xm/navi/base/widget/ListViewAction;->mText:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navi/base/widget/ListViewAction;->mId:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/ListViewAction;->mView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/ListViewAction;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/autonavi/xm/navi/base/widget/ListViewAction;->mView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/ListViewAction;->mView:Landroid/view/ViewGroup;

    const v1, 0x7f080065

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/autonavi/xm/navi/base/widget/ListViewAction;->mIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/ListViewAction;->mView:Landroid/view/ViewGroup;

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/autonavi/xm/navi/base/widget/ListViewAction;->mText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/ListViewAction;->mView:Landroid/view/ViewGroup;

    return-object v0
.end method
