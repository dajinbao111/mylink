.class public Lcom/autonavi/wh/navigation/server/GTime;
.super Ljava/lang/Object;


# instance fields
.field public hour:B

.field public minute:B

.field public second:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BBB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/autonavi/wh/navigation/server/GTime;->hour:B

    iput-byte p2, p0, Lcom/autonavi/wh/navigation/server/GTime;->minute:B

    iput-byte p3, p0, Lcom/autonavi/wh/navigation/server/GTime;->second:B

    return-void
.end method
