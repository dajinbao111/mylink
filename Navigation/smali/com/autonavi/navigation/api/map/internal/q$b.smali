.class Lcom/autonavi/navigation/api/map/internal/q$b;
.super Landroid/widget/LinearLayout;


# instance fields
.field final a:F

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field final synthetic d:Lcom/autonavi/navigation/api/map/internal/q;


# direct methods
.method public constructor <init>(Lcom/autonavi/navigation/api/map/internal/q;Landroid/content/Context;Lcom/autonavi/navigation/api/map/model/Marker;)V
    .locals 3

    iput-object p1, p0, Lcom/autonavi/navigation/api/map/internal/q$b;->d:Lcom/autonavi/navigation/api/map/internal/q;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/map/internal/q$b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/autonavi/navigation/api/map/internal/q$b;->a:F

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/autonavi/navigation/api/R$layout;->api_default_marker_info_window:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/autonavi/navigation/api/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/internal/q$b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q$b;->b:Landroid/widget/TextView;

    sget v0, Lcom/autonavi/navigation/api/R$id;->snippet:I

    invoke-virtual {p0, v0}, Lcom/autonavi/navigation/api/map/internal/q$b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q$b;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Lcom/autonavi/navigation/api/map/internal/q$b;->a(Lcom/autonavi/navigation/api/map/model/Marker;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/navigation/api/map/model/Marker;)V
    .locals 3

    const/16 v2, 0x8

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/Marker;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q$b;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/autonavi/navigation/api/map/model/Marker;->getSnippet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q$b;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/map/internal/q$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/q$b;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/navigation/api/map/internal/q$b;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x437a0000    # 250.0f

    iget v3, p0, Lcom/autonavi/navigation/api/map/internal/q$b;->a:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
