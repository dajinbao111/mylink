.class public Lcom/autonavi/xm/navigation/server/poi/G4SDealerInfo;
.super Ljava/lang/Object;


# instance fields
.field public Coord:Lcom/autonavi/xm/navigation/server/GCoord;

.field public eDealerType:I

.field public eMotorType:I

.field public lDistance:I

.field public nAdminCode:I

.field public nID:I

.field public siLatOff:S

.field public siLonOff:S

.field public szAddr:Ljava/lang/String;

.field public szFax:Ljava/lang/String;

.field public szName:Ljava/lang/String;

.field public szTel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILcom/autonavi/xm/navigation/server/GCoord;SSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/poi/G4SDealerInfo;->nID:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/poi/G4SDealerInfo;->nAdminCode:I

    iput-object p3, p0, Lcom/autonavi/xm/navigation/server/poi/G4SDealerInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput-short p4, p0, Lcom/autonavi/xm/navigation/server/poi/G4SDealerInfo;->siLonOff:S

    iput-short p5, p0, Lcom/autonavi/xm/navigation/server/poi/G4SDealerInfo;->siLatOff:S

    iput-object p6, p0, Lcom/autonavi/xm/navigation/server/poi/G4SDealerInfo;->szName:Ljava/lang/String;

    iput-object p7, p0, Lcom/autonavi/xm/navigation/server/poi/G4SDealerInfo;->szAddr:Ljava/lang/String;

    iput-object p8, p0, Lcom/autonavi/xm/navigation/server/poi/G4SDealerInfo;->szTel:Ljava/lang/String;

    iput-object p9, p0, Lcom/autonavi/xm/navigation/server/poi/G4SDealerInfo;->szFax:Ljava/lang/String;

    iput p10, p0, Lcom/autonavi/xm/navigation/server/poi/G4SDealerInfo;->eDealerType:I

    iput p11, p0, Lcom/autonavi/xm/navigation/server/poi/G4SDealerInfo;->eMotorType:I

    iput p12, p0, Lcom/autonavi/xm/navigation/server/poi/G4SDealerInfo;->lDistance:I

    return-void
.end method
