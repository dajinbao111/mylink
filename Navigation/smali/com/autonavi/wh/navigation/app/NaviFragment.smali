.class public Lcom/autonavi/wh/navigation/app/NaviFragment;
.super Lcom/autonavi/wh/support/app/Fragment;

# interfaces
.implements Lcom/autonavi/wh/navigation/app/NaviDialogFragmentCallback;
.implements Lcom/autonavi/wh/navigation/app/NaviFragmentCallback;


# static fields
.field private static final ARGUMENT_START_FRAGMENT_FOR_RESULT:Ljava/lang/String; = "autonavi:argument:start_fragment_for_result"

.field public static final BIND_AUTO_CREATE:I = 0x1

.field public static final FLAG_CLEAR_TOP:I = 0x2

.field public static final FLAG_SINGLE_TOP:I = 0x1

.field public static final RESULT_CANCELED:I = 0x0

.field public static final RESULT_FIRST_USER:I = 0x1

.field public static final RESULT_OK:I = -0x1

.field private static final SAVE_BACK_STACK_ID:Ljava/lang/String; = "autonavi:save:back_stack_id"

.field private static final SAVE_INTENT:Ljava/lang/String; = "autonavi:save:intent"

.field private static final SAVE_IS_TOUCH_EVENT_PASSED:Ljava/lang/String; = "autonavi:save:is_touch_event_passed"

.field private static final SAVE_IS_USER_INTERACTABLE:Ljava/lang/String; = "autonavi:save:is_user_interactable"

.field private static final SAVE_IS_USER_INTERACTION_FROZEN:Ljava/lang/String; = "autonavi:save:is_user_interaction_frozen"

.field private static final SAVE_RESULT_CODE:Ljava/lang/String; = "autonavi:save:result_code"

.field private static final SAVE_RESULT_DATA:Ljava/lang/String; = "autonavi:save:result_data"


# instance fields
.field private mBackStackId:I

.field private mContainer:Landroid/view/ViewGroup;

.field private mContainerResId:I

.field private mDefaultTitle:Lcom/autonavi/wh/navigation/app/Title;

.field private mFragmentManager:Lcom/autonavi/wh/support/app/FragmentManager;

.field private mIntent:Landroid/content/Intent;

.field private mIsOnResumeViewCalled:Z

.field private mIsOnStartViewCalled:Z

.field private mIsTouchEventPassed:Z

.field private mIsUserInteractable:Z

.field private mIsUserInteractionFrozen:Z

.field private mMainView:Landroid/view/View;

.field private mNaviActivity:Lcom/autonavi/wh/navigation/app/NaviActivity;

.field private mNaviFragment:Lcom/autonavi/wh/navigation/app/NaviFragment;

.field private mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

.field private mResultCode:I

.field private mResultData:Landroid/content/Intent;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/autonavi/wh/support/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mBackStackId:I

    iput-boolean v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsOnStartViewCalled:Z

    iput-boolean v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsOnResumeViewCalled:Z

    iput v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mResultCode:I

    iput-boolean v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsTouchEventPassed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsUserInteractable:Z

    iput-boolean v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsUserInteractionFrozen:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviFragment:Lcom/autonavi/wh/navigation/app/NaviFragment;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/wh/navigation/app/NaviFragment;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->getDialogFragmentTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/wh/navigation/app/NaviFragment;)Lcom/autonavi/wh/support/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mFragmentManager:Lcom/autonavi/wh/support/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/wh/navigation/app/NaviFragment;)Lcom/autonavi/wh/navigation/app/NaviFragment;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviFragment:Lcom/autonavi/wh/navigation/app/NaviFragment;

    return-object v0
.end method

