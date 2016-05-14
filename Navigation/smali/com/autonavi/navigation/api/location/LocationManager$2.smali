.class Lcom/autonavi/navigation/api/location/LocationManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/location/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/location/LocationManager$2;->a:Lcom/autonavi/navigation/api/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager$2;->a:Lcom/autonavi/navigation/api/location/LocationManager;

    # getter for: Lcom/autonavi/navigation/api/location/LocationManager;->e:Lcom/autonavi/navigation/api/location/LocationManager$a;
    invoke-static {v0}, Lcom/autonavi/navigation/api/location/LocationManager;->access$700(Lcom/autonavi/navigation/api/location/LocationManager;)Lcom/autonavi/navigation/api/location/LocationManager$a;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/navigation/api/location/LocationManager$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager$2;->a:Lcom/autonavi/navigation/api/location/LocationManager;

    # invokes: Lcom/autonavi/navigation/api/location/LocationManager;->setLocationStatus(I)V
    invoke-static {v0, p2}, Lcom/autonavi/navigation/api/location/LocationManager;->access$600(Lcom/autonavi/navigation/api/location/LocationManager;I)V

    return-void
.end method
