.class Lcom/autonavi/xm/widget/CompoundButtonGroup$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/widget/CompoundButtonGroup;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/widget/CompoundButtonGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/widget/CompoundButtonGroup$1;->this$0:Lcom/autonavi/xm/widget/CompoundButtonGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/4 v2, -0x1

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundButtonGroup$1;->this$0:Lcom/autonavi/xm/widget/CompoundButtonGroup;

    # getter for: Lcom/autonavi/xm/widget/CompoundButtonGroup;->mCheckedId:I
    invoke-static {v0}, Lcom/autonavi/xm/widget/CompoundButtonGroup;->access$000(Lcom/autonavi/xm/widget/CompoundButtonGroup;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundButtonGroup$1;->this$0:Lcom/autonavi/xm/widget/CompoundButtonGroup;

    iget-object v1, p0, Lcom/autonavi/xm/widget/CompoundButtonGroup$1;->this$0:Lcom/autonavi/xm/widget/CompoundButtonGroup;

    # getter for: Lcom/autonavi/xm/widget/CompoundButtonGroup;->mCheckedId:I
    invoke-static {v1}, Lcom/autonavi/xm/widget/CompoundButtonGroup;->access$000(Lcom/autonavi/xm/widget/CompoundButtonGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/widget/CompoundButtonGroup;->findButtonById(I)Landroid/widget/CompoundButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundButtonGroup$1;->this$0:Lcom/autonavi/xm/widget/CompoundButtonGroup;

    # invokes: Lcom/autonavi/xm/widget/CompoundButtonGroup;->setCheckedId(Landroid/widget/CompoundButton;)V
    invoke-static {v0, p1}, Lcom/autonavi/xm/widget/CompoundButtonGroup;->access$100(Lcom/autonavi/xm/widget/CompoundButtonGroup;Landroid/widget/CompoundButton;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundButtonGroup$1;->this$0:Lcom/autonavi/xm/widget/CompoundButtonGroup;

    # getter for: Lcom/autonavi/xm/widget/CompoundButtonGroup;->mCheckedId:I
    invoke-static {v0}, Lcom/autonavi/xm/widget/CompoundButtonGroup;->access$000(Lcom/autonavi/xm/widget/CompoundButtonGroup;)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/widget/CompoundButtonGroup$1;->this$0:Lcom/autonavi/xm/widget/CompoundButtonGroup;

    # setter for: Lcom/autonavi/xm/widget/CompoundButtonGroup;->mCheckedId:I
    invoke-static {v0, v2}, Lcom/autonavi/xm/widget/CompoundButtonGroup;->access$002(Lcom/autonavi/xm/widget/CompoundButtonGroup;I)I

    goto :goto_0
.end method
