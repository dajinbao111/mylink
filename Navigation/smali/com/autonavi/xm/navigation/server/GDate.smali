.class public Lcom/autonavi/xm/navigation/server/GDate;
.super Ljava/lang/Object;


# instance fields
.field public day:B

.field public month:B

.field public year:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BBB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/autonavi/xm/navigation/server/GDate;->year:B

    iput-byte p2, p0, Lcom/autonavi/xm/navigation/server/GDate;->month:B

    iput-byte p3, p0, Lcom/autonavi/xm/navigation/server/GDate;->day:B

    return-void
.end method
