.class public Lcom/autonavi/navigation/api/map/widget/MapZoomControls;
.super Landroid/widget/LinearLayout;


# instance fields
.field private final a:Landroid/widget/ZoomButton;

.field private final b:Landroid/widget/ZoomButton;

.field private c:Lcom/autonavi/navigation/api/map/widget/MapZoomControls$a;

.field private d:Lcom/autonavi/navigation/api/map/widget/MapZoomControls$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->setFocusable(Z)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/autonavi/navigation/api/R$layout;->api_my_zoom_controls:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->setOrientation(I)V

    sget v0, Lcom/autonavi/navigation/api/R$id;->zoomInZB:I

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ZoomButton;

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->a:Landroid/widget/ZoomButton;

    sget v0, Lcom/autonavi/navigation/api/R$id;->zoomOutZB:I

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ZoomButton;

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->b:Landroid/widget/ZoomButton;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->setZoomSpeed(J)V

    return-void
.end method


# virtual methods
.method public getZoomInEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->a:Landroid/widget/ZoomButton;

    invoke-virtual {v0}, Landroid/widget/ZoomButton;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public getZoomOutEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->b:Landroid/widget/ZoomButton;

    invoke-virtual {v0}, Landroid/widget/ZoomButton;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->a:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnZoomInEnabledListener(Lcom/autonavi/navigation/api/map/widget/MapZoomControls$a;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->c:Lcom/autonavi/navigation/api/map/widget/MapZoomControls$a;

    return-void
.end method

.method public setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->b:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnZoomOutEnabledListener(Lcom/autonavi/navigation/api/map/widget/MapZoomControls$a;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->d:Lcom/autonavi/navigation/api/map/widget/MapZoomControls$a;

    return-void
.end method

.method public setZoomButtonSpacing(I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p1, 0x2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    sget v1, Lcom/autonavi/navigation/api/R$id;->zoomSpacingView:I

    invoke-virtual {p0, v1}, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setZoomInBackgroundResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->a:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setBackgroundResource(I)V

    return-void
.end method

.method public setZoomInEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->a:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->c:Lcom/autonavi/navigation/api/map/widget/MapZoomControls$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->c:Lcom/autonavi/navigation/api/map/widget/MapZoomControls$a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/widget/MapZoomControls$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public setZoomOutBackgroundResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->b:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setBackgroundResource(I)V

    return-void
.end method

.method public setZoomOutEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->b:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->d:Lcom/autonavi/navigation/api/map/widget/MapZoomControls$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->d:Lcom/autonavi/navigation/api/map/widget/MapZoomControls$a;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/map/widget/MapZoomControls$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public setZoomSpeed(J)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->a:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ZoomButton;->setZoomSpeed(J)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/widget/MapZoomControls;->b:Landroid/widget/ZoomButton;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ZoomButton;->setZoomSpeed(J)V

    return-void
.end method
