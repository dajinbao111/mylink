.class Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/autonavi/xm/navigation/server/GStatus;

.field final synthetic b:I

.field final synthetic c:[J

.field final synthetic d:Z

.field final synthetic e:I

.field final synthetic f:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;Lcom/autonavi/xm/navigation/server/GStatus;I[JZI)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->f:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    iput-object p2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->a:Lcom/autonavi/xm/navigation/server/GStatus;

    iput p3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->b:I

    iput-object p4, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->c:[J

    iput-boolean p5, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->d:Z

    iput p6, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->a:Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v3, :cond_3

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->b:I

    new-array v2, v0, [Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->b:I

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;

    iget-object v4, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->c:[J

    aget-wide v4, v4, v0

    invoke-direct {v3, v4, v5}, Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;-><init>(J)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->d:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->e:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/MidGuide;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->b:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->c:[J

    aget-wide v3, v3, v0

    invoke-static {v3, v4}, Lcom/autonavi/xm/navigation/engine/MidGuide;->a(J)Lcom/autonavi/xm/navigation/server/GStatus;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->c:[J

    aget-wide v3, v0, v1

    invoke-static {v3, v4}, Lcom/autonavi/xm/navigation/engine/MidGuide;->e(J)Lcom/autonavi/xm/navigation/server/GStatus;

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->e:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->c:[J

    aget-wide v3, v0, v1

    invoke-static {v3, v4}, Lcom/autonavi/xm/navigation/engine/MidGuide;->d(J)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_2
    move-object v0, v2

    :cond_3
    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->f:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-static {v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->f:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-static {v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

    move-result-object v2

    iget v3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->e:I

    iget-object v4, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->a:Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-interface {v2, v3, v4, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;->GDBL_OnRouteCalculateResult(ILcom/autonavi/xm/navigation/server/GStatus;[Lcom/autonavi/xm/navigation/server/guide/GHGuideRoute;)V

    :cond_4
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/g;->a()Lcom/autonavi/xm/navigation/engine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/g;->e()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$5;->f:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->a(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;Z)Z

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/e;->a()Lcom/autonavi/xm/navigation/engine/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/e;->b(Z)V

    return-void
.end method
