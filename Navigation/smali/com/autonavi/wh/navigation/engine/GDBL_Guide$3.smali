.class Lcom/autonavi/wh/navigation/engine/GDBL_Guide$3;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navigation/engine/GDBL_Guide;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navigation/engine/GDBL_Guide$3;->a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x4

    const/4 v4, 0x1

    new-array v3, v1, [J

    invoke-static {v3}, Lcom/autonavi/wh/navigation/engine/MidGuide;->a([J)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v2

    const-string v0, "Guide"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trafficRecalculateRoute RouteRecalculate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/autonavi/wh/navigation/server/GStatus;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/autonavi/navigation/api/internal/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/GDBL_Guide$3;->a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/wh/navigation/engine/GDBL_Guide;ILcom/autonavi/wh/navigation/server/GStatus;[JIZ)V

    return-void
.end method
