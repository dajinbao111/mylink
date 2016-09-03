.class public Lcom/autonavi/wh/navigation/server/location/GGpsNmea;
.super Ljava/lang/Object;


# instance fields
.field public nTickTime:I

.field public szGps:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/wh/navigation/server/location/GGpsNmea;->szGps:[B

    iput p2, p0, Lcom/autonavi/wh/navigation/server/location/GGpsNmea;->nTickTime:I

    return-void
.end method
