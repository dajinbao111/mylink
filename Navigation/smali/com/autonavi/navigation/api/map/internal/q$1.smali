.class Lcom/autonavi/navigation/api/map/internal/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/map/internal/q;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/map/internal/q;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/q$1;->a:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    instance-of v0, p1, Lcom/autonavi/navigation/api/map/internal/q$d;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/model/Marker;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/autonavi/navigation/api/map/internal/q$1;->a:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-static {v2}, Lcom/autonavi/navigation/api/map/internal/q;->b(Lcom/autonavi/navigation/api/map/internal/q;)Lcom/autonavi/navigation/api/map/AnMap$OnMarkerClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/q$1;->a:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-static {v1}, Lcom/autonavi/navigation/api/map/internal/q;->b(Lcom/autonavi/navigation/api/map/internal/q;)Lcom/autonavi/navigation/api/map/AnMap$OnMarkerClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/map/AnMap$OnMarkerClickListener;->onMarkerClick(Lcom/autonavi/navigation/api/map/model/Marker;)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/q$1;->a:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-static {v1, v0}, Lcom/autonavi/navigation/api/map/internal/q;->a(Lcom/autonavi/navigation/api/map/internal/q;Lcom/autonavi/navigation/api/map/model/Marker;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/map/model/Marker;

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/q$1;->a:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-static {v1}, Lcom/autonavi/navigation/api/map/internal/q;->c(Lcom/autonavi/navigation/api/map/internal/q;)Lcom/autonavi/navigation/api/map/AnMap$OnMarkerInfoWindowClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/q$1;->a:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-static {v1}, Lcom/autonavi/navigation/api/map/internal/q;->c(Lcom/autonavi/navigation/api/map/internal/q;)Lcom/autonavi/navigation/api/map/AnMap$OnMarkerInfoWindowClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/autonavi/navigation/api/map/AnMap$OnMarkerInfoWindowClickListener;->onInfoWindowClick(Lcom/autonavi/navigation/api/map/model/Marker;)V

    goto :goto_0
.end method
