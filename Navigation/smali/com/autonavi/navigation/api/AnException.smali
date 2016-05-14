.class public Lcom/autonavi/navigation/api/AnException;
.super Ljava/lang/Exception;


# static fields
.field public static final DUPLICATE_DATA:I = 0x1

.field public static final NO_SPACE:I = 0x2

.field public static final UNKOWN:I = -0x1


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Lcom/autonavi/navigation/api/AnException;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/navigation/api/AnException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/autonavi/navigation/api/AnException;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/autonavi/navigation/api/AnException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static getErrorMsg(I)Ljava/lang/String;
    .locals 1

    const-string v0, "UNKOWN"

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "DUPLICATE_DATA"

    goto :goto_0

    :pswitch_1
    const-string v0, "NO_SPACE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
