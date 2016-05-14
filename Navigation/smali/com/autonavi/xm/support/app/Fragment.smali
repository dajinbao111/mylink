.class public Lcom/autonavi/xm/support/app/Fragment;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final RESUMED:I = 0x5

.field static final STARTED:I = 0x4

.field static final STOPPED:I = 0x3

.field private static final sClassMap:Ljava/util/HashMap;


# instance fields
.field mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

.field mAdded:Z

.field mAnimatingAway:Landroid/view/View;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mCheckedForLoaderManager:Z

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Lcom/autonavi/xm/support/app/FragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

.field mLoadersStarted:Z

.field mMenuVisible:Z

.field mNextAnim:I

.field mRemoving:Z

.field mRestored:Z

.field mResumed:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;

.field mState:I

.field mStateAfterAnimating:I

.field mTag:Ljava/lang/String;

.field mTarget:Lcom/autonavi/xm/support/app/Fragment;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/autonavi/xm/support/app/Fragment;->sClassMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mState:I

    iput v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mIndex:I

    iput v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mTargetIndex:I

    iput-boolean v2, p0, Lcom/autonavi/xm/support/app/Fragment;->mMenuVisible:Z

    iput-boolean v2, p0, Lcom/autonavi/xm/support/app/Fragment;->mUserVisibleHint:Z

    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Lcom/autonavi/xm/support/app/Fragment;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/autonavi/xm/support/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/autonavi/xm/support/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/autonavi/xm/support/app/Fragment;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/autonavi/xm/support/app/Fragment;->sClassMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/support/app/Fragment;->sClassMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/support/app/Fragment;

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iput-object p2, v0, Lcom/autonavi/xm/support/app/Fragment;->mArguments:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/autonavi/xm/support/app/Fragment$InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/autonavi/xm/support/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/autonavi/xm/support/app/Fragment$InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/autonavi/xm/support/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/autonavi/xm/support/app/Fragment$InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/autonavi/xm/support/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mResumed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mResumed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mFragmentManager:Lcom/autonavi/xm/support/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mFragmentManager:Lcom/autonavi/xm/support/app/FragmentManagerImpl;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mTarget:Lcom/autonavi/xm/support/app/Fragment;

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mTarget:Lcom/autonavi/xm/support/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_5
    iget v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mNextAnim:I

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mNextAnim:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mInnerView:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mAnimatingAway:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mStateAfterAnimating:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_a
    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    if-eqz v0, :cond_b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/autonavi/xm/support/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    return-object v0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getFragmentManager()Lcom/autonavi/xm/support/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mFragmentManager:Lcom/autonavi/xm/support/app/FragmentManagerImpl;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mFragmentId:I

    return v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/autonavi/xm/support/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderManager()Lcom/autonavi/xm/support/app/LoaderManager;
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-boolean v3, p0, Lcom/autonavi/xm/support/app/Fragment;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    iget v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mIndex:I

    iget-boolean v2, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/xm/support/app/FragmentActivity;->getLoaderManager(IZZ)Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    goto :goto_0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/autonavi/xm/support/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getRetainInstance()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mRetainInstance:Z

    return v0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/support/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/support/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetFragment()Lcom/autonavi/xm/support/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mTarget:Lcom/autonavi/xm/support/app/Fragment;

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mTargetRequestCode:I

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/support/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUserVisibleHint()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mUserVisibleHint:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method initState()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mIndex:I

    iput-object v2, p0, Lcom/autonavi/xm/support/app/Fragment;->mWho:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mAdded:Z

    iput-boolean v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mRemoving:Z

    iput-boolean v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mResumed:Z

    iput-boolean v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mFromLayout:Z

    iput-boolean v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mInLayout:Z

    iput-boolean v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mRestored:Z

    iput v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mBackStackNesting:I

    iput-object v2, p0, Lcom/autonavi/xm/support/app/Fragment;->mFragmentManager:Lcom/autonavi/xm/support/app/FragmentManagerImpl;

    iput-object v2, p0, Lcom/autonavi/xm/support/app/Fragment;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    iput v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mFragmentId:I

    iput v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mContainerId:I

    iput-object v2, p0, Lcom/autonavi/xm/support/app/Fragment;->mTag:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mHidden:Z

    iput-boolean v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mDetached:Z

    iput-boolean v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mRetaining:Z

    iput-object v2, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    iput-boolean v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoadersStarted:Z

    iput-boolean v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mCheckedForLoaderManager:Z

    return-void
