.class public abstract Lcom/autonavi/xm/support/app/FragmentTransaction;
.super Ljava/lang/Object;


# static fields
.field public static final TRANSIT_ENTER_MASK:I = 0x1000

.field public static final TRANSIT_EXIT_MASK:I = 0x2000

.field public static final TRANSIT_FRAGMENT_CLOSE:I = 0x2002

.field public static final TRANSIT_FRAGMENT_FADE:I = 0x1003

.field public static final TRANSIT_FRAGMENT_OPEN:I = 0x1001

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_UNSET:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(ILcom/autonavi/xm/support/app/Fragment;)Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method

.method public abstract add(ILcom/autonavi/xm/support/app/Fragment;Ljava/lang/String;)Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method

.method public abstract add(Lcom/autonavi/xm/support/app/Fragment;Ljava/lang/String;)Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method

.method public abstract addToBackStack(Ljava/lang/String;)Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method

.method public abstract attach(Lcom/autonavi/xm/support/app/Fragment;)Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method

.method public abstract commit()I
.end method

.method public abstract commitAllowingStateLoss()I
.end method

.method public abstract detach(Lcom/autonavi/xm/support/app/Fragment;)Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method

.method public abstract disallowAddToBackStack()Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method

.method public abstract hide(Lcom/autonavi/xm/support/app/Fragment;)Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method

.method public abstract isAddToBackStackAllowed()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract remove(Lcom/autonavi/xm/support/app/Fragment;)Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method

.method public abstract replace(ILcom/autonavi/xm/support/app/Fragment;)Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method

.method public abstract replace(ILcom/autonavi/xm/support/app/Fragment;Ljava/lang/String;)Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method

.method public abstract setBreadCrumbShortTitle(I)Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method

.method public abstract setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method

.method public abstract setBreadCrumbTitle(I)Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method

.method public abstract setBreadCrumbTitle(Ljava/lang/CharSequence;)Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method

.method public abstract setCustomAnimations(II)Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method

.method public abstract setCustomAnimations(IIII)Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method

.method public abstract setTransition(I)Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method

.method public abstract setTransitionStyle(I)Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method

.method public abstract show(Lcom/autonavi/xm/support/app/Fragment;)Lcom/autonavi/xm/support/app/FragmentTransaction;
.end method
