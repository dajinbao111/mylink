.class public Lcom/autonavi/wh/navigation/app/NaviActivity;
.super Lcom/autonavi/wh/support/app/FragmentActivity;

# interfaces
.implements Lcom/autonavi/wh/navigation/app/NaviDialogFragmentCallback;


# static fields
.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "com.autonavi.xm.tag.DialogFragment:%1$d-%2$d"


# instance fields
.field private mFragmentManager:Lcom/autonavi/wh/support/app/FragmentManager;

.field private mFragmentStack:Ljava/util/Stack;

.field private mInputMethodManager:Lcom/autonavi/wh/ime/InputMethodManager;

.field private mNaviApplication:Lcom/autonavi/wh/navigation/app/NaviApplication;

.field private mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/wh/support/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private createInputMethodManager()Lcom/autonavi/wh/ime/InputMethodManager;
    .locals 4

    :try_start_0
    const-class v0, Lcom/autonavi/wh/ime/InputMethodManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/ime/InputMethodManager;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method static makeDialogFragmentTag(II)Ljava/lang/String;
    .locals 4

    const-string v0, "com.autonavi.xm.tag.DialogFragment:%1$d-%2$d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private releaseInputMethod()V
    .locals 3

    :try_start_0
    const-class v1, Lcom/autonavi/wh/ime/InputMethodManager;

    const-string v2, "release"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v2, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mInputMethodManager:Lcom/autonavi/wh/ime/InputMethodManager;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected dismissDialogFragment(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mFragmentManager:Lcom/autonavi/wh/support/app/FragmentManager;

    const/4 v1, -0x1

    invoke-static {v1, p1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->makeDialogFragmentTag(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/support/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lcom/autonavi/wh/support/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method protected dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v2, "com.autonavi.xm.extra.SAVED_INSTANCE_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->finish()V

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getPreviousFragment(Lcom/autonavi/wh/navigation/app/NaviFragment;)Lcom/autonavi/wh/navigation/app/NaviFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/autonavi/wh/support/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getPreviousFragment(Lcom/autonavi/wh/navigation/app/NaviFragment;)Lcom/autonavi/wh/navigation/app/NaviFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/autonavi/wh/support/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviApplication:Lcom/autonavi/wh/navigation/app/NaviApplication;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navigation/app/NaviApplication;->removeActivity(Lcom/autonavi/wh/navigation/app/NaviActivity;)V

    invoke-super {p0}, Lcom/autonavi/wh/support/app/FragmentActivity;->finish()V

    return-void
.end method

.method protected getFragmentContainerId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getInputMethodManager()Lcom/autonavi/wh/ime/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mInputMethodManager:Lcom/autonavi/wh/ime/InputMethodManager;

    return-object v0
.end method

.method getPreviousFragment(Lcom/autonavi/wh/navigation/app/NaviFragment;)Lcom/autonavi/wh/navigation/app/NaviFragment;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mFragmentStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mFragmentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navigation/app/NaviFragment;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mFragmentStack:Ljava/util/Stack;

    iget-object v2, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mFragmentStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_3

    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navigation/app/NaviFragment;

    goto :goto_0
.end method

.method protected getStackedActivities()[Lcom/autonavi/wh/navigation/app/NaviActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviApplication:Lcom/autonavi/wh/navigation/app/NaviApplication;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/NaviApplication;->getStackedActivities()[Lcom/autonavi/wh/navigation/app/NaviActivity;

    move-result-object v0

    return-object v0
.end method

.method getStackedFragments()[Lcom/autonavi/wh/navigation/app/NaviFragment;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mFragmentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    new-array v0, v0, [Lcom/autonavi/wh/navigation/app/NaviFragment;

    iget-object v1, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mFragmentStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method isFragmentOnTop(Lcom/autonavi/wh/navigation/app/NaviFragment;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mFragmentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mFragmentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPersistent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isScreenViewEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getPreviousFragment(Lcom/autonavi/wh/navigation/app/NaviFragment;)Lcom/autonavi/wh/navigation/app/NaviFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/autonavi/wh/support/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mFragmentStack:Ljava/util/Stack;

    invoke-super {p0, p1}, Lcom/autonavi/wh/support/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navigation/app/NaviApplication;

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviApplication:Lcom/autonavi/wh/navigation/app/NaviApplication;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviApplication:Lcom/autonavi/wh/navigation/app/NaviApplication;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navigation/app/NaviApplication;->pushActivity(Lcom/autonavi/wh/navigation/app/NaviActivity;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getSupportFragmentManager()Lcom/autonavi/wh/support/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mFragmentManager:Lcom/autonavi/wh/support/app/FragmentManager;

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-direct {v0, p0}, Lcom/autonavi/wh/navigation/view/NaviScreen;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->getScreenView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/autonavi/wh/support/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->setVolumeControlStream(I)V

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->createInputMethodManager()Lcom/autonavi/wh/ime/InputMethodManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mInputMethodManager:Lcom/autonavi/wh/ime/InputMethodManager;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviApplication:Lcom/autonavi/wh/navigation/app/NaviApplication;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navigation/app/NaviApplication;->removeActivity(Lcom/autonavi/wh/navigation/app/NaviActivity;)V

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->releaseInputMethod()V

    invoke-super {p0}, Lcom/autonavi/wh/support/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onDialogCancel(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;)V
    .locals 0

    return-void
.end method

.method public onDialogClick(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V
    .locals 0

    return-void
.end method

.method public onDialogDismiss(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;)V
    .locals 0

    return-void
.end method

.method public onDialogShow(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getPreviousFragment(Lcom/autonavi/wh/navigation/app/NaviFragment;)Lcom/autonavi/wh/navigation/app/NaviFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/autonavi/wh/support/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getPreviousFragment(Lcom/autonavi/wh/navigation/app/NaviFragment;)Lcom/autonavi/wh/navigation/app/NaviFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/autonavi/wh/support/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviApplication:Lcom/autonavi/wh/navigation/app/NaviApplication;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navigation/app/NaviApplication;->removeActivity(Lcom/autonavi/wh/navigation/app/NaviActivity;)V

    :cond_0
    invoke-super {p0}, Lcom/autonavi/wh/support/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/wh/support/app/FragmentActivity;->onStart()V

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.autonavi.xm.extra.SAVED_INSTANCE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v1, "com.autonavi.xm.extra.SAVED_INSTANCE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getPreviousFragment(Lcom/autonavi/wh/navigation/app/NaviFragment;)Lcom/autonavi/wh/navigation/app/NaviFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/autonavi/wh/support/app/FragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method pushFragment(Lcom/autonavi/wh/navigation/app/NaviFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mFragmentStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method removeFragment(Lcom/autonavi/wh/navigation/app/NaviFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mFragmentStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected restartStackedFragments()V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getStackedFragments()[Lcom/autonavi/wh/navigation/app/NaviFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v1, v2

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v3, v2

    new-array v4, v3, [Lcom/autonavi/wh/support/app/Fragment$SavedState;

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getSupportFragmentManager()Lcom/autonavi/wh/support/app/FragmentManager;

    move-result-object v5

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v6, v2, v1

    invoke-virtual {v5, v6}, Lcom/autonavi/wh/support/app/FragmentManager;->saveFragmentInstanceState(Lcom/autonavi/wh/support/app/Fragment;)Lcom/autonavi/wh/support/app/Fragment$SavedState;

    move-result-object v6

    aput-object v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Lcom/autonavi/wh/support/app/FragmentManager;->popBackStackImmediate(II)Z

    :goto_2
    if-ge v0, v3, :cond_4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    aget-object v6, v4, v0

    if-eqz v6, :cond_3

    const-string v6, "com.autonavi.xm.extra.SAVED_INSTANCE_STATE"

    aget-object v7, v4, v0

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->startFragment(Landroid/content/Intent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Lcom/autonavi/wh/support/app/FragmentManager;->executePendingTransactions()Z

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mInputMethodManager:Lcom/autonavi/wh/ime/InputMethodManager;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/InputMethodManager;->hideSoftInput()V

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->releaseInputMethod()V

    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setContentView(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/autonavi/wh/support/app/FragmentActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setContentView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/autonavi/wh/support/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/autonavi/wh/support/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setNoTitle(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setNoTitle(Z)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/autonavi/wh/support/app/FragmentActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/autonavi/wh/support/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleContent(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleContent(I)V

    :cond_0
    return-void
.end method

.method public setTitleContent(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleContent(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setTitleContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setTitleLeftContent(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleLeftContent(I)V

    :cond_0
    return-void
.end method

.method public setTitleLeftContent(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleLeftContent(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setTitleLeftContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleLeftContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setTitleRightContent(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleRightContent(I)V

    :cond_0
    return-void
.end method

.method public setTitleRightContent(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleRightContent(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setTitleRightContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleRightContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setTitleSimple(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleSimple(Z)V

    :cond_0
    return-void
.end method

.method protected showDialogFragment(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V
    .locals 2

    const/4 v0, -0x1

    invoke-static {v0, p2}, Lcom/autonavi/wh/navigation/app/NaviActivity;->makeDialogFragmentTag(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mFragmentManager:Lcom/autonavi/wh/support/app/FragmentManager;

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/support/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lcom/autonavi/wh/support/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->setTarget(Lcom/autonavi/wh/support/app/Fragment;I)V

    iget-object v1, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mFragmentManager:Lcom/autonavi/wh/support/app/FragmentManager;

    invoke-virtual {p1, v1, v0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->show(Lcom/autonavi/wh/support/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showToast(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->showToast(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public showToast(II)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/autonavi/wh/navigation/app/NaviActivity;->showToast(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public showToast(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->showToast(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public showToast(Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public startFragment(ILcom/autonavi/wh/navigation/app/NaviFragment;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviActivity;->mFragmentManager:Lcom/autonavi/wh/support/app/FragmentManager;

    invoke-virtual {v0}, Lcom/autonavi/wh/support/app/FragmentManager;->beginTransaction()Lcom/autonavi/wh/support/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/support/app/FragmentTransaction;->add(ILcom/autonavi/wh/support/app/Fragment;)Lcom/autonavi/wh/support/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/support/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Lcom/autonavi/wh/support/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/support/app/FragmentTransaction;->commit()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->setBackStackId(I)V

    return-void
.end method

.method public startFragment(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getFragmentContainerId()I

    move-result v0

    if-gtz v0, :cond_0

    const v0, 0x1020002

    :cond_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p0, v0, p1, v1, v2}, Lcom/autonavi/wh/navigation/app/NaviFragment;->startFragmentForResult(Lcom/autonavi/wh/navigation/app/NaviActivity;ILandroid/content/Intent;Lcom/autonavi/wh/navigation/app/NaviFragment;I)V

    return-void
.end method
