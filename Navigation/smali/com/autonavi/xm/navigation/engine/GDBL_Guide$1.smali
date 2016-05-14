.class Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    iput p2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;->a:I

    iput-boolean p3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v3, v2, [J

    new-array v5, v0, [I

    iget v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0, v3, v5, v2}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a(Z[J[II)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;->c:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    iget v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;->a:I

    aget v4, v5, v4

    iget-boolean v5, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;->b:Z

    invoke-static/range {v0 .. v5}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;ILcom/autonavi/xm/navigation/server/GStatus;[JIZ)V

    return-void

    :cond_0
    move v0, v4

    goto :goto_0
.end method
