.class Lcom/autonavi/navigation/api/map/internal/q$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/map/AnMap$MarkerInfoWindowAdapter;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/map/internal/q;


# direct methods
.method private constructor <init>(Lcom/autonavi/navigation/api/map/internal/q;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/q$a;->a:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/navigation/api/map/internal/q;Lcom/autonavi/navigation/api/map/internal/q$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/map/internal/q$a;-><init>(Lcom/autonavi/navigation/api/map/internal/q;)V

    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/autonavi/navigation/api/map/model/Marker;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/autonavi/navigation/api/map/model/Marker;)Landroid/view/View;
    .locals 3

    new-instance v0, Lcom/autonavi/navigation/api/map/internal/q$b;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/q$a;->a:Lcom/autonavi/navigation/api/map/internal/q;

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/q$a;->a:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-static {v2}, Lcom/autonavi/navigation/api/map/internal/q;->d(Lcom/autonavi/navigation/api/map/internal/q;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/autonavi/navigation/api/map/internal/q$b;-><init>(Lcom/autonavi/navigation/api/map/internal/q;Landroid/content/Context;Lcom/autonavi/navigation/api/map/model/Marker;)V

    return-object v0
.end method
