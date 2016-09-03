.class public Lcom/autonavi/wh/navigation/engine/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/wh/a/b$a;


# static fields
.field private static a:Lcom/autonavi/wh/navigation/engine/h;


# instance fields
.field private b:Lcom/autonavi/wh/navigation/engine/h$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 1

    const/4 v0, -0x2

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x3

    if-ne v0, p1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne v0, p1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private a(Lcom/autonavi/wh/navigation/server/payment/GQRcodePurchaseChoice;)Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;
    .locals 11

    const/4 v0, 0x0

    iget-object v9, p1, Lcom/autonavi/wh/navigation/server/payment/GQRcodePurchaseChoice;->state:Ljava/lang/String;

    iget-object v10, p1, Lcom/autonavi/wh/navigation/server/payment/GQRcodePurchaseChoice;->desc:Ljava/lang/String;

    iget-object v1, p1, Lcom/autonavi/wh/navigation/server/payment/GQRcodePurchaseChoice;->list:[Lcom/autonavi/wh/navigation/server/payment/GQrcodeMenu;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move v6, v0

    move-object v7, v1

    :goto_0
    move v8, v0

    :goto_1
    if-ge v8, v6, :cond_1

    iget-object v0, p1, Lcom/autonavi/wh/navigation/server/payment/GQRcodePurchaseChoice;->list:[Lcom/autonavi/wh/navigation/server/payment/GQrcodeMenu;

    aget-object v5, v0, v8

    new-instance v0, Lcom/autonavi/navigation/api/payment/model/PlanInfo;

    iget-object v1, v5, Lcom/autonavi/wh/navigation/server/payment/GQrcodeMenu;->szMenuCode:Ljava/lang/String;

    iget-object v2, v5, Lcom/autonavi/wh/navigation/server/payment/GQrcodeMenu;->szMenuName:Ljava/lang/String;

    iget v3, v5, Lcom/autonavi/wh/navigation/server/payment/GQrcodeMenu;->uMonthsNum:I

    iget v4, v5, Lcom/autonavi/wh/navigation/server/payment/GQrcodeMenu;->uPrice:I

    iget-object v5, v5, Lcom/autonavi/wh/navigation/server/payment/GQrcodeMenu;->szMenuDesc:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/navigation/api/payment/model/PlanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    aput-object v0, v7, v8

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lcom/autonavi/wh/navigation/server/payment/GQRcodePurchaseChoice;->list:[Lcom/autonavi/wh/navigation/server/payment/GQrcodeMenu;

    array-length v1, v1

    new-array v2, v1, [Lcom/autonavi/navigation/api/payment/model/PlanInfo;

    move v6, v1

    move-object v7, v2

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;

    invoke-direct {v0, v9, v10, v7}, Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/autonavi/navigation/api/payment/model/PlanInfo;)V

    return-object v0
.end method

.method public static final declared-synchronized a()Lcom/autonavi/wh/navigation/engine/h;
    .locals 2

    const-class v1, Lcom/autonavi/wh/navigation/engine/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/wh/navigation/engine/h;->a:Lcom/autonavi/wh/navigation/engine/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/wh/navigation/engine/h;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/engine/h;-><init>()V

    sput-object v0, Lcom/autonavi/wh/navigation/engine/h;->a:Lcom/autonavi/wh/navigation/engine/h;

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/engine/h;->a:Lcom/autonavi/wh/navigation/engine/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/autonavi/wh/a/b$b;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/h;->b:Lcom/autonavi/wh/navigation/engine/h$a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/wh/a/b$b;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/h;->b:Lcom/autonavi/wh/navigation/engine/h$a;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navigation/engine/h;->a(I)I

    move-result v0

    invoke-interface {v1, v0, v2}, Lcom/autonavi/wh/navigation/engine/h$a;->a(ILcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/h;->b:Lcom/autonavi/wh/navigation/engine/h$a;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navigation/engine/h;->a(I)I

    move-result v0

    invoke-interface {v1, v0, v2, v2}, Lcom/autonavi/wh/navigation/engine/h$a;->a(ILandroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/h;->b:Lcom/autonavi/wh/navigation/engine/h$a;

    invoke-direct {p0, v0}, Lcom/autonavi/wh/navigation/engine/h;->a(I)I

    move-result v0

    invoke-interface {v1, v0, v2}, Lcom/autonavi/wh/navigation/engine/h$a;->a(ILcom/autonavi/navigation/api/payment/model/HelpInfo;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/autonavi/wh/a/b$b;Ljava/io/InputStream;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/autonavi/wh/a/b$b;->a()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/autonavi/wh/a/b$b;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/wh/navigation/engine/h;->b:Lcom/autonavi/wh/navigation/engine/h$a;

    if-eqz v2, :cond_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/h;->b:Lcom/autonavi/wh/navigation/engine/h$a;

    invoke-interface {v0, v6, v4}, Lcom/autonavi/wh/navigation/engine/h$a;->a(ILcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "GBK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-array v1, v3, [Lcom/autonavi/wh/navigation/server/payment/GQRcodePurchaseChoice;

    array-length v2, v0

    invoke-static {v0, v2, v1}, Lcom/autonavi/wh/navigation/engine/MidPayment;->a([BI[Lcom/autonavi/wh/navigation/server/payment/GQRcodePurchaseChoice;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/h;->b:Lcom/autonavi/wh/navigation/engine/h$a;

    aget-object v1, v1, v5

    invoke-direct {p0, v1}, Lcom/autonavi/wh/navigation/engine/h;->a(Lcom/autonavi/wh/navigation/server/payment/GQRcodePurchaseChoice;)Lcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lcom/autonavi/wh/navigation/engine/h$a;->a(ILcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/h;->b:Lcom/autonavi/wh/navigation/engine/h$a;

    invoke-interface {v0, v6, v4}, Lcom/autonavi/wh/navigation/engine/h$a;->a(ILcom/autonavi/navigation/api/payment/model/PurchaseChoiceInfo;)V

    goto :goto_0

    :pswitch_1
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/h;->b:Lcom/autonavi/wh/navigation/engine/h$a;

    invoke-interface {v0, v6, v4, v4}, Lcom/autonavi/wh/navigation/engine/h$a;->a(ILandroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-array v0, v3, [Lcom/autonavi/wh/navigation/server/payment/GQrcodeInfo;

    array-length v2, v1

    invoke-static {v1, v2, v0}, Lcom/autonavi/wh/navigation/engine/MidPayment;->a([BI[Lcom/autonavi/wh/navigation/server/payment/GQrcodeInfo;)I

    move-result v2

    if-ne v6, v2, :cond_4

    array-length v0, v1

    invoke-static {v1, v5, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/h;->b:Lcom/autonavi/wh/navigation/engine/h$a;

    invoke-interface {v1, v5, v0, v4}, Lcom/autonavi/wh/navigation/engine/h$a;->a(ILandroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "GBK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v3, v0}, Lcom/autonavi/wh/navigation/engine/MidPayment;->a([BI[Lcom/autonavi/wh/navigation/server/payment/GQrcodeInfo;)I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/autonavi/wh/navigation/engine/h;->b:Lcom/autonavi/wh/navigation/engine/h$a;

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/autonavi/wh/navigation/server/payment/GQrcodeInfo;->desc:Ljava/lang/String;

    invoke-interface {v1, v6, v4, v0}, Lcom/autonavi/wh/navigation/engine/h$a;->a(ILandroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/h;->b:Lcom/autonavi/wh/navigation/engine/h$a;

    invoke-interface {v0, v6, v4, v2}, Lcom/autonavi/wh/navigation/engine/h$a;->a(ILandroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/h;->b:Lcom/autonavi/wh/navigation/engine/h$a;

    invoke-interface {v0, v6, v4}, Lcom/autonavi/wh/navigation/engine/h$a;->a(ILcom/autonavi/navigation/api/payment/model/HelpInfo;)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "GBK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-array v1, v3, [Lcom/autonavi/wh/navigation/server/payment/GQrcodeHelpInfo;

    array-length v2, v0

    invoke-static {v0, v2, v1}, Lcom/autonavi/wh/navigation/engine/MidPayment;->a([BI[Lcom/autonavi/wh/navigation/server/payment/GQrcodeHelpInfo;)I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/h;->b:Lcom/autonavi/wh/navigation/engine/h$a;

    new-instance v2, Lcom/autonavi/navigation/api/payment/model/HelpInfo;

    aget-object v3, v1, v5

    iget-object v3, v3, Lcom/autonavi/wh/navigation/server/payment/GQrcodeHelpInfo;->state:Ljava/lang/String;

    aget-object v4, v1, v5

    iget-object v4, v4, Lcom/autonavi/wh/navigation/server/payment/GQrcodeHelpInfo;->desc:Ljava/lang/String;

    aget-object v1, v1, v5

    iget-object v1, v1, Lcom/autonavi/wh/navigation/server/payment/GQrcodeHelpInfo;->content:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/autonavi/navigation/api/payment/model/HelpInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5, v2}, Lcom/autonavi/wh/navigation/engine/h$a;->a(ILcom/autonavi/navigation/api/payment/model/HelpInfo;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/autonavi/wh/navigation/engine/h;->b:Lcom/autonavi/wh/navigation/engine/h$a;

    invoke-interface {v0, v6, v4}, Lcom/autonavi/wh/navigation/engine/h$a;->a(ILcom/autonavi/navigation/api/payment/model/HelpInfo;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/autonavi/wh/navigation/engine/h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/wh/navigation/engine/h;->b:Lcom/autonavi/wh/navigation/engine/h$a;

    return-void
.end method
