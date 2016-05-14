.class public Lcom/autonavi/navigation/api/register/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable;


# static fields
.field public static final c:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/autonavi/navigation/api/register/a/a$1;

    invoke-direct {v0}, Lcom/autonavi/navigation/api/register/a/a$1;-><init>()V

    sput-object v0, Lcom/autonavi/navigation/api/register/a/a;->c:Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/navigation/api/register/a/a;->a:I

    iput p2, p0, Lcom/autonavi/navigation/api/register/a/a;->b:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)V
    .locals 1

    iget v0, p0, Lcom/autonavi/navigation/api/register/a/a;->a:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/navigation/api/register/a/a;->b:I

    invoke-virtual {p1, v0}, Lcom/autonavi/navigation/api/internal/NativeParcel;->writeInt(I)V

    return-void
.end method
