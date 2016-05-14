.class public Lcom/autonavi/xm/navigation/server/GCoord;
.super Ljava/lang/Object;


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iput p2, p0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    return-void
.end method
