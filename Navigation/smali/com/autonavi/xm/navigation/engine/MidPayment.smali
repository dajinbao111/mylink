.class public Lcom/autonavi/xm/navigation/engine/MidPayment;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BI[Lcom/autonavi/xm/navigation/server/payment/GQRcodePurchaseChoice;)I
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GStatus;->nativeValue:I

    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/MidPayment;->native_GDMID_QRcodePurchaseChoiceParse([BI[Lcom/autonavi/xm/navigation/server/payment/GQRcodePurchaseChoice;)I

    move-result v0

    goto :goto_0
.end method

.method public static a([BI[Lcom/autonavi/xm/navigation/server/payment/GQrcodeHelpInfo;)I
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GStatus;->nativeValue:I

    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/MidPayment;->native_GDMID_GetHelpInfoParse([BI[Lcom/autonavi/xm/navigation/server/payment/GQrcodeHelpInfo;)I

    move-result v0

    goto :goto_0
.end method

.method public static a([BI[Lcom/autonavi/xm/navigation/server/payment/GQrcodeInfo;)I
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_INVALID_PARAM:Lcom/autonavi/xm/navigation/server/GStatus;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GStatus;->nativeValue:I

    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/MidPayment;->native_GDMID_GetQRcodeInterfaceParse([BI[Lcom/autonavi/xm/navigation/server/payment/GQrcodeInfo;)I

    move-result v0

    goto :goto_0
.end method

.method private static native native_GDMID_GetHelpInfoParse([BI[Lcom/autonavi/xm/navigation/server/payment/GQrcodeHelpInfo;)I
.end method

.method private static native native_GDMID_GetQRcodeInterfaceParse([BI[Lcom/autonavi/xm/navigation/server/payment/GQrcodeInfo;)I
.end method

.method private static native native_GDMID_QRcodePurchaseChoiceParse([BI[Lcom/autonavi/xm/navigation/server/payment/GQRcodePurchaseChoice;)I
.end method
