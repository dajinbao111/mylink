.class Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$1;->this$0:Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$1;->this$0:Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mStatus:I
    invoke-static {v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->access$000(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$1;->this$0:Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvGpsStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->access$100(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b00f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$1;->this$0:Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvDate:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->access$200(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$1;->this$0:Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->access$300(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$1;->this$0:Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvSpeed:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->access$400(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$1;->this$0:Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvAzimuth:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->access$500(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$1;->this$0:Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvCellNumber:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->access$600(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$1;->this$0:Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvCellNumber:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->access$600(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$1;->this$0:Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mSatelliteCompass:Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;
    invoke-static {v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->access$700(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->setSatellites(Ljava/util/List;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$1;->this$0:Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;

    # invokes: Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->setSlots(Ljava/util/List;)V
    invoke-static {v0, v2}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->access$800(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$1;->this$0:Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mTvGpsStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->access$100(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
