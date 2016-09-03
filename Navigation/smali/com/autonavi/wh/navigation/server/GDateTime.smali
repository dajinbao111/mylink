.class public Lcom/autonavi/wh/navigation/server/GDateTime;
.super Ljava/lang/Object;


# instance fields
.field public date:Lcom/autonavi/wh/navigation/server/GDate;

.field public time:Lcom/autonavi/wh/navigation/server/GTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/wh/navigation/server/GDate;Lcom/autonavi/wh/navigation/server/GTime;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/wh/navigation/server/GDateTime;->date:Lcom/autonavi/wh/navigation/server/GDate;

    iput-object p2, p0, Lcom/autonavi/wh/navigation/server/GDateTime;->time:Lcom/autonavi/wh/navigation/server/GTime;

    return-void
.end method
