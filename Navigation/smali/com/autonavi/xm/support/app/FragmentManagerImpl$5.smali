.class Lcom/autonavi/xm/support/app/FragmentManagerImpl$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/support/app/FragmentManagerImpl;

.field final synthetic val$fragment:Lcom/autonavi/xm/support/app/Fragment;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/support/app/FragmentManagerImpl;Lcom/autonavi/xm/support/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/support/app/FragmentManagerImpl$5;->this$0:Lcom/autonavi/xm/support/app/FragmentManagerImpl;

    iput-object p2, p0, Lcom/autonavi/xm/support/app/FragmentManagerImpl$5;->val$fragment:Lcom/autonavi/xm/support/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/support/app/FragmentManagerImpl$5;->val$fragment:Lcom/autonavi/xm/support/app/Fragment;

    iget-object v0, v0, Lcom/autonavi/xm/support/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/support/app/FragmentManagerImpl$5;->val$fragment:Lcom/autonavi/xm/support/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/autonavi/xm/support/app/Fragment;->mAnimatingAway:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xm/support/app/FragmentManagerImpl$5;->this$0:Lcom/autonavi/xm/support/app/FragmentManagerImpl;

    iget-object v1, p0, Lcom/autonavi/xm/support/app/FragmentManagerImpl$5;->val$fragment:Lcom/autonavi/xm/support/app/Fragment;

    iget-object v2, p0, Lcom/autonavi/xm/support/app/FragmentManagerImpl$5;->val$fragment:Lcom/autonavi/xm/support/app/Fragment;

    iget v2, v2, Lcom/autonavi/xm/support/app/Fragment;->mStateAfterAnimating:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xm/support/app/FragmentManagerImpl;->moveToState(Lcom/autonavi/xm/support/app/Fragment;IIIZ)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
