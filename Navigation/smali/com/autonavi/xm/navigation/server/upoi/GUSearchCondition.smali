.class public Lcom/autonavi/xm/navigation/server/upoi/GUSearchCondition;
.super Ljava/lang/Object;


# instance fields
.field public Coord:Lcom/autonavi/xm/navigation/server/GCoord;

.field public eCategory:I

.field public eSearchType:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

.field public nAdminCode:I

.field public nAroundRange:I

.field public szKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/xm/navigation/server/poi/GSearchType;IILcom/autonavi/xm/navigation/server/GCoord;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/xm/navigation/server/upoi/GUSearchCondition;->eSearchType:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    iput p2, p0, Lcom/autonavi/xm/navigation/server/upoi/GUSearchCondition;->nAdminCode:I

    iput p3, p0, Lcom/autonavi/xm/navigation/server/upoi/GUSearchCondition;->nAroundRange:I

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/upoi/GUSearchCondition;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput p5, p0, Lcom/autonavi/xm/navigation/server/upoi/GUSearchCondition;->eCategory:I

    iput-object p6, p0, Lcom/autonavi/xm/navigation/server/upoi/GUSearchCondition;->szKeyword:Ljava/lang/String;

    return-void
.end method
