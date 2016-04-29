.class public Lcom/yf/appinfo/BrowseApplicationInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "BrowseApplicationInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/appinfo/BrowseApplicationInfoAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field infater:Landroid/view/LayoutInflater;

.field private mlistAppInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/appinfo/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/yf/appinfo/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/yf/appinfo/AppInfo;>;"
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/yf/appinfo/BrowseApplicationInfoAdapter;->mlistAppInfo:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lcom/yf/appinfo/BrowseApplicationInfoAdapter;->infater:Landroid/view/LayoutInflater;

    .line 23
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/yf/appinfo/BrowseApplicationInfoAdapter;->infater:Landroid/view/LayoutInflater;

    .line 24
    iput-object p2, p0, Lcom/yf/appinfo/BrowseApplicationInfoAdapter;->mlistAppInfo:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 29
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yf/appinfo/BrowseApplicationInfoAdapter;->mlistAppInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/yf/appinfo/BrowseApplicationInfoAdapter;->mlistAppInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yf/appinfo/BrowseApplicationInfoAdapter;->mlistAppInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 40
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertview"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getView at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 47
    .local v1, "holder":Lcom/yf/appinfo/BrowseApplicationInfoAdapter$ViewHolder;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 48
    :cond_0
    iget-object v3, p0, Lcom/yf/appinfo/BrowseApplicationInfoAdapter;->infater:Landroid/view/LayoutInflater;

    const v4, 0x7f030001

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 49
    new-instance v1, Lcom/yf/appinfo/BrowseApplicationInfoAdapter$ViewHolder;

    .end local v1    # "holder":Lcom/yf/appinfo/BrowseApplicationInfoAdapter$ViewHolder;
    invoke-direct {v1, p0, v2}, Lcom/yf/appinfo/BrowseApplicationInfoAdapter$ViewHolder;-><init>(Lcom/yf/appinfo/BrowseApplicationInfoAdapter;Landroid/view/View;)V

    .line 50
    .restart local v1    # "holder":Lcom/yf/appinfo/BrowseApplicationInfoAdapter$ViewHolder;
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yf/appinfo/BrowseApplicationInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/appinfo/AppInfo;

    .line 57
    .local v0, "appInfo":Lcom/yf/appinfo/AppInfo;
    iget-object v3, v1, Lcom/yf/appinfo/BrowseApplicationInfoAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/yf/appinfo/AppInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object v3, v1, Lcom/yf/appinfo/BrowseApplicationInfoAdapter$ViewHolder;->tvAppLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yf/appinfo/AppInfo;->getAppLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v3, v1, Lcom/yf/appinfo/BrowseApplicationInfoAdapter$ViewHolder;->tvPkgName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yf/appinfo/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-object v2

    .line 53
    .end local v0    # "appInfo":Lcom/yf/appinfo/AppInfo;
    :cond_1
    move-object v2, p2

    .line 54
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/yf/appinfo/BrowseApplicationInfoAdapter$ViewHolder;
    check-cast v1, Lcom/yf/appinfo/BrowseApplicationInfoAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/yf/appinfo/BrowseApplicationInfoAdapter$ViewHolder;
    goto :goto_0
.end method
