.class public Lcom/autonavi/wh/navi/main/fragment/Warning;
.super Lcom/autonavi/wh/navigation/app/NaviFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final EXTRA_IS_STATEMENT_ACCEPTED:Ljava/lang/String; = "com.autonavi.wh.extra.IS_STATEMENT_ACCEPTED"

.field private static final KEY_SHOULD_ENTER_NAVI_AUTO:Ljava/lang/String; = "auto_enter_navi"

.field private static final PATH_CONFIG_FILE:Ljava/lang/String; = "config"


# instance fields
.field private final mActionTiming:Ljava/lang/Runnable;

.field private mCkbAutoEnterNavi:Landroid/widget/CheckBox;

.field private mLeftTime:I

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/autonavi/wh/navi/main/fragment/Warning$1;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navi/main/fragment/Warning$1;-><init>(Lcom/autonavi/wh/navi/main/fragment/Warning;)V

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mActionTiming:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/wh/navi/main/fragment/Warning;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mLeftTime:I

    return v0
.end method

.method static synthetic access$020(Lcom/autonavi/wh/navi/main/fragment/Warning;I)I
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mLeftTime:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mLeftTime:I

    return v0
.end method

.method static synthetic access$100(Lcom/autonavi/wh/navi/main/fragment/Warning;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->doAcceptStatement()V

    return-void
.end method

.method static synthetic access$200(Lcom/autonavi/wh/navi/main/fragment/Warning;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->refreshLeftTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/autonavi/wh/navi/main/fragment/Warning;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mActionTiming:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/autonavi/wh/navi/main/fragment/Warning;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private doAcceptStatement()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mCkbAutoEnterNavi:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->saveChoice(Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autonavi.wh.extra.IS_STATEMENT_ACCEPTED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->popBack()V

    return-void
.end method

.method private loadChoice()Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "config"

    invoke-virtual {p0, v0, v2}, Lcom/autonavi/wh/navi/main/fragment/Warning;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auto_enter_navi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private onChoiceChanged(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mLeftTime:I

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->refreshLeftTime()V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mActionTiming:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mActionTiming:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private quitNavigation()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/autonavi/wh/navi/main/activity/NavigationMapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.autonavi.wh.action.QUIT_APPLICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private refreshLeftTime()V
    .locals 5

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mCkbAutoEnterNavi:Landroid/widget/CheckBox;

    const v1, 0x7f0b00f8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mLeftTime:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/wh/navi/main/fragment/Warning;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private saveChoice(Z)V
    .locals 2

    const-string v0, "config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navi/main/fragment/Warning;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_enter_navi"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->saveChoice(Z)V

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->quitNavigation()V

    const/4 v0, 0x1

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f08018a

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p2}, Lcom/autonavi/wh/navi/main/fragment/Warning;->onChoiceChanged(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080188

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->doAcceptStatement()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f080189

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->saveChoice(Z)V

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->quitNavigation()V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->setContentView(I)V

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navi/main/fragment/Warning;->setNoTitle(Z)V

    const v0, 0x7f080188

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080189

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08018a

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mCkbAutoEnterNavi:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mCkbAutoEnterNavi:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mCkbAutoEnterNavi:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mLeftTime:I

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->refreshLeftTime()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mActionTiming:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mActionTiming:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onResume()V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mCkbAutoEnterNavi:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mLeftTime:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->doAcceptStatement()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mActionTiming:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/wh/navi/main/fragment/Warning;->mActionTiming:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x4

    invoke-super {p0, p1, p2}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navi/main/fragment/Warning;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
