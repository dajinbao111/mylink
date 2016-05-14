.class Lcom/autonavi/navigation/api/map/internal/p$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/map/internal/p;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/map/internal/p;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/p$2;->a:Lcom/autonavi/navigation/api/map/internal/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p$2;->a:Lcom/autonavi/navigation/api/map/internal/p;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/p;->a(Lcom/autonavi/navigation/api/map/internal/p;)Lcom/autonavi/navigation/api/map/internal/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/map/internal/a;->n()Lcom/autonavi/navigation/api/map/model/MapMode;

    move-result-object v0

    sget-object v1, Lcom/autonavi/navigation/api/map/model/MapMode;->MODE_3D:Lcom/autonavi/navigation/api/map/model/MapMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p$2;->a:Lcom/autonavi/navigation/api/map/internal/p;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/p;->a(Lcom/autonavi/navigation/api/map/internal/p;)Lcom/autonavi/navigation/api/map/internal/a;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->tiltBy(I)Lcom/autonavi/navigation/api/map/CameraUpdate;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/map/internal/a;->b(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/p$2;->a:Lcom/autonavi/navigation/api/map/internal/p;

    invoke-static {v0}, Lcom/autonavi/navigation/api/map/internal/p;->a(Lcom/autonavi/navigation/api/map/internal/p;)Lcom/autonavi/navigation/api/map/internal/a;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->zoomIn()Lcom/autonavi/navigation/api/map/CameraUpdate;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/map/internal/a;->b(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    goto :goto_0
.end method
