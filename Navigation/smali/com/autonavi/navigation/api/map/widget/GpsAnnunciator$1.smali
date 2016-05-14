.class Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator$1;->a:Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v4, 0x9

    const/4 v3, 0x6

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator$1;->a:Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->a(Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;)I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator$1;->a:Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;

    invoke-static {v1}, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->b(Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;)I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    if-gt v0, v2, :cond_1

    sget v0, Lcom/autonavi/navigation/api/R$drawable;->ic_gps_one:I

    :goto_0
    iget-object v1, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator$1;->a:Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;

    invoke-static {v1}, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->b(Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator$1;->a:Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;

    invoke-virtual {v1, v0}, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->setImageResource(I)V

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator$1;->a:Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;

    invoke-static {v1, v0}, Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;->a(Lcom/autonavi/navigation/api/map/widget/GpsAnnunciator;I)I

    :cond_0
    return-void

    :cond_1
    if-le v0, v2, :cond_2

    if-gt v0, v3, :cond_2

    sget v0, Lcom/autonavi/navigation/api/R$drawable;->ic_gps_two:I

    goto :goto_0

    :cond_2
    if-le v0, v3, :cond_3

    if-gt v0, v4, :cond_3

    sget v0, Lcom/autonavi/navigation/api/R$drawable;->ic_gps_three:I

    goto :goto_0

    :cond_3
    if-le v0, v4, :cond_4

    const/16 v1, 0xc

    if-gt v0, v1, :cond_4

    sget v0, Lcom/autonavi/navigation/api/R$drawable;->ic_gps_four:I

    goto :goto_0

    :cond_4
    sget v0, Lcom/autonavi/navigation/api/R$drawable;->ic_gps_nogps:I

    goto :goto_0
.end method
