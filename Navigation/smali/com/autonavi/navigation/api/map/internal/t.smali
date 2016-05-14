.class Lcom/autonavi/navigation/api/map/internal/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/location/a/c;

.field private final b:Landroid/hardware/SensorManager;

.field private final c:Landroid/view/Display;

.field private final d:Landroid/hardware/Sensor;

.field private final e:Lcom/autonavi/navigation/api/settings/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/navigation/api/location/a/c;Lcom/autonavi/navigation/api/settings/a/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/autonavi/navigation/api/map/internal/t;->a:Lcom/autonavi/navigation/api/location/a/c;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/t;->b:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/t;->b:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/t;->d:Landroid/hardware/Sensor;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/t;->c:Landroid/view/Display;

    iput-object p3, p0, Lcom/autonavi/navigation/api/map/internal/t;->e:Lcom/autonavi/navigation/api/settings/a/b;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/t;->e:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "disable_ecompass"

    invoke-interface {v0, v1, p1}, Lcom/autonavi/navigation/api/settings/a/b;->a(Ljava/lang/String;Z)Z

    return-void
.end method

.method public a()Z
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/t;->e:Lcom/autonavi/navigation/api/settings/a/b;

    const-string v1, "disable_ecompass"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/a/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/t;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/t;->d:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/t;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/t;->d:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/t;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/t;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    const/4 v1, 0x3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/t;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/t;->c:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/t;->a:Lcom/autonavi/navigation/api/location/a/c;

    new-instance v2, Lcom/autonavi/navigation/api/location/a/b;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {v2, v0, v3, v4}, Lcom/autonavi/navigation/api/location/a/b;-><init>(III)V

    invoke-interface {v1, v2}, Lcom/autonavi/navigation/api/location/a/c;->a(Lcom/autonavi/navigation/api/location/a/b;)Z

    :cond_0
    return-void

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