.method private checkFragmentResult()V
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "autonavi:argument:start_fragment_for_result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->getTargetFragment()Lcom/autonavi/wh/support/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->getTargetRequestCode()I

    move-result v1

    if-eqz v0, :cond_0

    if-ltz v1, :cond_0

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mResultCode:I

    iget-object v3, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mResultData:Landroid/content/Intent;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/wh/support/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getDialogFragmentTag(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mBackStackId:I

    invoke-static {v0, p1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->makeDialogFragmentTag(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private popBack(Z)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mBackStackId:I

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mFragmentManager:Lcom/autonavi/wh/support/app/FragmentManager;

    iget v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mBackStackId:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/support/app/FragmentManager;->popBackStackImmediate(II)Z

    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mBackStackId:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mFragmentManager:Lcom/autonavi/wh/support/app/FragmentManager;

    iget v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mBackStackId:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/wh/support/app/FragmentManager;->popBackStack(II)V

    goto :goto_1
.end method

.method private pressUpAllViews(Landroid/view/ViewGroup;)V
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->pressUpAllViews(Landroid/view/ViewGroup;)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private replaceContentView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private setUserInteractableInternal(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v0, Lcom/autonavi/wh/support/app/NoSaveStateFrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/support/app/NoSaveStateFrameLayout;->setTouchable(Z)V

    goto :goto_0
.end method

.method private setVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static startFragmentForResult(Lcom/autonavi/wh/navigation/app/NaviActivity;ILandroid/content/Intent;Lcom/autonavi/wh/navigation/app/NaviFragment;I)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getSupportFragmentManager()Lcom/autonavi/wh/support/app/FragmentManager;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-lez v2, :cond_0

    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getPreviousFragment(Lcom/autonavi/wh/navigation/app/NaviFragment;)Lcom/autonavi/wh/navigation/app/NaviFragment;

    move-result-object v1

    if-eqz v1, :cond_9

    instance-of v5, v1, Lcom/autonavi/wh/navigation/app/NaviFragment;

    if-eqz v5, :cond_9

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_0
    and-int/lit8 v0, v2, 0x2

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getStackedFragments()[Lcom/autonavi/wh/navigation/app/NaviFragment;

    move-result-object v5

    if-eqz v5, :cond_7

    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_7

    aget-object v0, v5, v2

    instance-of v6, v0, Lcom/autonavi/wh/navigation/app/NaviFragment;

    if-eqz v6, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    check-cast v0, Lcom/autonavi/wh/navigation/app/NaviFragment;

    :goto_2
    if-eqz v0, :cond_3

    iget v1, v0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mBackStackId:I

    if-ltz v1, :cond_3

    iget v1, v0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mBackStackId:I

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Lcom/autonavi/wh/support/app/FragmentManager;->popBackStack(II)V

    :cond_0
    :goto_3
    if-nez v0, :cond_4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navigation/app/NaviFragment;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v1, "com.autonavi.xm.extra.SAVED_INSTANCE_STATE"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/autonavi/wh/support/app/Fragment$SavedState;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->setInitialSavedState(Lcom/autonavi/wh/support/app/Fragment$SavedState;)V

    const-string v1, "com.autonavi.xm.extra.SAVED_INSTANCE_STATE"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1
    if-ltz p4, :cond_6

    if-nez v2, :cond_5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_4
    const-string v2, "autonavi:argument:start_fragment_for_result"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, p3, p4}, Lcom/autonavi/wh/navigation/app/NaviFragment;->setTargetFragment(Lcom/autonavi/wh/support/app/Fragment;I)V

    :goto_5
    invoke-virtual {v0, p2}, Lcom/autonavi/wh/navigation/app/NaviFragment;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v3}, Lcom/autonavi/wh/support/app/FragmentManager;->beginTransaction()Lcom/autonavi/wh/support/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/autonavi/wh/support/app/FragmentTransaction;->add(ILcom/autonavi/wh/support/app/Fragment;)Lcom/autonavi/wh/support/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/autonavi/wh/support/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Lcom/autonavi/wh/support/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/wh/support/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v1

    iput v1, v0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mBackStackId:I

    :goto_6
    return-void

    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/autonavi/wh/support/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onNewIntent(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    move-object v1, v2

    goto :goto_4

    :cond_6
    move-object v1, v2

    goto :goto_5

    :cond_7
    move-object v0, v1

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_3

    :cond_9
    move-object v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method protected bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviActivity:Lcom/autonavi/wh/navigation/app/NaviActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/wh/navigation/app/NaviActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method protected dismissDialog(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mFragmentManager:Lcom/autonavi/wh/support/app/FragmentManager;

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->getDialogFragmentTag(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/support/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lcom/autonavi/wh/support/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected findViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mMainView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getInputMethodManager()Lcom/autonavi/wh/ime/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviActivity:Lcom/autonavi/wh/navigation/app/NaviActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getInputMethodManager()Lcom/autonavi/wh/ime/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method protected getPreferences(I)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviActivity:Lcom/autonavi/wh/navigation/app/NaviActivity;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviActivity:Lcom/autonavi/wh/navigation/app/NaviActivity;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected isOnTop()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviActivity:Lcom/autonavi/wh/navigation/app/NaviActivity;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->isFragmentOnTop(Lcom/autonavi/wh/navigation/app/NaviFragment;)Z

    move-result v0

    return v0
.end method

.method protected isScreenViewEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isUserInteractable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsUserInteractionFrozen:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsUserInteractable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/wh/support/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->getActivity()Lcom/autonavi/wh/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navigation/app/NaviActivity;

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviActivity:Lcom/autonavi/wh/navigation/app/NaviActivity;

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->getFragmentManager()Lcom/autonavi/wh/support/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mFragmentManager:Lcom/autonavi/wh/support/app/FragmentManager;

    if-eqz p1, :cond_0

    const-string v0, "autonavi:save:intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIntent:Landroid/content/Intent;

    const-string v0, "autonavi:save:back_stack_id"

    iget v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mBackStackId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mBackStackId:I

    const-string v0, "autonavi:save:result_code"

    iget v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mResultCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mResultCode:I

    const-string v0, "autonavi:save:result_data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mResultData:Landroid/content/Intent;

    const-string v0, "autonavi:save:is_touch_event_passed"

    iget-boolean v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsTouchEventPassed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsTouchEventPassed:Z

    const-string v0, "autonavi:save:is_user_interactable"

    iget-boolean v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsUserInteractable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsUserInteractable:Z

    const-string v0, "autonavi:save:is_user_interaction_frozen"

    iget-boolean v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsUserInteractionFrozen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsUserInteractionFrozen:Z

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviActivity:Lcom/autonavi/wh/navigation/app/NaviActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getPreviousFragment(Lcom/autonavi/wh/navigation/app/NaviFragment;)Lcom/autonavi/wh/navigation/app/NaviFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onPauseView()V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviActivity:Lcom/autonavi/wh/navigation/app/NaviActivity;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->pushFragment(Lcom/autonavi/wh/navigation/app/NaviFragment;)V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviActivity:Lcom/autonavi/wh/navigation/app/NaviActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/autonavi/wh/navigation/app/NaviApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/app/NaviApplication;->getTitle(Ljava/lang/String;)Lcom/autonavi/wh/navigation/app/Title;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mDefaultTitle:Lcom/autonavi/wh/navigation/app/Title;

    iput-object p0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviFragment:Lcom/autonavi/wh/navigation/app/NaviFragment;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mContainerResId:I

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/autonavi/wh/navigation/view/NaviScreen;

    iget-object v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviActivity:Lcom/autonavi/wh/navigation/app/NaviActivity;

    invoke-direct {v0, v1}, Lcom/autonavi/wh/navigation/view/NaviScreen;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/view/NaviScreen;->getScreenView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mMainView:Landroid/view/View;

    :goto_1
    invoke-virtual {p0, p3}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mMainView:Landroid/view/View;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mContainer:Landroid/view/ViewGroup;

    goto :goto_1
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviActivity:Lcom/autonavi/wh/navigation/app/NaviActivity;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->removeFragment(Lcom/autonavi/wh/navigation/app/NaviFragment;)V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviActivity:Lcom/autonavi/wh/navigation/app/NaviActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getPreviousFragment(Lcom/autonavi/wh/navigation/app/NaviFragment;)Lcom/autonavi/wh/navigation/app/NaviFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onResumeView()V

    :cond_0
    invoke-super {p0}, Lcom/autonavi/wh/support/app/Fragment;->onDestroy()V

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

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->checkFragmentResult()V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviActivity:Lcom/autonavi/wh/navigation/app/NaviActivity;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getPreviousFragment(Lcom/autonavi/wh/navigation/app/NaviFragment;)Lcom/autonavi/wh/navigation/app/NaviFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onStartView()V

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onPauseView()V

    :cond_1
    invoke-super {p0}, Lcom/autonavi/wh/support/app/Fragment;->onPause()V

    return-void
.end method

.method public onPauseView()V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->getInputMethodManager()Lcom/autonavi/wh/ime/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/InputMethodManager;->hideSoftInput()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/wh/support/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsOnResumeViewCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsOnResumeViewCalled:Z

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onResumeView()V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviActivity:Lcom/autonavi/wh/navigation/app/NaviActivity;

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getPreviousFragment(Lcom/autonavi/wh/navigation/app/NaviFragment;)Lcom/autonavi/wh/navigation/app/NaviFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onStopView()V

    :cond_0
    return-void
.end method

.method public onResumeView()V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsUserInteractionFrozen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->setUserInteractionFrozen(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/wh/support/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "autonavi:save:intent"

    iget-object v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "autonavi:save:back_stack_id"

    iget v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mBackStackId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "autonavi:save:result_code"

    iget v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mResultCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mResultData:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v0, "autonavi:save:result_data"

    iget-object v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mResultData:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string v0, "autonavi:save:is_touch_event_passed"

    iget-boolean v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsTouchEventPassed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "autonavi:save:is_user_interactable"

    iget-boolean v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsUserInteractable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "autonavi:save:is_user_interaction_frozen"

    iget-boolean v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsUserInteractionFrozen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/wh/support/app/Fragment;->onStart()V

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsOnStartViewCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsOnStartViewCalled:Z

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onStartView()V

    :cond_0
    return-void
.end method

.method public onStartView()V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->setVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mFragmentManager:Lcom/autonavi/wh/support/app/FragmentManager;

    invoke-virtual {v0}, Lcom/autonavi/wh/support/app/FragmentManager;->beginTransaction()Lcom/autonavi/wh/support/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/support/app/FragmentTransaction;->show(Lcom/autonavi/wh/support/app/Fragment;)Lcom/autonavi/wh/support/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/support/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->onStopView()V

    :cond_0
    invoke-super {p0}, Lcom/autonavi/wh/support/app/Fragment;->onStop()V

    return-void
.end method

.method public onStopView()V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mFragmentManager:Lcom/autonavi/wh/support/app/FragmentManager;

    invoke-virtual {v0}, Lcom/autonavi/wh/support/app/FragmentManager;->beginTransaction()Lcom/autonavi/wh/support/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/wh/support/app/FragmentTransaction;->hide(Lcom/autonavi/wh/support/app/Fragment;)Lcom/autonavi/wh/support/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/wh/support/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/autonavi/wh/support/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsTouchEventPassed:Z

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->setTouchEventPassed(Z)V

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsUserInteractable:Z

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->setUserInteractable(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mDefaultTitle:Lcom/autonavi/wh/navigation/app/Title;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mDefaultTitle:Lcom/autonavi/wh/navigation/app/Title;

    iget v0, v0, Lcom/autonavi/wh/navigation/app/Title;->textId:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mDefaultTitle:Lcom/autonavi/wh/navigation/app/Title;

    iget v0, v0, Lcom/autonavi/wh/navigation/app/Title;->textId:I

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->setTitle(I)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mDefaultTitle:Lcom/autonavi/wh/navigation/app/Title;

    iget v0, v0, Lcom/autonavi/wh/navigation/app/Title;->iconId:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mDefaultTitle:Lcom/autonavi/wh/navigation/app/Title;

    iget v0, v0, Lcom/autonavi/wh/navigation/app/Title;->iconId:I

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->setTitleIcon(I)V

    :cond_1
    return-void
.end method

.method public popBack()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->popBack(Z)V

    return-void
.end method

.method public popBackImmediate()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->popBack(Z)V

    return-void
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviActivity:Lcom/autonavi/wh/navigation/app/NaviActivity;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setBackStackId(I)V
    .locals 1

    iget v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mBackStackId:I

    if-ltz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mBackStackId:I

    goto :goto_0
.end method

.method public setBackground(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setBackground(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setBackgroundColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method protected setContentBackground(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setContentBackground(I)V

    :cond_0
    return-void
.end method

.method protected setContentBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setContentBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected setContentBackgroundColor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setContentBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method protected setContentView(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setContentView(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviActivity:Lcom/autonavi/wh/navigation/app/NaviActivity;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/app/NaviActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mMainView:Landroid/view/View;

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mMainView:Landroid/view/View;

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->replaceContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setContentView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mMainView:Landroid/view/View;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mMainView:Landroid/view/View;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->replaceContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mMainView:Landroid/view/View;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mMainView:Landroid/view/View;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->replaceContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setIntent(Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method protected setNoTitle(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setNoTitle(Z)V

    :cond_0
    return-void
.end method

.method public setResult(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public setResult(ILandroid/content/Intent;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mResultCode:I

    iput-object p2, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mResultData:Landroid/content/Intent;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setTitle(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitle(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected setTitleBackground(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleBackground(I)V

    :cond_0
    return-void
.end method

.method protected setTitleBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected setTitleBackgroundColor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method protected setTitleContent(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleContent(I)V

    :cond_0
    return-void
.end method

.method protected setTitleContent(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleContent(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected setTitleContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected setTitleIcon(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleIcon(I)V

    :cond_0
    return-void
.end method

.method protected setTitleLeftContent(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleLeftContent(I)V

    :cond_0
    return-void
.end method

.method protected setTitleLeftContent(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleLeftContent(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected setTitleLeftContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleLeftContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected setTitleRightContent(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleRightContent(I)V

    :cond_0
    return-void
.end method

.method protected setTitleRightContent(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleRightContent(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected setTitleRightContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleRightContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected setTitleSimple(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->isScreenViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviScreen:Lcom/autonavi/wh/navigation/view/NaviScreen;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/view/NaviScreen;->setTitleSimple(Z)V

    :cond_0
    return-void
.end method

.method protected setTouchEventPassed(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsTouchEventPassed:Z

    invoke-virtual {p0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    new-instance v1, Lcom/autonavi/wh/navigation/app/NaviFragment$1;

    invoke-direct {v1, p0}, Lcom/autonavi/wh/navigation/app/NaviFragment$1;-><init>(Lcom/autonavi/wh/navigation/app/NaviFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method protected setUserInteractable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsUserInteractable:Z

    invoke-direct {p0, p1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->setUserInteractableInternal(Z)V

    return-void
.end method

.method setUserInteractionFrozen(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsUserInteractable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mMainView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->pressUpAllViews(Landroid/view/ViewGroup;)V

    :cond_1
    iput-boolean p1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mIsUserInteractionFrozen:Z

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->setUserInteractableInternal(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected showDialog(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/autonavi/wh/navigation/app/NaviFragment;->getDialogFragmentTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mFragmentManager:Lcom/autonavi/wh/support/app/FragmentManager;

    invoke-virtual {v1, v0}, Lcom/autonavi/wh/support/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lcom/autonavi/wh/support/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/autonavi/wh/navigation/app/NaviFragment;->setUserInteractionFrozen(Z)V

    invoke-virtual {p1, p0, p2}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->setTarget(Lcom/autonavi/wh/support/app/Fragment;I)V

    iget-object v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mFragmentManager:Lcom/autonavi/wh/support/app/FragmentManager;

    invoke-virtual {v1}, Lcom/autonavi/wh/support/app/FragmentManager;->beginTransaction()Lcom/autonavi/wh/support/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/autonavi/wh/navigation/app/NaviDialogFragment;->showAllowingStateLoss(Lcom/autonavi/wh/support/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected showDialogThread(Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V
    .locals 2

    new-instance v0, Lcom/autonavi/wh/navigation/app/NaviFragment$ShowDialogThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/autonavi/wh/navigation/app/NaviFragment$ShowDialogThread;-><init>(Lcom/autonavi/wh/navigation/app/NaviFragment;Lcom/autonavi/wh/navigation/app/NaviDialogFragment;I)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public startFragment(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->startFragmentForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startFragmentForResult(Landroid/content/Intent;I)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/wh/navigation/app/NaviFragment;->setUserInteractionFrozen(Z)V

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviActivity:Lcom/autonavi/wh/navigation/app/NaviActivity;

    iget v1, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mContainerResId:I

    invoke-static {v0, v1, p1, p0, p2}, Lcom/autonavi/wh/navigation/app/NaviFragment;->startFragmentForResult(Lcom/autonavi/wh/navigation/app/NaviActivity;ILandroid/content/Intent;Lcom/autonavi/wh/navigation/app/NaviFragment;I)V

    return-void
.end method

.method protected startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviActivity:Lcom/autonavi/wh/navigation/app/NaviActivity;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method protected unbindService(Landroid/content/ServiceConnection;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/NaviFragment;->mNaviActivity:Lcom/autonavi/wh/navigation/app/NaviActivity;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/app/NaviActivity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
