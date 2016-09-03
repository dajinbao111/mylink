.class public Lcom/autonavi/wh/widget/CompoundButtonGroup;
.super Ljava/lang/Object;


# instance fields
.field private mButtons:Ljava/util/Vector;

.field private mCheckedId:I

.field private mMemberCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Lcom/autonavi/wh/widget/CompoundButtonGroup$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/wh/widget/CompoundButtonGroup;->mCheckedId:I

    new-instance v0, Lcom/autonavi/wh/widget/CompoundButtonGroup$1;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/widget/CompoundButtonGroup$1;-><init>(Lcom/autonavi/wh/widget/CompoundButtonGroup;)V

    iput-object v0, p0, Lcom/autonavi/wh/widget/CompoundButtonGroup;->mMemberCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/widget/CompoundButtonGroup;->mButtons:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/wh/widget/CompoundButtonGroup;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/widget/CompoundButtonGroup;->mCheckedId:I

    return v0
.end method

.method static synthetic access$002(Lcom/autonavi/wh/widget/CompoundButtonGroup;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/wh/widget/CompoundButtonGroup;->mCheckedId:I

    return p1
.end method

.method static synthetic access$100(Lcom/autonavi/wh/widget/CompoundButtonGroup;Landroid/widget/CompoundButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/wh/widget/CompoundButtonGroup;->setCheckedId(Landroid/widget/CompoundButton;)V

    return-void
.end method

.method private setCheckedId(Landroid/widget/CompoundButton;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/autonavi/wh/widget/CompoundButtonGroup;->mCheckedId:I

    iput v0, p0, Lcom/autonavi/wh/widget/CompoundButtonGroup;->mCheckedId:I

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundButtonGroup;->mOnCheckedChangeListener:Lcom/autonavi/wh/widget/CompoundButtonGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundButtonGroup;->mOnCheckedChangeListener:Lcom/autonavi/wh/widget/CompoundButtonGroup$OnCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/autonavi/wh/widget/CompoundButtonGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/autonavi/wh/widget/CompoundButtonGroup;Landroid/widget/CompoundButton;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/widget/CompoundButton;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundButtonGroup;->mButtons:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundButtonGroup;->mMemberCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/wh/widget/CompoundButtonGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/autonavi/wh/widget/CompoundButtonGroup;->setCheckedId(Landroid/widget/CompoundButton;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public check(I)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundButtonGroup;->mButtons:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public check(Landroid/widget/CompoundButton;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/widget/CompoundButtonGroup;->check(I)V

    goto :goto_0
.end method

.method public clearCheck()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/widget/CompoundButtonGroup;->check(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/widget/CompoundButtonGroup;->setCheckedId(Landroid/widget/CompoundButton;)V

    return-void
.end method

.method public findButtonById(I)Landroid/widget/CompoundButton;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundButtonGroup;->mButtons:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findButtonWithTag(Ljava/lang/Object;)Landroid/widget/CompoundButton;
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundButtonGroup;->mButtons:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getButtonCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundButtonGroup;->mButtons:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getCheckedId()I
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/widget/CompoundButtonGroup;->mCheckedId:I

    return v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundButtonGroup;->mButtons:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public remove(Landroid/widget/CompoundButton;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/widget/CompoundButtonGroup;->mButtons:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/autonavi/wh/widget/CompoundButtonGroup$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/widget/CompoundButtonGroup;->mOnCheckedChangeListener:Lcom/autonavi/wh/widget/CompoundButtonGroup$OnCheckedChangeListener;

    return-void
.end method
