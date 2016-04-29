.class Lcom/yf/appinfo/BrowseApplicationInfoAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BrowseApplicationInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/appinfo/BrowseApplicationInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field appIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/yf/appinfo/BrowseApplicationInfoAdapter;

.field tvAppLabel:Landroid/widget/TextView;

.field tvPkgName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/yf/appinfo/BrowseApplicationInfoAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/yf/appinfo/BrowseApplicationInfoAdapter$ViewHolder;->this$0:Lcom/yf/appinfo/BrowseApplicationInfoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const v0, 0x7f0a0001

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/appinfo/BrowseApplicationInfoAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 70
    const v0, 0x7f0a0003

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/appinfo/BrowseApplicationInfoAdapter$ViewHolder;->tvAppLabel:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0a0005

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/appinfo/BrowseApplicationInfoAdapter$ViewHolder;->tvPkgName:Landroid/widget/TextView;

    .line 72
    return-void
.end method
