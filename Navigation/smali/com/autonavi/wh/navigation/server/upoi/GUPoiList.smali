.class public Lcom/autonavi/wh/navigation/server/upoi/GUPoiList;
.super Ljava/lang/Object;


# instance fields
.field public nNumberOfItem:I

.field public pUPOI:[Lcom/autonavi/wh/navigation/server/upoi/GUPoi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/autonavi/wh/navigation/server/upoi/GUPoi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/wh/navigation/server/upoi/GUPoiList;->nNumberOfItem:I

    iput-object p2, p0, Lcom/autonavi/wh/navigation/server/upoi/GUPoiList;->pUPOI:[Lcom/autonavi/wh/navigation/server/upoi/GUPoi;

    return-void
.end method