.end method

.method public final isAdded()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDetached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mDetached:Z

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mHidden:Z

    return v0
.end method

.method final isInBackStack()Z
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mBackStackNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mInLayout:Z

    return v0
.end method

.method public final isRemoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mRemoving:Z

    return v0
.end method

.method public final isResumed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mResumed:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/support/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/support/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/support/app/Fragment;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/xm/support/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mCalled:Z

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    iget v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mIndex:I

    iget-boolean v2, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/xm/support/app/FragmentActivity;->getLoaderManager(IZZ)Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    invoke-virtual {v0}, Lcom/autonavi/xm/support/app/LoaderManagerImpl;->doDestroy()V

    :cond_1
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mCalled:Z

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoadersStarted:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoadersStarted:Z

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    iget v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mIndex:I

    iget-boolean v2, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/xm/support/app/FragmentActivity;->getLoaderManager(IZZ)Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    invoke-virtual {v0}, Lcom/autonavi/xm/support/app/LoaderManagerImpl;->doStart()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method performDestroyView()V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/support/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    invoke-virtual {v0}, Lcom/autonavi/xm/support/app/LoaderManagerImpl;->doReportNextStart()V

    :cond_0
    return-void
.end method

.method performReallyStop()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoadersStarted:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoadersStarted:Z

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    iget v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mIndex:I

    iget-boolean v2, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/xm/support/app/FragmentActivity;->getLoaderManager(IZZ)Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    iget-boolean v0, v0, Lcom/autonavi/xm/support/app/FragmentActivity;->mRetaining:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    invoke-virtual {v0}, Lcom/autonavi/xm/support/app/LoaderManagerImpl;->doStop()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    invoke-virtual {v0}, Lcom/autonavi/xm/support/app/LoaderManagerImpl;->doRetain()V

    goto :goto_0
.end method

.method performStart()V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/support/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mLoaderManager:Lcom/autonavi/xm/support/app/LoaderManagerImpl;

    invoke-virtual {v0}, Lcom/autonavi/xm/support/app/LoaderManagerImpl;->doReportStart()V

    :cond_0
    return-void
.end method

.method performStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/autonavi/xm/support/app/Fragment;->onStop()V

    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method final restoreViewState()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    :cond_0
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/autonavi/xm/support/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/autonavi/xm/support/app/Fragment;->mHasMenu:Z

    invoke-virtual {p0}, Lcom/autonavi/xm/support/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/support/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/autonavi/xm/support/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method final setIndex(I)V
    .locals 2

    iput p1, p0, Lcom/autonavi/xm/support/app/Fragment;->mIndex:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mWho:Ljava/lang/String;

    return-void
.end method

.method public setInitialSavedState(Lcom/autonavi/xm/support/app/Fragment$SavedState;)V
    .locals 2

    iget v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/autonavi/xm/support/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/autonavi/xm/support/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    :goto_0
    iput-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/autonavi/xm/support/app/Fragment;->mMenuVisible:Z

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/support/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/support/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/autonavi/xm/support/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/support/app/Fragment;->mRetainInstance:Z

    return-void
.end method

.method public setTargetFragment(Lcom/autonavi/xm/support/app/Fragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/support/app/Fragment;->mTarget:Lcom/autonavi/xm/support/app/Fragment;

    iput p2, p0, Lcom/autonavi/xm/support/app/Fragment;->mTargetRequestCode:I

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mFragmentManager:Lcom/autonavi/xm/support/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/support/app/FragmentManagerImpl;->performPendingDeferredStart(Lcom/autonavi/xm/support/app/Fragment;)V

    :cond_0
    iput-boolean p1, p0, Lcom/autonavi/xm/support/app/Fragment;->mUserVisibleHint:Z

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mDeferStart:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/autonavi/xm/support/app/FragmentActivity;->startActivityFromFragment(Lcom/autonavi/xm/support/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/support/app/Fragment;->mActivity:Lcom/autonavi/xm/support/app/FragmentActivity;

    invoke-virtual {v0, p0, p1, p2}, Lcom/autonavi/xm/support/app/FragmentActivity;->startActivityFromFragment(Lcom/autonavi/xm/support/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mIndex:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_1

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autonavi/xm/support/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method