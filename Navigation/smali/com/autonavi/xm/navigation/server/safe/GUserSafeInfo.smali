.class public Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;
.super Ljava/lang/Object;


# instance fields
.field public Date:Lcom/autonavi/xm/navigation/server/GDate;

.field public Time:Lcom/autonavi/xm/navigation/server/GTime;

.field public coord:Lcom/autonavi/xm/navigation/server/GCoord;

.field public eCategory:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

.field public lAdminCode:I

.field public nAngle:S

.field public nIndex:I

.field public nSpeed:S

.field public szName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIILcom/autonavi/xm/navigation/server/GCoord;SSLjava/lang/String;Lcom/autonavi/xm/navigation/server/GDate;Lcom/autonavi/xm/navigation/server/GTime;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nIndex:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->lAdminCode:I

    invoke-static {p3}, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->valueOf(I)Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->eCategory:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    iput-object p4, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput-short p5, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nSpeed:S

    iput-short p6, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nAngle:S

    iput-object p7, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->szName:Ljava/lang/String;

    iput-object p8, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Date:Lcom/autonavi/xm/navigation/server/GDate;

    iput-object p9, p0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->Time:Lcom/autonavi/xm/navigation/server/GTime;

    return-void
.end method
