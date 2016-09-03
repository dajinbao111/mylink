.class Lcom/autonavi/wh/ime/widget/CandidateListView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/ime/widget/CandidateListView;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/ime/widget/CandidateListView;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/ime/widget/CandidateListView$1;->this$0:Lcom/autonavi/wh/ime/widget/CandidateListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/ime/widget/CandidateListView$1;->this$0:Lcom/autonavi/wh/ime/widget/CandidateListView;

    invoke-virtual {v0}, Lcom/autonavi/wh/ime/widget/CandidateListView;->reset()V

    return-void
.end method
