.class Lcom/autonavi/navigation/api/location/LocationManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/location/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/location/LocationManager$3;->a:Lcom/autonavi/navigation/api/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager$3;->a:Lcom/autonavi/navigation/api/location/LocationManager;

    # setter for: Lcom/autonavi/navigation/api/location/LocationManager;->p:I
    invoke-static {v0, p1}, Lcom/autonavi/navigation/api/location/LocationManager;->access$802(Lcom/autonavi/navigation/api/location/LocationManager;I)I

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager$3;->a:Lcom/autonavi/navigation/api/location/LocationManager;

    # getter for: Lcom/autonavi/navigation/api/location/LocationManager;->e:Lcom/autonavi/navigation/api/location/LocationManager$a;
    invoke-static {v0}, Lcom/autonavi/navigation/api/location/LocationManager;->access$700(Lcom/autonavi/navigation/api/location/LocationManager;)Lcom/autonavi/navigation/api/location/LocationManager$a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/location/LocationManager$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
