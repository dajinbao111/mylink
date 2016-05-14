.class public Lcom/autonavi/navigation/api/map/widget/MyLocationControls;
.super Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/navigation/api/map/widget/MyLocationControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lcom/autonavi/navigation/api/R$drawable;->api_btn_my_location:I

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/widget/MyLocationControls;->setBackgroundResource(I)V

    return-void
.end method
