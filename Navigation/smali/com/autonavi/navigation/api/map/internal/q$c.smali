.class Lcom/autonavi/navigation/api/map/internal/q$c;
.super Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/map/internal/q;

.field private final b:Lcom/autonavi/navigation/api/map/model/LatLng;


# direct methods
.method public constructor <init>(Lcom/autonavi/navigation/api/map/internal/q;IILcom/autonavi/navigation/api/map/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/q$c;->a:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-direct {p0, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object p4, p0, Lcom/autonavi/navigation/api/map/internal/q$c;->b:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Point;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q$c;->a:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/q;->a(Lcom/autonavi/navigation/api/map/internal/q;)Lcom/autonavi/navigation/api/map/internal/l;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/q$c;->b:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/map/internal/l;->a(Lcom/autonavi/navigation/api/map/model/LatLng;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method
