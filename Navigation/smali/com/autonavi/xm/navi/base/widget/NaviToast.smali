.class public Lcom/autonavi/xm/navi/base/widget/NaviToast;
.super Ljava/lang/Object;


# static fields
.field private static final WHAT_REFRESH_TOAST:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mImg:Landroid/widget/ImageView;

.field private final mMainHandler:Landroid/os/Handler;

.field private mToast:Landroid/widget/Toast;

.field private mTxt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/autonavi/xm/navi/base/widget/NaviToast$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xm/navi/base/widget/NaviToast$1;-><init>(Lcom/autonavi/xm/navi/base/widget/NaviToast;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/base/widget/NaviToast;->mMainHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/autonavi/xm/navi/base/widget/NaviToast;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xm/navi/base/widget/NaviToast;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/NaviToast;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Lcom/autonavi/xm/navi/base/widget/NaviToast;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/base/widget/NaviToast;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$100(Lcom/autonavi/xm/navi/base/widget/NaviToast;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/NaviToast;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/xm/navi/base/widget/NaviToast;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/NaviToast;->mTxt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/autonavi/xm/navi/base/widget/NaviToast;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/base/widget/NaviToast;->mTxt:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/autonavi/xm/navi/base/widget/NaviToast;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/NaviToast;->mImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/autonavi/xm/navi/base/widget/NaviToast;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/base/widget/NaviToast;->mImg:Landroid/widget/ImageView;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/NaviToast;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/NaviToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method public show(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/NaviToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/autonavi/xm/navi/base/widget/NaviToast;->show(Ljava/lang/String;II)V

    return-void
.end method

.method public show(II)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/NaviToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/autonavi/xm/navi/base/widget/NaviToast;->show(Ljava/lang/String;II)V

    return-void
.end method

.method public show(III)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/NaviToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/autonavi/xm/navi/base/widget/NaviToast;->show(Ljava/lang/String;II)V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/autonavi/xm/navi/base/widget/NaviToast;->show(Ljava/lang/String;II)V

    return-void
.end method

.method public show(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/autonavi/xm/navi/base/widget/NaviToast;->show(Ljava/lang/String;II)V

    return-void
.end method

.method public show(Ljava/lang/String;II)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/NaviToast;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
