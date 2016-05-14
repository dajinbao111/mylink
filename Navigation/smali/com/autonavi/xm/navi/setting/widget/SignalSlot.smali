.class public Lcom/autonavi/xm/navi/setting/widget/SignalSlot;
.super Landroid/widget/LinearLayout;


# instance fields
.field private final mSlotSnrLevel:Landroid/view/View;

.field private final mSlotSnrTxt:Landroid/widget/TextView;

.field private mStrength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;->setOrientation(I)V

    const v0, 0x7f030040

    invoke-static {p1, v0, p0}, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;->mSlotSnrTxt:Landroid/widget/TextView;

    const v0, 0x7f080168

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;->mSlotSnrLevel:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getSlotSnr()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;->mSlotSnrTxt:Landroid/widget/TextView;

    return-object v0
.end method

.method public setStrength(I)V
    .locals 2

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;->mStrength:I

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;->mSlotSnrLevel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x7f080190

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;->mStrength:I

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/widget/SignalSlot;->postInvalidate()V

    goto :goto_0
.end method
