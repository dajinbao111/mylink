.class Lcom/autonavi/xm/navigation/engine/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Lcom/autonavi/xm/navigation/engine/m;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/m;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/m$1;->a:Lcom/autonavi/xm/navigation/engine/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".dat"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
