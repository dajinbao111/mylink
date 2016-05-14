.class public final Lcom/autonavi/navigation/api/map/Projection;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/map/internal/s;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/map/internal/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/Projection;->a:Lcom/autonavi/navigation/api/map/internal/s;

    return-void
.end method


# virtual methods
.method public fromScreenLocation(Landroid/graphics/Point;)Lcom/autonavi/navigation/api/map/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/Projection;->a:Lcom/autonavi/navigation/api/map/internal/s;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/s;->a(Landroid/graphics/Point;)Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public toScreenLocation(Lcom/autonavi/navigation/api/map/model/LatLng;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/Projection;->a:Lcom/autonavi/navigation/api/map/internal/s;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/internal/s;->b(Lcom/autonavi/navigation/api/map/model/LatLng;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method
