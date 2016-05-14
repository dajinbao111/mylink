.class public Lcom/autonavi/xm/navigation/server/guide/GExpressWayList;
.super Ljava/lang/Object;


# instance fields
.field public nNumberOfExpressWayGateInfo:I

.field public pExpressWayGateInfo:[Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/guide/GExpressWayList;->nNumberOfExpressWayGateInfo:I

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/guide/GExpressWayList;->pExpressWayGateInfo:[Lcom/autonavi/xm/navigation/server/guide/GExpressWayInfo;

    return-void
.end method
