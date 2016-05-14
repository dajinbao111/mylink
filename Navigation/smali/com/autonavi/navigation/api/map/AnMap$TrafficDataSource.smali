.class public Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;
.super Ljava/lang/Object;


# static fields
.field public static final NET_FAILED:I = 0x2

.field public static final NET_REQUESTFAILED:I = 0x4

.field public static final NET_TIMEOUT:I = 0x3

.field public static final NO_DATA:I = 0x1

.field public static final SUCCESS:I = 0x0

.field public static final UNKOWN:I = -0x1


# instance fields
.field public data:[B

.field public resultCode:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;->resultCode:I

    iput-object p2, p0, Lcom/autonavi/navigation/api/map/AnMap$TrafficDataSource;->data:[B

    return-void
.end method
