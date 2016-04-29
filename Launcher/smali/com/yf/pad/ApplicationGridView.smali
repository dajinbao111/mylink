.class public Lcom/yf/pad/ApplicationGridView;
.super Landroid/app/Activity;
.source "ApplicationGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/pad/ApplicationGridView$CollectActivitiesTask;,
        Lcom/yf/pad/ApplicationGridView$FeaturedActivity;,
        Lcom/yf/pad/ApplicationGridView$GridViewAdapter;,
        Lcom/yf/pad/ApplicationGridView$Group;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private gridViewAdapter:Lcom/yf/pad/ApplicationGridView$GridViewAdapter;

.field private gv:Landroid/widget/GridView;

.field mFeaturedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/pad/ApplicationGridView$FeaturedActivity;",
            ">;"
        }
    .end annotation
.end field

.field mFeaturedClassNames:[Ljava/lang/String;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field private strWinName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/pad/ApplicationGridView;->mFeaturedActivities:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/pad/ApplicationGridView;->children:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/yf/pad/ApplicationGridView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yf/pad/ApplicationGridView;->strWinName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yf/pad/ApplicationGridView;)Lcom/yf/pad/ApplicationGridView$GridViewAdapter;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yf/pad/ApplicationGridView;->gridViewAdapter:Lcom/yf/pad/ApplicationGridView$GridViewAdapter;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/yf/pad/ApplicationGridView;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/yf/pad/ApplicationGridView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "winName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/pad/ApplicationGridView;->strWinName:Ljava/lang/String;

    .line 59
    const/high16 v1, 0x7f0a0000

    invoke-virtual {p0, v1}, Lcom/yf/pad/ApplicationGridView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/yf/pad/ApplicationGridView;->gv:Landroid/widget/GridView;

    .line 60
    new-instance v1, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;

    invoke-virtual {p0}, Lcom/yf/pad/ApplicationGridView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;-><init>(Lcom/yf/pad/ApplicationGridView;Landroid/view/LayoutInflater;)V

    iput-object v1, p0, Lcom/yf/pad/ApplicationGridView;->gridViewAdapter:Lcom/yf/pad/ApplicationGridView$GridViewAdapter;

    .line 61
    iget-object v1, p0, Lcom/yf/pad/ApplicationGridView;->gv:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/yf/pad/ApplicationGridView;->gridViewAdapter:Lcom/yf/pad/ApplicationGridView$GridViewAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    invoke-virtual {p0}, Lcom/yf/pad/ApplicationGridView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/pad/ApplicationGridView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 64
    new-instance v1, Lcom/yf/pad/ApplicationGridView$CollectActivitiesTask;

    invoke-direct {v1, p0}, Lcom/yf/pad/ApplicationGridView$CollectActivitiesTask;-><init>(Lcom/yf/pad/ApplicationGridView;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/yf/pad/ApplicationGridView$CollectActivitiesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    iget-object v1, p0, Lcom/yf/pad/ApplicationGridView;->gv:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "positon"    # I
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
    .line 219
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a000a

    if-ne v4, v5, :cond_0

    .line 220
    const-string v4, "tag"

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 222
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    const-string v4, "tag"

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 224
    .local v3, "packageName":Ljava/lang/String;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 226
    .local v1, "className":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pN:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   cN:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, v2}, Lcom/yf/pad/ApplicationGridView;->startActivity(Landroid/content/Intent;)V

    .line 233
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method
