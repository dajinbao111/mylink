.class Lcom/autonavi/navigation/api/AnApi$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/support/hardware/a/a$a;


# instance fields
.field final synthetic a:Lcom/autonavi/navigation/api/AnApi;


# direct methods
.method constructor <init>(Lcom/autonavi/navigation/api/AnApi;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/AnApi$1;->a:Lcom/autonavi/navigation/api/AnApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/AnApi$1;->a:Lcom/autonavi/navigation/api/AnApi;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getSettings()Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v1

    const-string v2, "current_day_night_mode"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/autonavi/navigation/api/settings/Settings;->putInt(Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
