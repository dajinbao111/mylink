.class public Lcom/autonavi/wh/navigation/server/poi/GRelationshipPoi;
.super Ljava/lang/Object;


# instance fields
.field public Coord:Lcom/autonavi/wh/navigation/server/GCoord;

.field public szName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/wh/navigation/server/GCoord;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/wh/navigation/server/poi/GRelationshipPoi;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iput-object p2, p0, Lcom/autonavi/wh/navigation/server/poi/GRelationshipPoi;->szName:Ljava/lang/String;

    return-void
.end method
