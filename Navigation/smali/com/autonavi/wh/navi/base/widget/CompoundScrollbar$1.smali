.class Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar$1;->this$0:Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar$1;->this$0:Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;

    invoke-virtual {v0}, Lcom/autonavi/wh/navi/base/widget/CompoundScrollbar;->requestLayout()V

    return-void
.end method
