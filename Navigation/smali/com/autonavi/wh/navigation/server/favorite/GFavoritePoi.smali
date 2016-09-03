.class public Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;
.super Ljava/lang/Object;


# instance fields
.field public Date:Lcom/autonavi/wh/navigation/server/GDate;

.field public Poi:Lcom/autonavi/wh/navigation/server/poi/GPoi;

.field public Time:Lcom/autonavi/wh/navigation/server/GTime;

.field public eCategory:Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;

.field public eIconID:Lcom/autonavi/wh/navigation/server/favorite/GFavoriteIcon;

.field public nIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIILcom/autonavi/wh/navigation/server/poi/GPoi;Lcom/autonavi/wh/navigation/server/GDate;Lcom/autonavi/wh/navigation/server/GTime;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->nIndex:I

    invoke-static {p2}, Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;->valueOf(I)Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->eCategory:Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;

    invoke-static {p3}, Lcom/autonavi/wh/navigation/server/favorite/GFavoriteIcon;->valueOf(I)Lcom/autonavi/wh/navigation/server/favorite/GFavoriteIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->eIconID:Lcom/autonavi/wh/navigation/server/favorite/GFavoriteIcon;

    iput-object p4, p0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Poi:Lcom/autonavi/wh/navigation/server/poi/GPoi;

    iput-object p5, p0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Date:Lcom/autonavi/wh/navigation/server/GDate;

    iput-object p6, p0, Lcom/autonavi/wh/navigation/server/favorite/GFavoritePoi;->Time:Lcom/autonavi/wh/navigation/server/GTime;

    return-void
.end method
