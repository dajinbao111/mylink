.class public Lcom/autonavi/xm/ime/widget/SoftKeyButton;
.super Landroid/widget/Button;

# interfaces
.implements Lcom/autonavi/xm/ime/widget/SoftKey;


# instance fields
.field private mKeyCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/autonavi/xm/ime/widget/SoftKeyButton;->mKeyCode:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/xm/ime/widget/SoftKeyButton;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/autonavi/xm/ime/widget/SoftKeyButton;->mKeyCode:I

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/xm/ime/widget/SoftKeyButton;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xm/ime/widget/SoftKeyButton;->mKeyCode:I

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/xm/ime/widget/SoftKeyButton;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/autonavi/xm/ime/R$styleable;->SoftKey:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/autonavi/xm/ime/widget/SoftKeyButton;->mKeyCode:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getKeyCode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/ime/widget/SoftKeyButton;->mKeyCode:I

    return v0
.end method

.method public setKeyCode(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/xm/ime/widget/SoftKeyButton;->mKeyCode:I

    return-void
.end method
