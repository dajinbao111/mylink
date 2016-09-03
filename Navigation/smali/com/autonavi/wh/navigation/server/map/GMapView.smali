.class public Lcom/autonavi/wh/navigation/server/map/GMapView;
.super Ljava/lang/Object;


# instance fields
.field public Angle:S

.field public Bitmap:Lcom/autonavi/wh/navigation/server/map/GBitmap;

.field public Center:Lcom/autonavi/wh/navigation/server/GCoord;

.field public ZoomLevel:Lcom/autonavi/wh/navigation/server/map/GZoomLevel;

.field public eViewType:Lcom/autonavi/wh/navigation/server/map/GMapViewType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/autonavi/wh/navigation/server/GCoord;ISLcom/autonavi/wh/navigation/server/map/GBitmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->valueOf(I)Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/server/map/GMapView;->eViewType:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    iput-object p2, p0, Lcom/autonavi/wh/navigation/server/map/GMapView;->Center:Lcom/autonavi/wh/navigation/server/GCoord;

    invoke-static {p3}, Lcom/autonavi/wh/navigation/server/map/GZoomLevel;->valueOfZoom(I)Lcom/autonavi/wh/navigation/server/map/GZoomLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/server/map/GMapView;->ZoomLevel:Lcom/autonavi/wh/navigation/server/map/GZoomLevel;

    iput-short p4, p0, Lcom/autonavi/wh/navigation/server/map/GMapView;->Angle:S

    iput-object p5, p0, Lcom/autonavi/wh/navigation/server/map/GMapView;->Bitmap:Lcom/autonavi/wh/navigation/server/map/GBitmap;

    return-void
.end method
