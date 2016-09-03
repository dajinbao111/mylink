.class public Lcom/autonavi/wh/navigation/server/upoi/GUPoi;
.super Ljava/lang/Object;


# instance fields
.field public coord:Lcom/autonavi/wh/navigation/server/GCoord;

.field public dtLastUpdateTime:Lcom/autonavi/wh/navigation/server/GDateTime;

.field public eAccessPermission:I

.field public eCategory:I

.field public nAdminCode:I

.field public nIndex:I

.field public szAddr:Ljava/lang/String;

.field public szComment:Ljava/lang/String;

.field public szImageURL:Ljava/lang/String;

.field public szName:Ljava/lang/String;

.field public szTel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/autonavi/wh/navigation/server/GDateTime;ILcom/autonavi/wh/navigation/server/GCoord;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/wh/navigation/server/upoi/GUPoi;->nIndex:I

    iput-object p2, p0, Lcom/autonavi/wh/navigation/server/upoi/GUPoi;->dtLastUpdateTime:Lcom/autonavi/wh/navigation/server/GDateTime;

    iput p3, p0, Lcom/autonavi/wh/navigation/server/upoi/GUPoi;->nAdminCode:I

    iput-object p4, p0, Lcom/autonavi/wh/navigation/server/upoi/GUPoi;->coord:Lcom/autonavi/wh/navigation/server/GCoord;

    iput p5, p0, Lcom/autonavi/wh/navigation/server/upoi/GUPoi;->eCategory:I

    iput p6, p0, Lcom/autonavi/wh/navigation/server/upoi/GUPoi;->eAccessPermission:I

    iput-object p7, p0, Lcom/autonavi/wh/navigation/server/upoi/GUPoi;->szName:Ljava/lang/String;

    iput-object p8, p0, Lcom/autonavi/wh/navigation/server/upoi/GUPoi;->szAddr:Ljava/lang/String;

    iput-object p9, p0, Lcom/autonavi/wh/navigation/server/upoi/GUPoi;->szTel:Ljava/lang/String;

    iput-object p10, p0, Lcom/autonavi/wh/navigation/server/upoi/GUPoi;->szImageURL:Ljava/lang/String;

    iput-object p11, p0, Lcom/autonavi/wh/navigation/server/upoi/GUPoi;->szComment:Ljava/lang/String;

    return-void
.end method
