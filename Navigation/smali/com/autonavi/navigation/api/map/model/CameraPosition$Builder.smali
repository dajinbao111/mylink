.class public final Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/autonavi/navigation/api/map/model/MapMode;

.field private b:Lcom/autonavi/navigation/api/map/model/LatLng;

.field private c:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/navigation/api/map/model/CameraPosition;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->target:Lcom/autonavi/navigation/api/map/model/LatLng;

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->target(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    move-result-object v0

    iget v1, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->bearing:I

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->bearing(I)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    move-result-object v0

    iget v1, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->tilt:I

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->tilt(I)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/autonavi/navigation/api/map/model/CameraPosition;->zoom:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->zoom(Lcom/autonavi/navigation/api/map/model/ZoomLevel;)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;

    return-void
.end method


# virtual methods
.method public bearing(I)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->e:I

    return-object p0
.end method

.method public build()Lcom/autonavi/navigation/api/map/model/CameraPosition;
    .locals 6

    new-instance v0, Lcom/autonavi/navigation/api/map/model/CameraPosition;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->a:Lcom/autonavi/navigation/api/map/model/MapMode;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->b:Lcom/autonavi/navigation/api/map/model/LatLng;

    iget-object v3, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->c:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    iget v4, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->d:I

    iget v5, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->e:I

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/navigation/api/map/model/CameraPosition;-><init>(Lcom/autonavi/navigation/api/map/model/MapMode;Lcom/autonavi/navigation/api/map/model/LatLng;Lcom/autonavi/navigation/api/map/model/ZoomLevel;II)V

    return-object v0
.end method

.method public mode(Lcom/autonavi/navigation/api/map/model/MapMode;)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->a:Lcom/autonavi/navigation/api/map/model/MapMode;

    return-object p0
.end method

.method public target(Lcom/autonavi/navigation/api/map/model/LatLng;)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->b:Lcom/autonavi/navigation/api/map/model/LatLng;

    return-object p0
.end method

.method public tilt(I)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->d:I

    return-object p0
.end method

.method public zoom(Lcom/autonavi/navigation/api/map/model/ZoomLevel;)Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/model/CameraPosition$Builder;->c:Lcom/autonavi/navigation/api/map/model/ZoomLevel;

    return-object p0
.end method
