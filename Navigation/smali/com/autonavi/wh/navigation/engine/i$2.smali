.class Lcom/autonavi/wh/navigation/engine/i$2;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/autonavi/wh/navigation/server/GCoord;

.field final synthetic b:Lcom/autonavi/wh/navigation/engine/i;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navigation/engine/i;Lcom/autonavi/wh/navigation/server/GCoord;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navigation/engine/i$2;->b:Lcom/autonavi/wh/navigation/engine/i;

    iput-object p2, p0, Lcom/autonavi/wh/navigation/engine/i$2;->a:Lcom/autonavi/wh/navigation/server/GCoord;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/i$2;->a:Lcom/autonavi/wh/navigation/server/GCoord;

    invoke-static {v0}, Lcom/autonavi/wh/navigation/engine/MidPoi;->a(Lcom/autonavi/wh/navigation/server/GCoord;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/i$2;->b:Lcom/autonavi/wh/navigation/engine/i;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/autonavi/wh/navigation/engine/i;->a(Lcom/autonavi/wh/navigation/engine/i;ILcom/autonavi/wh/navigation/server/GStatus;)V

    return-void
.end method