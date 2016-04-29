.class public Lcom/yf/appinfo/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appLabel:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yf/appinfo/AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yf/appinfo/AppInfo;->appLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yf/appinfo/AppInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yf/appinfo/AppInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "appIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/yf/appinfo/AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 27
    return-void
.end method

.method public setAppLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/yf/appinfo/AppInfo;->appLabel:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/yf/appinfo/AppInfo;->intent:Landroid/content/Intent;

    .line 33
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/yf/appinfo/AppInfo;->pkgName:Ljava/lang/String;

    .line 39
    return-void
.end method
