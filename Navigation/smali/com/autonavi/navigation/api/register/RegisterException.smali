.class public Lcom/autonavi/navigation/api/register/RegisterException;
.super Lcom/autonavi/navigation/api/AnException;


# static fields
.field public static final INVALID_ACTIVE_CODE:I = 0x20003

.field public static final INVALID_DEVICE_ID:I = 0x20002

.field public static final INVALID_SERIAL_NUM:I = 0x20001


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Lcom/autonavi/navigation/api/register/RegisterException;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/navigation/api/AnException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static getErrorMsg(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/navigation/api/AnException;->getErrorMsg(I)Ljava/lang/String;

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "INVALID_SERIAL_NUM"

    goto :goto_0

    :pswitch_1
    const-string v0, "INVALID_DEVICE_ID"

    goto :goto_0

    :pswitch_2
    const-string v0, "INVALID_ACTIVE_CODE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x20001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
