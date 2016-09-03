.class public Lcom/autonavi/wh/navigation/server/payment/GQRcodePurchaseChoice;
.super Ljava/lang/Object;


# instance fields
.field public desc:Ljava/lang/String;

.field public list:[Lcom/autonavi/wh/navigation/server/payment/GQrcodeMenu;

.field public state:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/autonavi/wh/navigation/server/payment/GQrcodeMenu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/wh/navigation/server/payment/GQRcodePurchaseChoice;->state:Ljava/lang/String;

    iput-object p2, p0, Lcom/autonavi/wh/navigation/server/payment/GQRcodePurchaseChoice;->desc:Ljava/lang/String;

    iput-object p3, p0, Lcom/autonavi/wh/navigation/server/payment/GQRcodePurchaseChoice;->list:[Lcom/autonavi/wh/navigation/server/payment/GQrcodeMenu;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GQRcodePurchaseChoice [state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/server/payment/GQRcodePurchaseChoice;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/server/payment/GQRcodePurchaseChoice;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/wh/navigation/server/payment/GQRcodePurchaseChoice;->list:[Lcom/autonavi/wh/navigation/server/payment/GQrcodeMenu;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/wh/navigation/server/payment/GQRcodePurchaseChoice;->list:[Lcom/autonavi/wh/navigation/server/payment/GQrcodeMenu;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "]"

    goto :goto_0
.end method
