.class Lcom/yf/bar/Clock$1;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/bar/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yf/bar/Clock;


# direct methods
.method constructor <init>(Lcom/yf/bar/Clock;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yf/bar/Clock$1;->this$0:Lcom/yf/bar/Clock;

    .line 111
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    const-string v2, "time-zone"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "tz":Ljava/lang/String;
    iget-object v2, p0, Lcom/yf/bar/Clock$1;->this$0:Lcom/yf/bar/Clock;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yf/bar/Clock;->access$0(Lcom/yf/bar/Clock;Ljava/util/Calendar;)V

    .line 118
    iget-object v2, p0, Lcom/yf/bar/Clock$1;->this$0:Lcom/yf/bar/Clock;

    # getter for: Lcom/yf/bar/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lcom/yf/bar/Clock;->access$1(Lcom/yf/bar/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/yf/bar/Clock$1;->this$0:Lcom/yf/bar/Clock;

    # getter for: Lcom/yf/bar/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lcom/yf/bar/Clock;->access$1(Lcom/yf/bar/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/bar/Clock$1;->this$0:Lcom/yf/bar/Clock;

    # getter for: Lcom/yf/bar/Clock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v3}, Lcom/yf/bar/Clock;->access$2(Lcom/yf/bar/Clock;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 122
    .end local v1    # "tz":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/yf/bar/Clock$1;->this$0:Lcom/yf/bar/Clock;

    invoke-virtual {v2}, Lcom/yf/bar/Clock;->updateClock()V

    .line 123
    return-void
.end method
