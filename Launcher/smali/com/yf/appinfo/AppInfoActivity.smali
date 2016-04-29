.class public Lcom/yf/appinfo/AppInfoActivity;
.super Landroid/app/Activity;
.source "AppInfoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private gridView:Landroid/widget/GridView;

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
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/yf/appinfo/AppInfoActivity;->gridView:Landroid/widget/GridView;

    .line 37
    iput-object v0, p0, Lcom/yf/appinfo/AppInfoActivity;->mlistAppInfo:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/yf/appinfo/AppInfoActivity;->setContentView(I)V

    .line 44
    const/high16 v1, 0x7f0a0000

    invoke-virtual {p0, v1}, Lcom/yf/appinfo/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/yf/appinfo/AppInfoActivity;->gridView:Landroid/widget/GridView;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yf/appinfo/AppInfoActivity;->mlistAppInfo:Ljava/util/List;

    .line 46
    invoke-virtual {p0}, Lcom/yf/appinfo/AppInfoActivity;->queryAppInfo()V

    .line 47
    new-instance v0, Lcom/yf/appinfo/BrowseApplicationInfoAdapter;

    .line 48
    iget-object v1, p0, Lcom/yf/appinfo/AppInfoActivity;->mlistAppInfo:Ljava/util/List;

    .line 47
    invoke-direct {v0, p0, v1}, Lcom/yf/appinfo/BrowseApplicationInfoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 49
    .local v0, "browseAppAdapter":Lcom/yf/appinfo/BrowseApplicationInfoAdapter;
    iget-object v1, p0, Lcom/yf/appinfo/AppInfoActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    iget-object v1, p0, Lcom/yf/appinfo/AppInfoActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/yf/appinfo/AppInfoActivity;->mlistAppInfo:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/appinfo/AppInfo;

    invoke-virtual {v1}, Lcom/yf/appinfo/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/yf/appinfo/AppInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method public queryAppInfo()V
    .locals 14

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/yf/appinfo/AppInfoActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 62
    .local v7, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    const/4 v11, 0x0

    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 63
    .local v5, "mainIntent":Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const/16 v10, 0x2000

    invoke-virtual {v7, v5, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 69
    .local v9, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v10, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v10, v7}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    iget-object v10, p0, Lcom/yf/appinfo/AppInfoActivity;->mlistAppInfo:Ljava/util/List;

    if-eqz v10, :cond_0

    .line 71
    iget-object v10, p0, Lcom/yf/appinfo/AppInfoActivity;->mlistAppInfo:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 72
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 93
    :cond_0
    return-void

    .line 72
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 73
    .local v8, "reInfo":Landroid/content/pm/ResolveInfo;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 74
    .local v0, "activityName":Ljava/lang/String;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 76
    .local v6, "pkgName":Ljava/lang/String;
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    .local v2, "appLabel":Ljava/lang/String;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 81
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 82
    .local v4, "launchIntent":Landroid/content/Intent;
    new-instance v11, Landroid/content/ComponentName;

    .line 83
    invoke-direct {v11, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 85
    new-instance v1, Lcom/yf/appinfo/AppInfo;

    invoke-direct {v1}, Lcom/yf/appinfo/AppInfo;-><init>()V

    .line 86
    .local v1, "appInfo":Lcom/yf/appinfo/AppInfo;
    invoke-virtual {v1, v2}, Lcom/yf/appinfo/AppInfo;->setAppLabel(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, v6}, Lcom/yf/appinfo/AppInfo;->setPkgName(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v3}, Lcom/yf/appinfo/AppInfo;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 89
    invoke-virtual {v1, v4}, Lcom/yf/appinfo/AppInfo;->setIntent(Landroid/content/Intent;)V

    .line 90
    iget-object v11, p0, Lcom/yf/appinfo/AppInfoActivity;->mlistAppInfo:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
