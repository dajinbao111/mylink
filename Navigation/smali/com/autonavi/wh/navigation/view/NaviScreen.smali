.class public Lcom/autonavi/wh/navigation/view/NaviScreen;
.super Ljava/lang/Object;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field private mContentFrame:Landroid/widget/FrameLayout;

.field private mIsNoTitle:Z

.field private mIsTitleSimple:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mResources:Landroid/content/res/Resources;

.field private mScreenView:Landroid/view/View;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleBar:Landroid/view/View;

.field private mTitleContentFrame:Landroid/widget/FrameLayout;

.field private mTitleLeftFrame:Landroid/widget/FrameLayout;

.field private mTitleRightFrame:Landroid/widget/FrameLayout;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mIsNoTitle:Z

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mIsTitleSimple:Z

    new-instance v0, Lcom/autonavi/wh/navigation/view/NaviScreen$1;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navigation/view/NaviScreen$1;-><init>(Lcom/autonavi/wh/navigation/view/NaviScreen;)V

    iput-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mOnClickListener:Landroid/view/View$OnClickListener;

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The context must be an \"Activity\"!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/autonavi/wh/navigation/lib/R$layout;->screen_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mScreenView:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mScreenView:Landroid/view/View;

    sget v1, Lcom/autonavi/wh/navigation/lib/R$id;->content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mContentFrame:Landroid/widget/FrameLayout;

    return-void
.end method

.method private checkTitleBarValid()V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mIsNoTitle:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleBar:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no title bar in this screen!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private getDefaultLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method private initTitleBar()V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mIsNoTitle:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setNoTitle(Z)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mScreenView:Landroid/view/View;

    sget v1, Lcom/autonavi/wh/navigation/lib/R$id;->goBack:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mScreenView:Landroid/view/View;

    sget v1, Lcom/autonavi/wh/navigation/lib/R$id;->backToMap:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mIsTitleSimple:Z

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->makeTitleSimple(Z)V

    return-void
.end method

.method private makeTitleSimple(Z)V
    .locals 4

    const/4 v1, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mScreenView:Landroid/view/View;

    sget v3, Lcom/autonavi/wh/navigation/lib/R$id;->goBack:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mScreenView:Landroid/view/View;

    sget v3, Lcom/autonavi/wh/navigation/lib/R$id;->backToMap:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method protected backToMap()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autonavi.xm.action.BACK_TO_MY_LOCATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mActivity:Landroid/app/Activity;

    const-string v2, "com.autonavi.xm.meta.BACK_TO_MAP_COMPONENT"

    invoke-static {v1, v2}, Lcom/autonavi/wh/navigation/NaviHelper;->getStringMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getScreenView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mScreenView:Landroid/view/View;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isNoTitle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mIsNoTitle:Z

    return v0
.end method

.method public setBackground(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mScreenView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mScreenView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mScreenView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setContentBackground(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public setContentBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setContentView(I)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mContentFrame:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->initTitleBar()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Lcom/autonavi/wh/navigation/view/NaviScreen;->getDefaultLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->initTitleBar()V

    goto :goto_0
.end method

.method public setNoTitle(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mIsNoTitle:Z

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mScreenView:Landroid/view/View;

    sget v1, Lcom/autonavi/wh/navigation/lib/R$id;->title_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mScreenView:Landroid/view/View;

    sget v1, Lcom/autonavi/wh/navigation/lib/R$id;->stub_title_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleBar:Landroid/view/View;

    sget v1, Lcom/autonavi/wh/navigation/lib/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitle:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mScreenView:Landroid/view/View;

    sget v1, Lcom/autonavi/wh/navigation/lib/R$id;->extra_frame_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleRightFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mScreenView:Landroid/view/View;

    sget v1, Lcom/autonavi/wh/navigation/lib/R$id;->extra_frame_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleLeftFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mScreenView:Landroid/view/View;

    sget v1, Lcom/autonavi/wh/navigation/lib/R$id;->title_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleContentFrame:Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleBackground(I)V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->checkTitleBarValid()V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setTitleBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->checkTitleBarValid()V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTitleBackgroundColor(I)V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->checkTitleBarValid()V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setTitleContent(I)V
    .locals 3

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->checkTitleBarValid()V

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleContentFrame:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleContent(Landroid/view/View;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitleContent(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitleContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->checkTitleBarValid()V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleContentFrame:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Lcom/autonavi/wh/navigation/view/NaviScreen;->getDefaultLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setTitleIcon(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setTitleLeftContent(I)V
    .locals 3

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleLeftFrame:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleLeftContent(Landroid/view/View;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitleLeftContent(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleLeftContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitleLeftContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->checkTitleBarValid()V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleLeftFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleLeftFrame:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Lcom/autonavi/wh/navigation/view/NaviScreen;->getDefaultLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setTitleRightContent(I)V
    .locals 3

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->checkTitleBarValid()V

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleRightFrame:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleRightContent(Landroid/view/View;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitleRightContent(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleRightContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitleRightContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->checkTitleBarValid()V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleRightFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mTitleRightFrame:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Lcom/autonavi/wh/navigation/view/NaviScreen;->getDefaultLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setTitleSimple(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/wh/navigation/view/NaviScreen;->mIsTitleSimple:Z

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->makeTitleSimple(Z)V

    return-void
.end method
