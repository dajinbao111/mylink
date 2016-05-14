.class Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$3;->this$0:Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$3;->this$0:Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mSatelliteCompass:Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;
    invoke-static {v0}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->access$700(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$3;->this$0:Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mGpsSatellites:Ljava/util/List;
    invoke-static {v1}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->access$1300(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/setting/widget/SatelliteCompass;->setSatellites(Ljava/util/List;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$3;->this$0:Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment$3;->this$0:Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;

    # getter for: Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->mGpsSatellites:Ljava/util/List;
    invoke-static {v1}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->access$1300(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;)Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->setSlots(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;->access$800(Lcom/autonavi/xm/navi/setting/fragment/GpsInfoFragment;Ljava/util/List;)V

    return-void
.end method
