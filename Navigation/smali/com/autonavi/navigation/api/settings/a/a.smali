.class public abstract Lcom/autonavi/navigation/api/settings/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/settings/a/b;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/settings/a/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/a/a;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/a/a;->a:Landroid/content/Context;

    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/settings/a/a;->b:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/a/a;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/settings/a/a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;F)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/settings/a/a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;J)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/settings/a/a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/settings/a/a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;F)F
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/settings/a/a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;J)J
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/settings/a/a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/settings/a/a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/a/a;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/a/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected c()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "day_night_mode"

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/navigation/api/settings/a/a;->b(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :goto_0
    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const-string v1, "current_day_night_mode"

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/navigation/api/settings/a/a;->b(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public d()Z
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/settings/a/a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "FACTORY_RESET"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/settings/a/a;->b()Z

    move-result v0

    return v0
.end method
