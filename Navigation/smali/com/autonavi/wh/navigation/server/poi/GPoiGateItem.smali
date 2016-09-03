.class public Lcom/autonavi/wh/navigation/server/poi/GPoiGateItem;
.super Ljava/lang/Object;


# instance fields
.field public Coord:Lcom/autonavi/wh/navigation/server/GCoord;

.field public eGateType:Lcom/autonavi/wh/navigation/server/poi/GPoiGateType;

.field public siX:S

.field public siY:S

.field public szGateName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ISSLcom/autonavi/wh/navigation/server/GCoord;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/autonavi/wh/navigation/server/poi/GPoiGateType;->valueOf(I)Lcom/autonavi/wh/navigation/server/poi/GPoiGateType;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/server/poi/GPoiGateItem;->eGateType:Lcom/autonavi/wh/navigation/server/poi/GPoiGateType;

    iput-short p2, p0, Lcom/autonavi/wh/navigation/server/poi/GPoiGateItem;->siX:S

    iput-short p3, p0, Lcom/autonavi/wh/navigation/server/poi/GPoiGateItem;->siY:S

    iput-object p4, p0, Lcom/autonavi/wh/navigation/server/poi/GPoiGateItem;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iput-object p5, p0, Lcom/autonavi/wh/navigation/server/poi/GPoiGateItem;->szGateName:Ljava/lang/String;

    return-void
.end method
