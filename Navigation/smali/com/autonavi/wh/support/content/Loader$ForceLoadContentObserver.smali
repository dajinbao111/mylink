.class public final Lcom/autonavi/wh/support/content/Loader$ForceLoadContentObserver;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic this$0:Lcom/autonavi/wh/support/content/Loader;


# direct methods
.method public constructor <init>(Lcom/autonavi/wh/support/content/Loader;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/wh/support/content/Loader$ForceLoadContentObserver;->this$0:Lcom/autonavi/wh/support/content/Loader;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/support/content/Loader$ForceLoadContentObserver;->this$0:Lcom/autonavi/wh/support/content/Loader;

    invoke-virtual {v0}, Lcom/autonavi/wh/support/content/Loader;->onContentChanged()V

    return-void
.end method
