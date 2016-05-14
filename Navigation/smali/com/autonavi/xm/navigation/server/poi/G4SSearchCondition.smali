.class public Lcom/autonavi/xm/navigation/server/poi/G4SSearchCondition;
.super Ljava/lang/Object;


# instance fields
.field public Coord:Lcom/autonavi/xm/navigation/server/GCoord;

.field public eMotorType:I

.field public nAdminCode:I

.field public nAroundRange:I

.field public szKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/autonavi/xm/navigation/server/GCoord;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/poi/G4SSearchCondition;->nAdminCode:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/poi/G4SSearchCondition;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput p3, p0, Lcom/autonavi/xm/navigation/server/poi/G4SSearchCondition;->nAroundRange:I

    iput p4, p0, Lcom/autonavi/xm/navigation/server/poi/G4SSearchCondition;->eMotorType:I

    iput-object p5, p0, Lcom/autonavi/xm/navigation/server/poi/G4SSearchCondition;->szKeyword:Ljava/lang/String;

    return-void
.end method
