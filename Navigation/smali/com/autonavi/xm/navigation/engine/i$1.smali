.class Lcom/autonavi/xm/navigation/engine/i$1;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

.field final synthetic b:Lcom/autonavi/xm/navigation/engine/i;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/i;Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/i$1;->b:Lcom/autonavi/xm/navigation/engine/i;

    iput-object p2, p0, Lcom/autonavi/xm/navigation/engine/i$1;->a:Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/i$1;->a:Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/MidPoi;->b(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/i$1;->b:Lcom/autonavi/xm/navigation/engine/i;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/autonavi/xm/navigation/engine/i;->a(Lcom/autonavi/xm/navigation/engine/i;ILcom/autonavi/xm/navigation/server/GStatus;)V

    return-void
.end method
