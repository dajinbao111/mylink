.class Lcom/autonavi/wh/navi/search/SearchResult$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/search/SearchResult;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/search/SearchResult;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/search/SearchResult$1;->this$0:Lcom/autonavi/wh/navi/search/SearchResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/autonavi/navigation/api/poi/model/Poi;Lcom/autonavi/navigation/api/poi/model/Poi;)I
    .locals 2

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/poi/model/Poi;->getDistance()I

    move-result v0

    invoke-virtual {p2}, Lcom/autonavi/navigation/api/poi/model/Poi;->getDistance()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/autonavi/navigation/api/poi/model/Poi;

    check-cast p2, Lcom/autonavi/navigation/api/poi/model/Poi;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/wh/navi/search/SearchResult$1;->compare(Lcom/autonavi/navigation/api/poi/model/Poi;Lcom/autonavi/navigation/api/poi/model/Poi;)I

    move-result v0

    return v0
.end method
