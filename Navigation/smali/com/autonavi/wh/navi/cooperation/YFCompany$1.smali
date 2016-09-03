.class Lcom/autonavi/wh/navi/cooperation/YFCompany$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/cooperation/YFCompany;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/cooperation/YFCompany;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/cooperation/YFCompany$1;->this$0:Lcom/autonavi/wh/navi/cooperation/YFCompany;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getLocationManager()Lcom/autonavi/navigation/api/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/cooperation/YFCompany$1;->this$0:Lcom/autonavi/wh/navi/cooperation/YFCompany;

    iget-object v1, v1, Lcom/autonavi/wh/navi/cooperation/YFCompany;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/a/a/a;->a(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    int-to-double v1, v1

    const-wide v3, 0x3feb333333333333L    # 0.85

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const-string v2, "YFCompany"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " set speed to api speed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/autonavi/wh/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3e8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/autonavi/navigation/api/location/LocationManager;->putPulseData(IIJ)Z

    iget-object v0, p0, Lcom/autonavi/wh/navi/cooperation/YFCompany$1;->this$0:Lcom/autonavi/wh/navi/cooperation/YFCompany;

    # getter for: Lcom/autonavi/wh/navi/cooperation/YFCompany;->mSpeedHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/autonavi/wh/navi/cooperation/YFCompany;->access$000(Lcom/autonavi/wh/navi/cooperation/YFCompany;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navi/cooperation/YFCompany$1;->this$0:Lcom/autonavi/wh/navi/cooperation/YFCompany;

    iget-object v1, v1, Lcom/autonavi/wh/navi/cooperation/YFCompany;->speedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
