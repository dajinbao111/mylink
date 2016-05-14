.class public abstract Lcom/autonavi/navigation/api/map/internal/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/map/internal/l;


# static fields
.field public static a:Z


# instance fields
.field private final b:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/autonavi/navigation/api/map/internal/c;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/c$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/navigation/api/map/internal/c$1;-><init>(Lcom/autonavi/navigation/api/map/internal/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/c;->b:Landroid/os/Handler;

    return-void
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/autonavi/navigation/api/map/internal/c;->a:Z

    return v0
.end method


# virtual methods
.method public a()Z
    .locals 4

    const/16 v3, 0x1001

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/c;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/c;->b:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/navigation/api/map/model/CameraPosition;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/c;->k()Lcom/autonavi/navigation/api/map/model/CameraPosition;

    move-result-object v0

    iget-object v1, v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    iget-object v2, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    invoke-virtual {p0, v1}, Lcom/autonavi/navigation/api/map/internal/c;->a(Lcom/autonavi/navigation/api/map/model/ZoomLevel;)Z

    :cond_0
    iget-object v1, v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->mode:Lcom/autonavi/navigation/api/map/model/MapMode;

    iget-object v2, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->mode:Lcom/autonavi/navigation/api/map/model/MapMode;

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->mode:Lcom/autonavi/navigation/api/map/model/MapMode;

    invoke-virtual {p0, v1}, Lcom/autonavi/navigation/api/map/internal/c;->a(Lcom/autonavi/navigation/api/map/model/MapMode;)Z

    :cond_1
    iget-object v1, v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->target:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget-object v2, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->target:Lcom/autonavi/navigation/api/map/model/LatLng;

    if-eq v1, v2, :cond_2

    iget-object v1, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->target:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p0, v1}, Lcom/autonavi/navigation/api/map/internal/c;->b(Lcom/autonavi/navigation/api/map/model/LatLng;)Z

    :cond_2
    iget v1, v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->tilt:I

    iget v2, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->tilt:I

    if-eq v1, v2, :cond_3

    iget v1, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->tilt:I

    invoke-virtual {p0, v1}, Lcom/autonavi/navigation/api/map/internal/c;->c(I)Z

    :cond_3
    iget v0, v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;->bearing:I

    iget v1, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->bearing:I

    if-eq v0, v1, :cond_4

    iget v0, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->bearing:I

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/internal/c;->a(I)Z

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public abstract b()V
.end method
