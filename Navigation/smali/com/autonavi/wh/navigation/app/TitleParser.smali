.class Lcom/autonavi/wh/navigation/app/TitleParser;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTitles:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/navigation/app/TitleParser;->mTitles:Ljava/util/List;

    iput-object p1, p0, Lcom/autonavi/wh/navigation/app/TitleParser;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getTitles()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/app/TitleParser;->mTitles:Ljava/util/List;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    const-string v0, "title"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/autonavi/wh/navigation/app/Title;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/app/Title;-><init>()V

    const-string v1, "component"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/wh/navigation/app/Title;->component:Ljava/lang/String;

    const-string v1, "text"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/autonavi/wh/navigation/app/TitleParser;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/autonavi/wh/navigation/res/ResUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/autonavi/wh/navigation/app/Title;->textId:I

    :cond_0
    const-string v1, "icon"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/autonavi/wh/navigation/app/TitleParser;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/autonavi/wh/navigation/res/ResUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/autonavi/wh/navigation/app/Title;->iconId:I

    :cond_1
    iget-object v1, p0, Lcom/autonavi/wh/navigation/app/TitleParser;->mTitles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
