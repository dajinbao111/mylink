.class public Lcom/autonavi/navigation/api/util/AnTtsPlayer;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/security/auth/Destroyable;


# static fields
.field private static final c:Lcom/autonavi/navigation/api/internal/a/d;


# instance fields
.field private a:Z

.field private final b:Lcom/autonavi/navigation/api/internal/a/d$a;

.field private d:Lcom/autonavi/navigation/api/util/AnTtsPlayer$OnSpeakListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/autonavi/navigation/api/internal/a/c;->a()Lcom/autonavi/navigation/api/internal/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/b;->getMainDelegate()Lcom/autonavi/navigation/api/internal/a/d;

    move-result-object v0

    sput-object v0, Lcom/autonavi/navigation/api/util/AnTtsPlayer;->c:Lcom/autonavi/navigation/api/internal/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/util/AnTtsPlayer;->a:Z

    new-instance v0, Lcom/autonavi/navigation/api/util/AnTtsPlayer$1;

    invoke-direct {v0, p0}, Lcom/autonavi/navigation/api/util/AnTtsPlayer$1;-><init>(Lcom/autonavi/navigation/api/util/AnTtsPlayer;)V

    iput-object v0, p0, Lcom/autonavi/navigation/api/util/AnTtsPlayer;->b:Lcom/autonavi/navigation/api/internal/a/d$a;

    sget-object v0, Lcom/autonavi/navigation/api/util/AnTtsPlayer;->c:Lcom/autonavi/navigation/api/internal/a/d;

    iget-object v1, p0, Lcom/autonavi/navigation/api/util/AnTtsPlayer;->b:Lcom/autonavi/navigation/api/internal/a/d$a;

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/internal/a/d;->a(Lcom/autonavi/navigation/api/internal/a/d$a;)V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/navigation/api/util/AnTtsPlayer;)Lcom/autonavi/navigation/api/util/AnTtsPlayer$OnSpeakListener;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/navigation/api/util/AnTtsPlayer;->d:Lcom/autonavi/navigation/api/util/AnTtsPlayer$OnSpeakListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/util/AnTtsPlayer;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/navigation/api/util/AnTtsPlayer;->c:Lcom/autonavi/navigation/api/internal/a/d;

    iget-object v1, p0, Lcom/autonavi/navigation/api/util/AnTtsPlayer;->b:Lcom/autonavi/navigation/api/internal/a/d$a;

    invoke-interface {v0, v1}, Lcom/autonavi/navigation/api/internal/a/d;->b(Lcom/autonavi/navigation/api/internal/a/d$a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/navigation/api/util/AnTtsPlayer;->a:Z

    :cond_0
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/navigation/api/util/AnTtsPlayer;->a:Z

    return v0
.end method

.method public setOnSpeakListener(Lcom/autonavi/navigation/api/util/AnTtsPlayer$OnSpeakListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/navigation/api/util/AnTtsPlayer;->d:Lcom/autonavi/navigation/api/util/AnTtsPlayer$OnSpeakListener;

    return-void
.end method

.method public speak(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text can not be empty"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertFalse(Ljava/lang/String;Z)V

    sget-object v0, Lcom/autonavi/navigation/api/util/AnTtsPlayer;->c:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-interface {v0, p1}, Lcom/autonavi/navigation/api/internal/a/d;->c(Ljava/lang/String;)Z

    return-void
.end method

.method public stopSpeak()V
    .locals 1

    sget-object v0, Lcom/autonavi/navigation/api/util/AnTtsPlayer;->c:Lcom/autonavi/navigation/api/internal/a/d;

    invoke-interface {v0}, Lcom/autonavi/navigation/api/internal/a/d;->c()Z

    return-void
.end method
