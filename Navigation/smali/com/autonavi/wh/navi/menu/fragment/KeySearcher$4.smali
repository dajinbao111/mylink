.class Lcom/autonavi/wh/navi/menu/fragment/KeySearcher$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/menu/fragment/KeySearcher;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/menu/fragment/KeySearcher;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/menu/fragment/KeySearcher$4;->this$0:Lcom/autonavi/wh/navi/menu/fragment/KeySearcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/KeySearcher$4;->this$0:Lcom/autonavi/wh/navi/menu/fragment/KeySearcher;

    # invokes: Lcom/autonavi/wh/navi/menu/fragment/KeySearcher;->isUserInteractable()Z
    invoke-static {v1}, Lcom/autonavi/wh/navi/menu/fragment/KeySearcher;->access$800(Lcom/autonavi/wh/navi/menu/fragment/KeySearcher;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/KeySearcher$4;->this$0:Lcom/autonavi/wh/navi/menu/fragment/KeySearcher;

    # setter for: Lcom/autonavi/wh/navi/menu/fragment/KeySearcher;->mSearchSync:Z
    invoke-static {v1, v0}, Lcom/autonavi/wh/navi/menu/fragment/KeySearcher;->access$902(Lcom/autonavi/wh/navi/menu/fragment/KeySearcher;Z)Z

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/wh/navi/menu/fragment/KeySearcher$4;->this$0:Lcom/autonavi/wh/navi/menu/fragment/KeySearcher;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # invokes: Lcom/autonavi/wh/navi/menu/fragment/KeySearcher;->doSearch(Ljava/lang/Boolean;)V
    invoke-static {v1, v0}, Lcom/autonavi/wh/navi/menu/fragment/KeySearcher;->access$1000(Lcom/autonavi/wh/navi/menu/fragment/KeySearcher;Ljava/lang/Boolean;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
