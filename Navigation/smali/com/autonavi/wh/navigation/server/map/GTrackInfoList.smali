.class public Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;
.super Ljava/lang/Object;


# instance fields
.field public nNumberOfTrack:I

.field public pTrackInfo:[Lcom/autonavi/wh/navigation/server/map/GTrackInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[Lcom/autonavi/wh/navigation/server/map/GTrackInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;->nNumberOfTrack:I

    iput-object p2, p0, Lcom/autonavi/wh/navigation/server/map/GTrackInfoList;->pTrackInfo:[Lcom/autonavi/wh/navigation/server/map/GTrackInfo;

    return-void
.end method
