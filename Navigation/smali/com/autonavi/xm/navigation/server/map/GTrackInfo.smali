.class public Lcom/autonavi/xm/navigation/server/map/GTrackInfo;
.super Ljava/lang/Object;


# instance fields
.field public bLoaded:Z

.field public nIndex:I

.field public szTrackName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xm/navigation/server/map/GTrackInfo;->nIndex:I

    iput-boolean p2, p0, Lcom/autonavi/xm/navigation/server/map/GTrackInfo;->bLoaded:Z

    iput-object p3, p0, Lcom/autonavi/xm/navigation/server/map/GTrackInfo;->szTrackName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/autonavi/xm/navigation/server/map/GTrackInfo;

    iget v1, p0, Lcom/autonavi/xm/navigation/server/map/GTrackInfo;->nIndex:I

    iget v2, p1, Lcom/autonavi/xm/navigation/server/map/GTrackInfo;->nIndex:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/map/GTrackInfo;->szTrackName:Ljava/lang/String;

    iget-object v2, p1, Lcom/autonavi/xm/navigation/server/map/GTrackInfo;->szTrackName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
