.class Lcom/autonavi/xm/navi/commonuse/CommonUseFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/map/AnMap$OnTrafficStatusListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/commonuse/CommonUseFragment;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/commonuse/CommonUseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/commonuse/CommonUseFragment$2;->this$0:Lcom/autonavi/xm/navi/commonuse/CommonUseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrafficStatus(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/commonuse/CommonUseFragment$2;->this$0:Lcom/autonavi/xm/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/xm/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/xm/navi/commonuse/CommonUseFragment;->access$000(Lcom/autonavi/xm/navi/commonuse/CommonUseFragment;)Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b012c

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/commonuse/CommonUseFragment$2;->this$0:Lcom/autonavi/xm/navi/commonuse/CommonUseFragment;

    # getter for: Lcom/autonavi/xm/navi/commonuse/CommonUseFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;
    invoke-static {v0}, Lcom/autonavi/xm/navi/commonuse/CommonUseFragment;->access$000(Lcom/autonavi/xm/navi/commonuse/CommonUseFragment;)Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    move-result-object v0

    const v1, 0x7f0b01a7

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->showToast(I)V

    goto :goto_0
.end method
