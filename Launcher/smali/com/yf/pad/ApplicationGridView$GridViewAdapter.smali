.class public Lcom/yf/pad/ApplicationGridView$GridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ApplicationGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/pad/ApplicationGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridViewAdapter"
.end annotation


# instance fields
.field activities:[Ljava/lang/String;

.field activity:Lcom/yf/pad/ApplicationGridView$FeaturedActivity;

.field classNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field final packageName:Ljava/lang/String;

.field params:[Ljava/lang/String;

.field final res:Landroid/content/res/Resources;

.field tempIcon:Ljava/lang/String;

.field final synthetic this$0:Lcom/yf/pad/ApplicationGridView;


# direct methods
.method public constructor <init>(Lcom/yf/pad/ApplicationGridView;Landroid/view/LayoutInflater;)V
    .locals 8
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->this$0:Lcom/yf/pad/ApplicationGridView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 72
    invoke-virtual {p1}, Lcom/yf/pad/ApplicationGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->res:Landroid/content/res/Resources;

    .line 73
    const-string v2, ""

    iput-object v2, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->packageName:Ljava/lang/String;

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->classNames:Ljava/util/ArrayList;

    .line 82
    iput-object p2, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "arrayId":I
    # getter for: Lcom/yf/pad/ApplicationGridView;->strWinName:Ljava/lang/String;
    invoke-static {p1}, Lcom/yf/pad/ApplicationGridView;->access$0(Lcom/yf/pad/ApplicationGridView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const v0, 0x7f050001

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/yf/pad/ApplicationGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 91
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 90
    iput-object v2, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->activities:[Ljava/lang/String;

    .line 93
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->activities:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 100
    return-void

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->activities:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "/"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->params:[Ljava/lang/String;

    .line 95
    iget-object v2, p1, Lcom/yf/pad/ApplicationGridView;->mFeaturedActivities:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/pad/ApplicationGridView$FeaturedActivity;

    .line 96
    iget-object v4, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->params:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->params:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->params:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-direct {v3, v4, v5, v6}, Lcom/yf/pad/ApplicationGridView$FeaturedActivity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iput-object v3, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->activity:Lcom/yf/pad/ApplicationGridView$FeaturedActivity;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v2, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->classNames:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->activity:Lcom/yf/pad/ApplicationGridView$FeaturedActivity;

    iget-object v3, v3, Lcom/yf/pad/ApplicationGridView$FeaturedActivity;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->this$0:Lcom/yf/pad/ApplicationGridView;

    iget-object v0, v0, Lcom/yf/pad/ApplicationGridView;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->this$0:Lcom/yf/pad/ApplicationGridView;

    iget-object v0, v0, Lcom/yf/pad/ApplicationGridView;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 117
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertview"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 124
    if-nez p2, :cond_0

    .line 125
    iget-object v6, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030003

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 127
    :cond_0
    iget-object v6, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->this$0:Lcom/yf/pad/ApplicationGridView;

    iget-object v6, v6, Lcom/yf/pad/ApplicationGridView;->children:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 130
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    const v6, 0x7f0a000b

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 132
    .local v1, "appName":Landroid/widget/Button;
    const v6, 0x7f0a000a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 133
    .local v3, "item":Landroid/view/View;
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 135
    iget-object v6, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->this$0:Lcom/yf/pad/ApplicationGridView;

    iget-object v4, v6, Lcom/yf/pad/ApplicationGridView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 136
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const/high16 v6, 0x41c80000    # 25.0f

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 138
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->activities:[Ljava/lang/String;

    array-length v6, v6

    if-lt v2, v6, :cond_1

    .line 156
    return-object p2

    .line 139
    :cond_1
    iget-object v6, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->activities:[Ljava/lang/String;

    aget-object v6, v6, v2

    const-string v7, "/"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->params:[Ljava/lang/String;

    .line 140
    iget-object v6, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->this$0:Lcom/yf/pad/ApplicationGridView;

    iget-object v6, v6, Lcom/yf/pad/ApplicationGridView;->mFeaturedActivities:Ljava/util/ArrayList;

    new-instance v7, Lcom/yf/pad/ApplicationGridView$FeaturedActivity;

    .line 141
    iget-object v8, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->params:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    iget-object v9, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->params:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->params:[Ljava/lang/String;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-direct {v7, v8, v9, v10}, Lcom/yf/pad/ApplicationGridView$FeaturedActivity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iput-object v7, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->activity:Lcom/yf/pad/ApplicationGridView$FeaturedActivity;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v6, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->res:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->params:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawable"

    .line 143
    const-string v9, ""

    .line 142
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 144
    .local v5, "resId":I
    iget-object v6, p0, Lcom/yf/pad/ApplicationGridView$GridViewAdapter;->params:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 145
    if-eqz v5, :cond_2

    .line 152
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 138
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
