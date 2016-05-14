.class public Lcom/autonavi/navigation/api/poi/PoiManager$Query;
.super Ljava/lang/Object;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestCode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/poi/PoiManager$Query;->a:I

    return v0
.end method

.method public setRequestCode(I)Lcom/autonavi/navigation/api/poi/PoiManager$Query;
    .locals 0

    iput p1, p0, Lcom/autonavi/navigation/api/poi/PoiManager$Query;->a:I

    return-object p0
.end method
