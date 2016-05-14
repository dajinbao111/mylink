.class public Lcom/autonavi/xm/widget/TabIndicator;
.super Landroid/widget/FrameLayout;


# static fields
.field public static final STYLE_LEFT:I = 0x0

.field public static final STYLE_MIDDLE:I = 0x1

.field public static final STYLE_RIGHT:I = 0x2


# instance fields
.field private mImageIcon:Landroid/widget/ImageView;

.field private mTextLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/xm/widget/TabIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/xm/widget/TabIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget v0, Lcom/autonavi/xm/framework/R$drawable;->btn_default:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/TabIndicator;->setBackgroundResource(I)V

    sget v0, Lcom/autonavi/xm/framework/R$layout;->tab_indicator:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/autonavi/xm/framework/R$id;->tab_label:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/TabIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xm/widget/TabIndicator;->mTextLabel:Landroid/widget/TextView;

    sget v0, Lcom/autonavi/xm/framework/R$id;->tab_icon:I

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/widget/TabIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/autonavi/xm/widget/TabIndicator;->mImageIcon:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    iget-object v3, p0, Lcom/autonavi/xm/widget/TabIndicator;->mTextLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/TabIndicator;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xm/widget/TabIndicator;->mImageIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/autonavi/xm/widget/TabIndicator;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setIcon(I)Lcom/autonavi/xm/widget/TabIndicator;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/widget/TabIndicator;->mImageIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/autonavi/xm/widget/TabIndicator;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/widget/TabIndicator;->mImageIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setLabel(I)Lcom/autonavi/xm/widget/TabIndicator;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/widget/TabIndicator;->mTextLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-object p0
.end method

.method public setLabel(Ljava/lang/CharSequence;)Lcom/autonavi/xm/widget/TabIndicator;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/widget/TabIndicator;->mTextLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method
