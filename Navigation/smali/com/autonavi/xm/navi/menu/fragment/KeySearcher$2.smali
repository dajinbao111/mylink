.class Lcom/autonavi/xm/navi/menu/fragment/KeySearcher$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->clearSearchKeyOnXml()V
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->access$200(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->loadSearchKeyFromXml()V
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->access$300(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->initDatas()V
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->access$400(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->clearCityKeyOnXml()V
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->access$500(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->loadCityKeyFromXml()V
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->access$600(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher$2;->this$0:Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;

    # invokes: Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->initCityDatas()V
    invoke-static {v0}, Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;->access$700(Lcom/autonavi/xm/navi/menu/fragment/KeySearcher;)V

    return-void
.end method
