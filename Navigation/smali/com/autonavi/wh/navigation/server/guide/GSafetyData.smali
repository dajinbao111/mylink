.class public Lcom/autonavi/wh/navigation/server/guide/GSafetyData;
.super Ljava/lang/Object;


# instance fields
.field public nDistance:I

.field public nFlag:I

.field public nSpeed:I

.field public nType:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/wh/navigation/server/guide/GSafetyData;->nFlag:I

    iput p2, p0, Lcom/autonavi/wh/navigation/server/guide/GSafetyData;->nType:I

    iput p3, p0, Lcom/autonavi/wh/navigation/server/guide/GSafetyData;->nSpeed:I

    iput p4, p0, Lcom/autonavi/wh/navigation/server/guide/GSafetyData;->nDistance:I

    return-void
.end method
