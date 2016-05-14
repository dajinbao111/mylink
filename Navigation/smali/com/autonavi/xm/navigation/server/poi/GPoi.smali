.class public Lcom/autonavi/xm/navigation/server/poi/GPoi;
.super Ljava/lang/Object;


# instance fields
.field public Coord:Lcom/autonavi/xm/navigation/server/GCoord;

.field public Reserved:B

.field public lAdminCode:I

.field public lCategoryID:I

.field public lDistance:I

.field public lHilightFlag:I

.field public lMatchCode:I

.field public lPoiId:I

.field public lPoiIndex:I

.field public siELatOff:S

.field public siELonOff:S

.field public szAddr:Ljava/lang/String;

.field public szName:Ljava/lang/String;

.field public szTel:Ljava/lang/String;

.field public ucFlag:B

.field public usNodeId:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/xm/navigation/server/GCoord;IIIIIISSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBS)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput p2, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lCategoryID:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lDistance:I

    iput p4, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lMatchCode:I

    iput p5, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lHilightFlag:I

    iput p6, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lAdminCode:I

    iput p7, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiId:I

    iput-short p8, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELonOff:S

    iput-short p9, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->siELatOff:S

    iput-object p10, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    iput-object p11, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    iput-object p12, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    iput p13, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lPoiIndex:I

    iput-byte p14, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->ucFlag:B

    move/from16 v0, p15

    iput-byte v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Reserved:B

    move/from16 v0, p16

    iput-short v0, p0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->usNodeId:S

    return-void
.end method
