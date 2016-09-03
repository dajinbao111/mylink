.class Lcom/autonavi/wh/navi/setting/fragment/FactorySettings$SettingAction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/wh/navi/base/widget/ActionListView$Action;


# instance fields
.field private final mId:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mView:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/autonavi/wh/navi/setting/fragment/FactorySettings;


# direct methods
.method public constructor <init>(Lcom/autonavi/wh/navi/setting/fragment/FactorySettings;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/autonavi/wh/navi/setting/fragment/FactorySettings$SettingAction;->this$0:Lcom/autonavi/wh/navi/setting/fragment/FactorySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/autonavi/wh/navi/setting/fragment/FactorySettings$SettingAction;->mId:I

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/FactorySettings$SettingAction;->mView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/FactorySettings$SettingAction;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/FactorySettings$SettingAction;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/FactorySettings$SettingAction;->mView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/FactorySettings$SettingAction;->mView:Landroid/view/ViewGroup;

    const v1, 0x7f080165

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/FactorySettings$SettingAction;->mView:Landroid/view/ViewGroup;

    const v1, 0x7f080166

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/navi/setting/fragment/FactorySettings$SettingAction;->mId:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/FactorySettings$SettingAction;->mView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setActionEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/FactorySettings$SettingAction;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    return-void
.end method
