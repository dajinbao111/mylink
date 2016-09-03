.class public Lcom/autonavi/wh/navigation/server/guide/GRouteErrorInfo;
.super Ljava/lang/Object;


# instance fields
.field public nNumberOfList:I

.field public pAdminCodeList:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/wh/navigation/server/guide/GRouteErrorInfo;->nNumberOfList:I

    iput-object p2, p0, Lcom/autonavi/wh/navigation/server/guide/GRouteErrorInfo;->pAdminCodeList:[I

    return-void
.end method
