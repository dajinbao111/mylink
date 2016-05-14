.class Lcom/autonavi/navigation/api/route/a/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/navigation/server/guide/GJourneyNotifyCB;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Z

.field final synthetic c:Lcom/autonavi/navigation/api/route/a/e;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/route/a/e;Ljava/util/ArrayList;Z)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/route/a/e$1;->c:Lcom/autonavi/navigation/api/route/a/e;

    iput-object p2, p0, Lcom/autonavi/navigation/api/route/a/e$1;->a:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/autonavi/navigation/api/route/a/e$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GDBL_OnAddJourneyPoint([Lcom/autonavi/xm/navigation/server/guide/GRoadInfo;ILjava/lang/Object;)I
    .locals 9

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-boolean v0, p0, Lcom/autonavi/navigation/api/route/a/e$1;->b:Z

    if-eqz v0, :cond_5

    array-length v5, p1

    move v4, v3

    move v0, v3

    move v2, v3

    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v6, p1, v4

    iget v7, v6, Lcom/autonavi/xm/navigation/server/guide/GRoadInfo;->nRoadType:I

    const/16 v8, 0xa

    if-eq v7, v8, :cond_2

    iget v6, v6, Lcom/autonavi/xm/navigation/server/guide/GRoadInfo;->nRoadType:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_3

    :cond_2
    move v0, v1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    :cond_5
    :goto_3
    if-eqz v1, :cond_7

    array-length v1, p1

    move v0, v3

    :goto_4
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    iget-object v4, p0, Lcom/autonavi/navigation/api/route/a/e$1;->a:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/xm/navigation/server/guide/GRoadInfo;)Lcom/autonavi/navigation/api/route/model/Road;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v1, v3

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e$1;->a:Ljava/util/ArrayList;

    aget-object v1, p1, v3

    invoke-static {v1}, Lcom/autonavi/navigation/api/guide/a/b;->a(Lcom/autonavi/xm/navigation/server/guide/GRoadInfo;)Lcom/autonavi/navigation/api/route/model/Road;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
