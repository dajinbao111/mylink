.class public Lcom/autonavi/wh/navigation/server/map/GZoomViewInfo;
.super Ljava/lang/Object;


# instance fields
.field public eViewType:Lcom/autonavi/wh/navigation/server/map/GZoomViewType;

.field public nNextDis:I

.field public nTurnID:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/autonavi/wh/navigation/server/map/GZoomViewType;->valueOf(I)Lcom/autonavi/wh/navigation/server/map/GZoomViewType;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/server/map/GZoomViewInfo;->eViewType:Lcom/autonavi/wh/navigation/server/map/GZoomViewType;

    iput p2, p0, Lcom/autonavi/wh/navigation/server/map/GZoomViewInfo;->nTurnID:I

    iput p3, p0, Lcom/autonavi/wh/navigation/server/map/GZoomViewInfo;->nNextDis:I

    return-void
.end method
