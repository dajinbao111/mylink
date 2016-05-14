.class public abstract Lcom/autonavi/xm/support/app/FragmentManager;
.super Ljava/lang/Object;


# static fields
.field public static final POP_BACK_STACK_INCLUSIVE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDebugLogging(Z)V
    .locals 0

    sput-boolean p0, Lcom/autonavi/xm/support/app/FragmentManagerImpl;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public abstract addOnBackStackChangedListener(Lcom/autonavi/xm/support/app/FragmentManager$OnBackStackChangedListener;)V
.end method

.method public abstract beginTransaction()Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract executePendingTransactions()Z
.end method

.method public abstract findFragmentById(I)Lcom/autonavi/xm/support/app/Fragment;
.end method

.method public abstract findFragmentByTag(Ljava/lang/String;)Lcom/autonavi/xm/support/app/Fragment;
.end method

.method public abstract getBackStackEntryAt(I)Lcom/autonavi/xm/support/app/FragmentManager$BackStackEntry;
.end method

.method public abstract getBackStackEntryCount()I
.end method

.method public abstract getFragment(Landroid/os/Bundle;Ljava/lang/String;)Lcom/autonavi/xm/support/app/Fragment;
.end method

.method public openTransaction()Lcom/autonavi/xm/support/app/FragmentTransaction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/autonavi/xm/support/app/FragmentManager;->beginTransaction()Lcom/autonavi/xm/support/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public abstract popBackStack()V
.end method

.method public abstract popBackStack(II)V
.end method

.method public abstract popBackStack(Ljava/lang/String;I)V
.end method

.method public abstract popBackStackImmediate()Z
.end method

.method public abstract popBackStackImmediate(II)Z
.end method

.method public abstract popBackStackImmediate(Ljava/lang/String;I)Z
.end method

.method public abstract putFragment(Landroid/os/Bundle;Ljava/lang/String;Lcom/autonavi/xm/support/app/Fragment;)V
.end method

.method public abstract removeOnBackStackChangedListener(Lcom/autonavi/xm/support/app/FragmentManager$OnBackStackChangedListener;)V
.end method

.method public abstract saveFragmentInstanceState(Lcom/autonavi/xm/support/app/Fragment;)Lcom/autonavi/xm/support/app/Fragment$SavedState;
.end method
