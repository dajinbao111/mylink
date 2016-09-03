.class Lcom/autonavi/wh/navi/cooperation/YFCompany$2;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/navi/cooperation/YFCompany;


# direct methods
.method constructor <init>(Lcom/autonavi/wh/navi/cooperation/YFCompany;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navi/cooperation/YFCompany$2;->this$0:Lcom/autonavi/wh/navi/cooperation/YFCompany;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navi/cooperation/YFCompany$2;->this$0:Lcom/autonavi/wh/navi/cooperation/YFCompany;

    # invokes: Lcom/autonavi/wh/navi/cooperation/YFCompany;->handleReceive(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/autonavi/wh/navi/cooperation/YFCompany;->access$100(Lcom/autonavi/wh/navi/cooperation/YFCompany;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
