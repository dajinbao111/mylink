.class public Lcom/autonavi/wh/navigation/server/map/GCustomElement;
.super Ljava/lang/Object;


# instance fields
.field public pImage:Lcom/autonavi/wh/navigation/server/map/GBitmap;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/wh/navigation/server/map/GBitmap;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/wh/navigation/server/map/GCustomElement;->pImage:Lcom/autonavi/wh/navigation/server/map/GBitmap;

    iput p2, p0, Lcom/autonavi/wh/navigation/server/map/GCustomElement;->x:I

    iput p3, p0, Lcom/autonavi/wh/navigation/server/map/GCustomElement;->y:I

    return-void
.end method
