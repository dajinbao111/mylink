.class public Lcom/autonavi/navigation/api/StartupException;
.super Lcom/autonavi/navigation/api/AnException;


# static fields
.field public static final DATA_MISSING:I = 0x1001

.field public static final DATA_NEWER:I = 0x1003

.field public static final DATA_OLDER:I = 0x1002

.field public static final NO_MEMORY:I = 0x1004

.field public static final UNREGISTERED:I = 0x1005


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Lcom/autonavi/navigation/api/StartupException;->getErrorMsg(I)Ljava/lang/String;

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
    const-string v0, "DATA_MISSING"

    goto :goto_0

    :pswitch_1
    const-string v0, "NO_MEMORY"

    goto :goto_0

    :pswitch_2
    const-string v0, "UNREGISTERED"

    goto :goto_0

    :pswitch_3
    const-string v0, "DATA_OLDER"

    goto :goto_0

    :pswitch_4
    const-string v0, "DATA_NEWER"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
