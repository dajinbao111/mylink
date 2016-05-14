.class Lcom/autonavi/xm/navigation/engine/i$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/autonavi/xm/navigation/server/GStatus;

.field final synthetic c:Lcom/autonavi/xm/navigation/engine/i;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/i;ILcom/autonavi/xm/navigation/server/GStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/i$3;->c:Lcom/autonavi/xm/navigation/engine/i;

    iput p2, p0, Lcom/autonavi/xm/navigation/engine/i$3;->a:I

    iput-object p3, p0, Lcom/autonavi/xm/navigation/engine/i$3;->b:Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/i$3;->c:Lcom/autonavi/xm/navigation/engine/i;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/i;->a(Lcom/autonavi/xm/navigation/engine/i;)Lcom/autonavi/xm/navigation/engine/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/i$3;->c:Lcom/autonavi/xm/navigation/engine/i;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/i;->a(Lcom/autonavi/xm/navigation/engine/i;)Lcom/autonavi/xm/navigation/engine/i$a;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xm/navigation/engine/i$3;->a:I

    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/i$3;->b:Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-interface {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/i$a;->a(ILcom/autonavi/xm/navigation/server/GStatus;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/i$3;->c:Lcom/autonavi/xm/navigation/engine/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/i;->a(Lcom/autonavi/xm/navigation/engine/i;Z)Z

    return-void
.end method
