.class public Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;
.super Landroid/widget/FrameLayout;


# instance fields
.field private final a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v3}, Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;->setFocusable(Z)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/autonavi/navigation/api/R$layout;->api_zoom_level_controls:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0, v4, v3, v4, v3}, Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;->setPadding(IIII)V

    sget v0, Lcom/autonavi/navigation/api/R$id;->zoomLevelTV:I

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setZoomLevelText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/ZoomLevelControls;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
