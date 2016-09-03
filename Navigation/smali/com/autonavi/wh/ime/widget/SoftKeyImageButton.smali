.class public Lcom/autonavi/wh/ime/widget/SoftKeyImageButton;
.super Landroid/widget/ImageButton;

# interfaces
.implements Lcom/autonavi/wh/ime/widget/SoftKey;


# instance fields
.field private mKeyCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/autonavi/wh/ime/widget/SoftKeyImageButton;->mKeyCode:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/wh/ime/widget/SoftKeyImageButton;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/autonavi/wh/ime/widget/SoftKeyImageButton;->mKeyCode:I

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/wh/ime/widget/SoftKeyImageButton;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/wh/ime/widget/SoftKeyImageButton;->mKeyCode:I

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/wh/ime/widget/SoftKeyImageButton;->onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private checkFocusable(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    :try_start_0
    const-string v0, "com.android.internal.R$styleable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v0, "View"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v2, "View_focusable"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/ime/widget/SoftKeyImageButton;->setFocusable(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onCreate(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/autonavi/wh/ime/R$styleable;->SoftKey:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/autonavi/wh/ime/widget/SoftKeyImageButton;->mKeyCode:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/wh/ime/widget/SoftKeyImageButton;->checkFocusable(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getKeyCode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/ime/widget/SoftKeyImageButton;->mKeyCode:I

    return v0
.end method

.method public setKeyCode(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/wh/ime/widget/SoftKeyImageButton;->mKeyCode:I

    return-void
.end method
