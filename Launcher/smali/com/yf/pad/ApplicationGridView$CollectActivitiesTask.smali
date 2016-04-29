.class Lcom/yf/pad/ApplicationGridView$CollectActivitiesTask;
.super Landroid/os/AsyncTask;
.source "ApplicationGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/pad/ApplicationGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CollectActivitiesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/yf/pad/ApplicationGridView$Group;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yf/pad/ApplicationGridView;


# direct methods
.method constructor <init>(Lcom/yf/pad/ApplicationGridView;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/yf/pad/ApplicationGridView$CollectActivitiesTask;->this$0:Lcom/yf/pad/ApplicationGridView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yf/pad/ApplicationGridView$CollectActivitiesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 186
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 187
    .local v6, "intent":Landroid/content/Intent;
    new-instance v2, Lcom/yf/pad/ApplicationGridView$Group;

    invoke-direct {v2}, Lcom/yf/pad/ApplicationGridView$Group;-><init>()V

    .line 189
    .local v2, "group":Lcom/yf/pad/ApplicationGridView$Group;
    iget-object v8, p0, Lcom/yf/pad/ApplicationGridView$CollectActivitiesTask;->this$0:Lcom/yf/pad/ApplicationGridView;

    iget-object v0, v8, Lcom/yf/pad/ApplicationGridView;->mFeaturedActivities:Ljava/util/ArrayList;

    .line 190
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yf/pad/ApplicationGridView$FeaturedActivity;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 191
    .local v7, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v7, :cond_1

    .line 205
    iget-object v8, p0, Lcom/yf/pad/ApplicationGridView$CollectActivitiesTask;->this$0:Lcom/yf/pad/ApplicationGridView;

    iget-object v8, v8, Lcom/yf/pad/ApplicationGridView;->children:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 206
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/yf/pad/ApplicationGridView$Group;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {p0, v8}, Lcom/yf/pad/ApplicationGridView$CollectActivitiesTask;->publishProgress([Ljava/lang/Object;)V

    .line 209
    :cond_0
    const/4 v8, 0x0

    return-object v8

    .line 192
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/pad/ApplicationGridView$FeaturedActivity;

    .line 193
    .local v1, "activity":Lcom/yf/pad/ApplicationGridView$FeaturedActivity;
    iget-object v8, v1, Lcom/yf/pad/ApplicationGridView$FeaturedActivity;->packageName:Ljava/lang/String;

    .line 194
    iget-object v9, v1, Lcom/yf/pad/ApplicationGridView$FeaturedActivity;->className:Ljava/lang/String;

    .line 193
    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v8, p0, Lcom/yf/pad/ApplicationGridView$CollectActivitiesTask;->this$0:Lcom/yf/pad/ApplicationGridView;

    iget-object v8, v8, Lcom/yf/pad/ApplicationGridView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 200
    const/16 v9, 0x2000

    .line 199
    invoke-virtual {v8, v6, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 201
    .local v5, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 202
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, p0, Lcom/yf/pad/ApplicationGridView$CollectActivitiesTask;->this$0:Lcom/yf/pad/ApplicationGridView;

    iget-object v9, v9, Lcom/yf/pad/ApplicationGridView;->children:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yf/pad/ApplicationGridView$CollectActivitiesTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/yf/pad/ApplicationGridView$CollectActivitiesTask;->this$0:Lcom/yf/pad/ApplicationGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yf/pad/ApplicationGridView;->setProgressBarIndeterminateVisibility(Z)V

    .line 171
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yf/pad/ApplicationGridView$CollectActivitiesTask;->this$0:Lcom/yf/pad/ApplicationGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yf/pad/ApplicationGridView;->setProgressBarIndeterminateVisibility(Z)V

    .line 166
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/yf/pad/ApplicationGridView$Group;)V
    .locals 2
    .param p1, "group"    # [Lcom/yf/pad/ApplicationGridView$Group;

    .prologue
    .line 174
    iget-object v1, p0, Lcom/yf/pad/ApplicationGridView$CollectActivitiesTask;->this$0:Lcom/yf/pad/ApplicationGridView;

    # getter for: Lcom/yf/pad/ApplicationGridView;->gridViewAdapter:Lcom/yf/pad/ApplicationGridView$GridViewAdapter;
    invoke-static {v1}, Lcom/yf/pad/ApplicationGridView;->access$1(Lcom/yf/pad/ApplicationGridView;)Lcom/yf/pad/ApplicationGridView$GridViewAdapter;

    move-result-object v0

    .line 176
    .local v0, "adapter":Lcom/yf/pad/ApplicationGridView$GridViewAdapter;
    invoke-virtual {v0}, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->notifyDataSetChanged()V

    .line 177
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Lcom/yf/pad/ApplicationGridView$Group;

    invoke-virtual {p0, p1}, Lcom/yf/pad/ApplicationGridView$CollectActivitiesTask;->onProgressUpdate([Lcom/yf/pad/ApplicationGridView$Group;)V

    return-void
.end method
