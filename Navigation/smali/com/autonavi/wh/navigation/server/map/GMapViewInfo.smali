.class public Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;
.super Ljava/lang/Object;


# instance fields
.field public MapCenter:Lcom/autonavi/wh/navigation/server/GCoord;

.field public eMapMode:Lcom/autonavi/wh/navigation/server/map/GMapViewMode;

.field public eScaleLevel:Lcom/autonavi/wh/navigation/server/map/GZoomLevel;

.field public eViewType:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

.field public lScaleValue:I

.field public nMapAngle:I

.field public nMinPitchAngle:I

.field public nPitchAngle:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIILcom/autonavi/wh/navigation/server/GCoord;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/autonavi/wh/navigation/server/map/GMapViewType;->valueOf(I)Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;->eViewType:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    invoke-static {p2}, Lcom/autonavi/wh/navigation/server/map/GZoomLevel;->valueOfNative(I)Lcom/autonavi/wh/navigation/server/map/GZoomLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;->eScaleLevel:Lcom/autonavi/wh/navigation/server/map/GZoomLevel;

    iput p3, p0, Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;->lScaleValue:I

    iput p4, p0, Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;->nPitchAngle:I

    iput p5, p0, Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;->nMapAngle:I

    iput p6, p0, Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;->nMinPitchAngle:I

    invoke-static {p7}, Lcom/autonavi/wh/navigation/server/map/GMapViewMode;->valueOf(I)Lcom/autonavi/wh/navigation/server/map/GMapViewMode;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;->eMapMode:Lcom/autonavi/wh/navigation/server/map/GMapViewMode;

    iput-object p8, p0, Lcom/autonavi/wh/navigation/server/map/GMapViewInfo;->MapCenter:Lcom/autonavi/wh/navigation/server/GCoord;

    return-void
.end method
