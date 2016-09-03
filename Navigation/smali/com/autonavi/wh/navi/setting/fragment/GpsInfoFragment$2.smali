.class Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment$2;->this$0:Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment$2;->this$0:Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->mCurLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->access$900(Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment$2;->this$0:Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->mTvGpsStatus:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->access$100(Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0b00ef

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment$2;->this$0:Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->mTvDate:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->access$200(Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment$2;->this$0:Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->mDateFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->access$1000(Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment$2;->this$0:Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->mTvTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->access$300(Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment$2;->this$0:Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->mTimeFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->access$1100(Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment$2;->this$0:Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->mTvSpeed:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->access$400(Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment$2;->this$0:Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment$2;->this$0:Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->mCurLocation:Landroid/location/Location;
    invoke-static {v2}, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->access$900(Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->getSpeed(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment$2;->this$0:Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->mTvAzimuth:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->access$500(Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment$2;->this$0:Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment$2;->this$0:Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->mCurLocation:Landroid/location/Location;
    invoke-static {v2}, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->access$900(Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->getAzimuth(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment$2;->this$0:Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->mTvCellNumber:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->access$600(Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment$2;->this$0:Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;

    iget-object v1, p0, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment$2;->this$0:Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;

    invoke-virtual {v1}, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "cell_number"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->mCellNum:I
    invoke-static {v0, v1}, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->access$1202(Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;I)I

    iget-object v0, p0, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment$2;->this$0:Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->mTvCellNumber:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->access$600(Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment$2;->this$0:Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->mCellNum:I
    invoke-static {v2}, Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;->access$1200(Lcom/autonavi/wh/navi/setting/fragment/GpsInfoFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
