.class public final Lcom/autonavi/navigation/api/register/RegisterManager;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/autonavi/navigation/api/register/a/b;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getRegisterManagerDelegate()Lcom/autonavi/navigation/api/register/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/register/RegisterManager;->a:Lcom/autonavi/navigation/api/register/a/b;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/autonavi/navigation/api/register/CustomDeviceIdAdapter;
    .locals 3

    const/4 v1, 0x0

    const-string v0, "com.autonavi.navigation.DEVICE_ID_ADAPTER"

    invoke-static {p1, v0}, Lcom/autonavi/navigation/api/support/hardware/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/support/hardware/a/b;->a(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/navigation/api/register/CustomDeviceIdAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/autonavi/navigation/api/register/RegisterManager;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iget-object v2, p0, Lcom/autonavi/navigation/api/register/RegisterManager;->a:Lcom/autonavi/navigation/api/register/a/b;

    invoke-interface {v2}, Lcom/autonavi/navigation/api/register/a/b;->c()Lcom/autonavi/navigation/api/register/a/a;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/autonavi/navigation/api/register/a/a;->b:I

    if-nez v3, :cond_2

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/register/RegisterManager;->b:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/navigation/api/register/RegisterManager;->b:Ljava/lang/String;

    return-object v0

    :cond_2
    iget v3, v2, Lcom/autonavi/navigation/api/register/a/a;->b:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    invoke-direct {p0, v1}, Lcom/autonavi/navigation/api/register/RegisterManager;->a(Landroid/content/Context;)Lcom/autonavi/navigation/api/register/CustomDeviceIdAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/register/CustomDeviceIdAdapter;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "wifi"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget v3, v2, Lcom/autonavi/navigation/api/register/a/a;->b:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v2, v2, Lcom/autonavi/navigation/api/register/a/a;->b:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const-string v0, "phone"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInstallCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertFalse(Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/register/RegisterManager;->a:Lcom/autonavi/navigation/api/register/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/register/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegisterInfo()Lcom/autonavi/navigation/api/register/model/RegisterInfo;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/register/RegisterManager;->a:Lcom/autonavi/navigation/api/register/a/b;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/register/a/b;->b()Lcom/autonavi/navigation/api/register/model/RegisterInfo;

    move-result-object v0

    return-object v0
.end method

.method public isRegistered()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/register/RegisterManager;->a:Lcom/autonavi/navigation/api/register/a/b;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/register/a/b;->a()Z

    move-result v0

    return v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const v2, 0x20003

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/autonavi/navigation/api/register/RegisterException;

    const v1, 0x20001

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/register/RegisterException;-><init>(I)V

    throw v0

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/autonavi/navigation/api/register/RegisterException;

    invoke-direct {v0, v2}, Lcom/autonavi/navigation/api/register/RegisterException;-><init>(I)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/navigation/api/register/RegisterManager;->a:Lcom/autonavi/navigation/api/register/a/b;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/navigation/api/register/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/register/RegisterManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/autonavi/navigation/api/register/RegisterException;

    const v1, 0x20002

    invoke-direct {v0, v1}, Lcom/autonavi/navigation/api/register/RegisterException;-><init>(I)V

    throw v0

    :cond_3
    new-instance v0, Lcom/autonavi/navigation/api/register/RegisterException;

    invoke-direct {v0, v2}, Lcom/autonavi/navigation/api/register/RegisterException;-><init>(I)V

    throw v0

    :cond_4
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertFalse(Z)V

    iget-object v0, p0, Lcom/autonavi/navigation/api/register/RegisterManager;->a:Lcom/autonavi/navigation/api/register/a/b;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/register/a/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/autonavi/navigation/api/register/RegisterManager;->b:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
