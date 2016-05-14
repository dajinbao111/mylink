.class Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar$3;->this$0:Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar$3;->this$0:Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;

    # invokes: Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;->initTrack()V
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;->access$200(Lcom/autonavi/xm/navi/base/widget/CompoundScrollbar;)V

    return-void
.end method
