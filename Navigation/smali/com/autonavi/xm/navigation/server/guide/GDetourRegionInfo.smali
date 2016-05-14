.class public Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;
.super Ljava/lang/Object;


# instance fields
.field public Coord:Lcom/autonavi/xm/navigation/server/GCoord;

.field public EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

.field public StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

.field public eOption:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

.field public nDis:I

.field public nIndex:I

.field public szRegionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILcom/autonavi/xm/navigation/server/GCoord;ILcom/autonavi/xm/navigation/server/GDateTime;Lcom/autonavi/xm/navigation/server/GDateTime;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->nIndex:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->nDis:I

    iput-object p3, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-static {p4}, Lcom/autonavi/xm/navigation/server/guide/GDetourOption;->valueOf(I)Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->eOption:Lcom/autonavi/xm/navigation/server/guide/GDetourOption;

    iput-object p5, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->StartTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iput-object p6, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->EndTime:Lcom/autonavi/xm/navigation/server/GDateTime;

    iput-object p7, p0, Lcom/autonavi/xm/navigation/server/guide/GDetourRegionInfo;->szRegionName:Ljava/lang/String;

    return-void
.end method
