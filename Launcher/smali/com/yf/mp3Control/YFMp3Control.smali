.class public Lcom/yf/mp3Control/YFMp3Control;
.super Landroid/widget/LinearLayout;
.source "YFMp3Control.java"


# static fields
.field public static context:Landroid/content/Context;

.field public static mp3Next:Landroid/widget/ImageView;

.field public static mp3Play:Landroid/widget/ImageView;

.field public static mp3PlayerName:Landroid/widget/TextView;

.field public static mp3Pre:Landroid/widget/ImageView;

.field public static mp3Title:Landroid/widget/TextView;

.field public static scanDialog:Landroid/app/ProgressDialog;

.field public static time:Landroid/widget/TextView;


# instance fields
.field public serviceIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    sput-object p1, Lcom/yf/mp3Control/YFMp3Control;->context:Landroid/content/Context;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    invoke-virtual {p0}, Lcom/yf/mp3Control/YFMp3Control;->mp3init()V

    .line 45
    return-void
.end method

.method private buttononclick()V
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Pre:Landroid/widget/ImageView;

    new-instance v1, Lcom/yf/mp3Control/YFMp3Control$1;

    invoke-direct {v1, p0}, Lcom/yf/mp3Control/YFMp3Control$1;-><init>(Lcom/yf/mp3Control/YFMp3Control;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Play:Landroid/widget/ImageView;

    new-instance v1, Lcom/yf/mp3Control/YFMp3Control$2;

    invoke-direct {v1, p0}, Lcom/yf/mp3Control/YFMp3Control$2;-><init>(Lcom/yf/mp3Control/YFMp3Control;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Next:Landroid/widget/ImageView;

    new-instance v1, Lcom/yf/mp3Control/YFMp3Control$3;

    invoke-direct {v1, p0}, Lcom/yf/mp3Control/YFMp3Control$3;-><init>(Lcom/yf/mp3Control/YFMp3Control;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method


# virtual methods
.method public mp3init()V
    .locals 3

    .prologue
    .line 49
    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/yf/mp3Control/YFMp3Control;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Title:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcom/yf/mp3Control/YFMp3Control;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3PlayerName:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcom/yf/mp3Control/YFMp3Control;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Pre:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Lcom/yf/mp3Control/YFMp3Control;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Play:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/yf/mp3Control/YFMp3Control;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/yf/mp3Control/YFMp3Control;->mp3Next:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/yf/mp3Control/YFMp3Control;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/yf/mp3Control/YFMp3Control;->time:Landroid/widget/TextView;

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yf.mp3service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yf/mp3Control/YFMp3Control;->serviceIntent:Landroid/content/Intent;

    .line 59
    iget-object v0, p0, Lcom/yf/mp3Control/YFMp3Control;->serviceIntent:Landroid/content/Intent;

    const-string v1, "style"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    sget-object v0, Lcom/yf/mp3Control/YFMp3Control;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/yf/mp3Control/YFMp3Control;->serviceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 64
    invoke-direct {p0}, Lcom/yf/mp3Control/YFMp3Control;->buttononclick()V

    .line 65
    return-void
.end method
