.class public Lcom/autonavi/xm/navigation/server/poi/GCandidateCondition;
.super Ljava/lang/Object;


# instance fields
.field public eCandidateType:Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

.field public szKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/autonavi/xm/navigation/server/poi/GCandidateType;->valueOf(I)Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navigation/server/poi/GCandidateCondition;->eCandidateType:Lcom/autonavi/xm/navigation/server/poi/GCandidateType;

    iput-object p2, p0, Lcom/autonavi/xm/navigation/server/poi/GCandidateCondition;->szKeyword:Ljava/lang/String;

    return-void
.end method
