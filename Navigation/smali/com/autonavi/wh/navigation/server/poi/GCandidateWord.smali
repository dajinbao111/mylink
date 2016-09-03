.class public Lcom/autonavi/wh/navigation/server/poi/GCandidateWord;
.super Ljava/lang/Object;


# instance fields
.field public Length:I

.field public Reserved1:I

.field public Reserved2:S

.field public szWord:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IISLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/wh/navigation/server/poi/GCandidateWord;->Length:I

    iput p2, p0, Lcom/autonavi/wh/navigation/server/poi/GCandidateWord;->Reserved1:I

    iput-short p3, p0, Lcom/autonavi/wh/navigation/server/poi/GCandidateWord;->Reserved2:S

    iput-object p4, p0, Lcom/autonavi/wh/navigation/server/poi/GCandidateWord;->szWord:Ljava/lang/String;

    return-void
.end method
