.class public Lcom/autonavi/wh/navigation/server/poi/GCandidateChar;
.super Ljava/lang/Object;


# instance fields
.field public NumberOfPOI:I

.field public Reserved:S

.field public wCharCode:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(SSI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/autonavi/wh/navigation/server/poi/GCandidateChar;->wCharCode:S

    iput-short p2, p0, Lcom/autonavi/wh/navigation/server/poi/GCandidateChar;->Reserved:S

    iput p3, p0, Lcom/autonavi/wh/navigation/server/poi/GCandidateChar;->NumberOfPOI:I

    return-void
.end method
