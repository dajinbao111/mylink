.class public final Lcom/autonavi/navigation/api/poi/a/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;)Lcom/autonavi/navigation/api/poi/model/DealerInfo;
    .locals 13

    const/4 v4, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v4

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    if-eqz v0, :cond_1

    new-instance v4, Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v1, v0, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    iget v0, v0, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    invoke-direct {v4, v1, v0}, Lcom/autonavi/navigation/api/map/model/LatLng;-><init>(II)V

    :cond_1
    new-instance v1, Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-direct {v1}, Lcom/autonavi/navigation/api/internal/ObjectId;-><init>()V

    iget v0, p0, Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;->nID:I

    iput v0, v1, Lcom/autonavi/navigation/api/internal/ObjectId;->objectId:I

    new-instance v0, Lcom/autonavi/navigation/api/poi/model/DealerInfo;

    iget v2, p0, Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;->eDealerType:I

    iget v3, p0, Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;->eMotorType:I

    iget v5, p0, Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;->nAdminCode:I

    iget-object v6, p0, Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;->szName:Ljava/lang/String;

    iget-object v7, p0, Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;->szAddr:Ljava/lang/String;

    iget-object v8, p0, Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;->szTel:Ljava/lang/String;

    iget-object v9, p0, Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;->szFax:Ljava/lang/String;

    iget v10, p0, Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;->lDistance:I

    iget-short v11, p0, Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;->siLonOff:S

    iget-short v12, p0, Lcom/autonavi/wh/navigation/server/poi/G4SDealerInfo;->siLatOff:S

    invoke-direct/range {v0 .. v12}, Lcom/autonavi/navigation/api/poi/model/DealerInfo;-><init>(Lcom/autonavi/navigation/api/internal/ObjectId;IILcom/autonavi/navigation/api/map/model/LatLng;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    move-object v4, v0

    goto :goto_0
.end method

.method public static a(Lcom/autonavi/wh/navigation/server/poi/GPoi;)Lcom/autonavi/navigation/api/poi/model/Poi;
    .locals 15

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/autonavi/navigation/api/map/model/LatLng;

    iget v1, v0, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    iget v0, v0, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    invoke-direct {v2, v1, v0}, Lcom/autonavi/navigation/api/map/model/LatLng;-><init>(II)V

    :cond_1
    new-instance v1, Lcom/autonavi/navigation/api/internal/ObjectId;

    invoke-direct {v1}, Lcom/autonavi/navigation/api/internal/ObjectId;-><init>()V

    iget v0, p0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lPoiId:I

    iput v0, v1, Lcom/autonavi/navigation/api/internal/ObjectId;->objectId:I

    new-instance v0, Lcom/autonavi/navigation/api/poi/model/Poi;

    iget v3, p0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lCategoryID:I

    iget v4, p0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lDistance:I

    iget v5, p0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lMatchCode:I

    iget v6, p0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lAdminCode:I

    iget-object v7, p0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    iget-object v8, p0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    iget-object v9, p0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    iget-short v10, p0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->siELonOff:S

    iget-short v11, p0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->siELatOff:S

    iget-short v12, p0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->usNodeId:S

    iget v13, p0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lHilightFlag:I

    iget-byte v14, p0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->ucFlag:B

    invoke-direct/range {v0 .. v14}, Lcom/autonavi/navigation/api/poi/model/Poi;-><init>(Lcom/autonavi/navigation/api/internal/ObjectId;Lcom/autonavi/navigation/api/map/model/LatLng;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    move-object v2, v0

    goto :goto_0
.end method

.method public static a(Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;)Lcom/autonavi/wh/navigation/server/poi/GDisplayPoiPriority;
    .locals 2

    new-instance v0, Lcom/autonavi/wh/navigation/server/poi/GDisplayPoiPriority;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/server/poi/GDisplayPoiPriority;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;->getPoiDisplayLevel()I

    move-result v1

    iput v1, v0, Lcom/autonavi/wh/navigation/server/poi/GDisplayPoiPriority;->poiDisplayLevel:I

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;->getCategory()I

    move-result v1

    iput v1, v0, Lcom/autonavi/wh/navigation/server/poi/GDisplayPoiPriority;->nCategory:I

    return-object v0
.end method

.method public static a(Lcom/autonavi/navigation/api/poi/model/Poi;)Lcom/autonavi/wh/navigation/server/poi/GPoi;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;

    invoke-direct {v0}, Lcom/autonavi/wh/navigation/server/poi/GPoi;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getLatLng()Lcom/autonavi/navigation/api/map/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/autonavi/wh/navigation/server/GCoord;

    iget v3, v1, Lcom/autonavi/navigation/api/map/model/LatLng;->longitude:I

    iget v1, v1, Lcom/autonavi/navigation/api/map/model/LatLng;->latitude:I

    invoke-direct {v2, v3, v1}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    iput-object v2, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/wh/navigation/server/GCoord;

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getId()Lcom/autonavi/navigation/api/internal/ObjectId;

    move-result-object v1

    iget v1, v1, Lcom/autonavi/navigation/api/internal/ObjectId;->objectId:I

    iput v1, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lPoiId:I

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getCategory()I

    move-result v1

    iput v1, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lCategoryID:I

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getDistance()I

    move-result v1

    iput v1, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lDistance:I

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getMatchedLevel()I

    move-result v1

    iput v1, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lMatchCode:I

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getMatchedMask()I

    move-result v1

    iput v1, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lHilightFlag:I

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAdminCode()I

    move-result v1

    iput v1, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->lAdminCode:I

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getOffsetLng()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->siELonOff:S

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getOffsetLat()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->siELatOff:S

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getTel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getTypeMask()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->ucFlag:B

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/poi/model/Poi;->getNodeId()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/autonavi/wh/navigation/server/poi/GPoi;->usNodeId:S

    goto :goto_0
.end method
