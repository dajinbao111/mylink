.class public Lcom/autonavi/xm/navigation/server/demo/GDemoJourneyInfo;
.super Ljava/lang/Object;


# instance fields
.field public nID:I

.field public stCoord:[Lcom/autonavi/xm/navigation/server/GCoord;

.field public szJourneyName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Lcom/autonavi/xm/navigation/server/GCoord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/xm/navigation/server/demo/GDemoJourneyInfo;->szJourneyName:Ljava/lang/String;

    iput p2, p0, Lcom/autonavi/xm/navigation/server/demo/GDemoJourneyInfo;->nID:I

    iput-object p3, p0, Lcom/autonavi/xm/navigation/server/demo/GDemoJourneyInfo;->stCoord:[Lcom/autonavi/xm/navigation/server/GCoord;

    return-void
.end method
