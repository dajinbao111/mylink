.class Lcom/autonavi/wh/navigation/engine/GDBL_Guide$2;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navigation/engine/GDBL_Guide;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navigation/engine/GDBL_Guide$2;->a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v4, 0x1

    const/4 v0, 0x4

    new-array v3, v0, [J

    invoke-static {v3}, Lcom/autonavi/wh/navigation/engine/MidGuide;->a([J)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v2

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/GDBL_Guide$2;->a:Lcom/autonavi/wh/navigation/engine/GDBL_Guide;

    const/4 v1, 0x2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/autonavi/wh/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/wh/navigation/engine/GDBL_Guide;ILcom/autonavi/wh/navigation/server/GStatus;[JIZ)V

    return-void
.end method
