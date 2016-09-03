.class Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$2;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$2;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLocation()Lcom/autonavi/navigation/api/map/model/MyLocation;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/MyLocation;->bearing:I

    rsub-int v0, v0, 0x168

    mul-int/lit16 v0, v0, 0x2710

    div-int/lit16 v0, v0, 0x168

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$2;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mImgDirectionIndicator:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->access$100(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$2;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    iget-object v0, v0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mAnMap:Lcom/autonavi/navigation/api/map/AnMap;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/map/AnMap;->getMyLocation()Lcom/autonavi/navigation/api/map/model/MyLocation;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/navigation/api/map/model/MyLocation;->bearing:I

    rsub-int v0, v0, 0x168

    mul-int/lit16 v0, v0, 0x2710

    div-int/lit16 v0, v0, 0x168

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment$2;->this$0:Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;

    # getter for: Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->mImgDirectionIndicator:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;->access$100(Lcom/autonavi/wh/navi/main/fragment/MapActionFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void
.end method
