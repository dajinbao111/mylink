.class Lcom/autonavi/navigation/api/poi/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/poi/a/a;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/poi/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/poi/a/a$1;->a:Lcom/autonavi/navigation/api/poi/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/navigation/api/poi/model/Poi;Lcom/autonavi/navigation/api/poi/model/Poi;)I
    .locals 2

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getDistance()I

    move-result v0

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/poi/model/Poi;->getDistance()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/autonavi/navigation/api/poi/model/Poi;

    check-cast p2, Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/navigation/api/poi/a/a$1;->a(Lcom/autonavi/navigation/api/poi/model/Poi;Lcom/autonavi/navigation/api/poi/model/Poi;)I

    move-result v0

    return v0
.end method
