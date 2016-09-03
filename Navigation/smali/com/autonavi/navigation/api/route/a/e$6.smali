.class Lcom/autonavi/navigation/api/route/a/e$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/wh/navigation/server/guide/GJourneyNotifyCB;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/route/model/Road;

.field final synthetic b:Lcom/autonavi/navigation/api/route/a/e;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/route/a/e;Lcom/autonavi/navigation/api/route/model/Road;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/route/a/e$6;->b:Lcom/autonavi/navigation/api/route/a/e;

    iput-object p2, p0, Lcom/autonavi/navigation/api/route/a/e$6;->a:Lcom/autonavi/navigation/api/route/model/Road;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GDBL_OnAddJourneyPoint([Lcom/autonavi/wh/navigation/server/guide/GRoadInfo;ILjava/lang/Object;)I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/navigation/api/route/a/e$6;->a:Lcom/autonavi/navigation/api/route/model/Road;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    iget v2, v2, Lcom/autonavi/wh/navigation/server/guide/GRoadInfo;->nID:I

    iget-object v3, p0, Lcom/autonavi/navigation/api/route/a/e$6;->a:Lcom/autonavi/navigation/api/route/model/Road;

    iget-object v3, v3, Lcom/autonavi/navigation/api/route/model/Road;->id:Lcom/autonavi/navigation/api/internal/ObjectId;

    iget v3, v3, Lcom/autonavi/navigation/api/internal/ObjectId;->objectId:I

    if-ne v2, v3, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
