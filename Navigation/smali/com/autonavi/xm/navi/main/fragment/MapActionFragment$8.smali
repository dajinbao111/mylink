.class Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/view/ClickRepeater$OnRepeatListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$8;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08011c

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$8;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->zoomIn()Lcom/autonavi/navigation/api/map/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->moveCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f08011f

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$8;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-static {}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->zoomOut()Lcom/autonavi/navigation/api/map/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->moveCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    goto :goto_0

    :cond_2
    const v1, 0x7f08011d

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$8;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->tiltBy(I)Lcom/autonavi/navigation/api/map/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->moveCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    goto :goto_0

    :cond_3
    const v1, 0x7f080120

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment$8;->this$0:Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;

    iget-object v0, v0, Lcom/autonavi/xm/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    const/16 v1, -0xa

    invoke-static {v1}, Lcom/autonavi/navigation/api/map/CameraUpdateFactory;->tiltBy(I)Lcom/autonavi/navigation/api/map/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/navigation/api/map/AnMap;->moveCamera(Lcom/autonavi/navigation/api/map/CameraUpdate;)V

    goto :goto_0
.end method

.method public onRepeatEnd(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08011c

    if-eq v0, v1, :cond_0

    const v1, 0x7f08011f

    if-ne v0, v1, :cond_0

    :cond_0
    return-void
.end method

.method public onRepeatStart(Landroid/view/View;)V
    .locals 0

    return-void
.end method
