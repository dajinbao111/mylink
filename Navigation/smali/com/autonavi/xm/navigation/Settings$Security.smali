.class public Lcom/autonavi/xm/navigation/Settings$Security;
.super Ljava/lang/Object;


# static fields
.field public static final PLAIN_LOCATION_LOG:Ljava/lang/String; = "plain_location_log"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadDefaultValues(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/autonavi/xm/navigation/lib/R$xml;->preferences_security:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    return-void
.end method
