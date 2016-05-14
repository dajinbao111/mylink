.class Lcom/autonavi/navigation/api/location/LocationManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$NmeaListener;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/location/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/location/LocationManager$1;->a:Lcom/autonavi/navigation/api/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/location/LocationManager$1;->a:Lcom/autonavi/navigation/api/location/LocationManager;

    # getter for: Lcom/autonavi/navigation/api/location/LocationManager;->a:Lcom/autonavi/navigation/api/location/a/c;
    invoke-static {v0}, Lcom/autonavi/navigation/api/location/LocationManager;->access$000(Lcom/autonavi/navigation/api/location/LocationManager;)Lcom/autonavi/navigation/api/location/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/location/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Nmea"

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/navigation/api/internal/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
