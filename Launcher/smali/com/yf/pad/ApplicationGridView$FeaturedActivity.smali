.class Lcom/yf/pad/ApplicationGridView$FeaturedActivity;
.super Ljava/lang/Object;
.source "ApplicationGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/pad/ApplicationGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeaturedActivity"
.end annotation


# instance fields
.field className:Ljava/lang/String;

.field iconBitmap:Landroid/graphics/Bitmap;

.field iconName:Ljava/lang/String;

.field packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconName"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/yf/pad/ApplicationGridView$FeaturedActivity;->className:Ljava/lang/String;

    .line 237
    iput-object p2, p0, Lcom/yf/pad/ApplicationGridView$FeaturedActivity;->packageName:Ljava/lang/String;

    .line 238
    iput-object p3, p0, Lcom/yf/pad/ApplicationGridView$FeaturedActivity;->iconName:Ljava/lang/String;

    .line 239
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 248
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[iconName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 249
    iget-object v2, p0, Lcom/yf/pad/ApplicationGridView$FeaturedActivity;->iconName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 250
    const-string v2, "; className:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 251
    iget-object v2, p0, Lcom/yf/pad/ApplicationGridView$FeaturedActivity;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 252
    const-string v2, "; packageName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 253
    iget-object v2, p0, Lcom/yf/pad/ApplicationGridView$FeaturedActivity;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 254
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
