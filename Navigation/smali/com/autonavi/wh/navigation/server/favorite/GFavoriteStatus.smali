.class public Lcom/autonavi/wh/navigation/server/favorite/GFavoriteStatus;
.super Ljava/lang/Object;


# instance fields
.field public Status:[Lcom/autonavi/wh/navigation/server/favorite/GSpaceStatus;

.field public TotalStatus:Lcom/autonavi/wh/navigation/server/favorite/GSpaceStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;->values()[Lcom/autonavi/wh/navigation/server/favorite/GFavoriteCategory;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/favorite/GSpaceStatus;

    iput-object v0, p0, Lcom/autonavi/wh/navigation/server/favorite/GFavoriteStatus;->Status:[Lcom/autonavi/wh/navigation/server/favorite/GSpaceStatus;

    return-void
.end method
