.class public Lcom/autonavi/wh/navigation/server/map/GSelectParam;
.super Ljava/lang/Object;


# instance fields
.field public eCmd:I

.field public eViewType:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

.field public pos:Lcom/autonavi/wh/navigation/server/GCoord;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/wh/navigation/server/map/GMapViewType;Lcom/autonavi/wh/navigation/server/GCoord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/wh/navigation/server/map/GSelectParam;->eViewType:Lcom/autonavi/wh/navigation/server/map/GMapViewType;

    iput-object p2, p0, Lcom/autonavi/wh/navigation/server/map/GSelectParam;->pos:Lcom/autonavi/wh/navigation/server/GCoord;

    iput p3, p0, Lcom/autonavi/wh/navigation/server/map/GSelectParam;->eCmd:I

    return-void
.end method
