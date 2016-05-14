.class public final Lcom/autonavi/xm/navi/R$styleable;
.super Ljava/lang/Object;


# static fields
.field public static final CandidateListView:[I

.field public static final CandidateListView_divider:I = 0x0

.field public static final HandwritingBoard:[I

.field public static final HandwritingBoard_strokeColor:I = 0x1

.field public static final HandwritingBoard_strokeWidth:I = 0x0

.field public static final MapAttrs:[I

.field public static final MapAttrs_cameraBearing:I = 0x0

.field public static final MapAttrs_cameraMapMode:I = 0x5

.field public static final MapAttrs_cameraTargetLat:I = 0x1

.field public static final MapAttrs_cameraTargetLng:I = 0x2

.field public static final MapAttrs_cameraTilt:I = 0x3

.field public static final MapAttrs_cameraZoom:I = 0x4

.field public static final MapAttrs_uiAllGestures:I = 0xe

.field public static final MapAttrs_uiGpsAnnunciator:I = 0x7

.field public static final MapAttrs_uiMapModeControls:I = 0x6

.field public static final MapAttrs_uiRotateGestures:I = 0xd

.field public static final MapAttrs_uiScrollGestures:I = 0xa

.field public static final MapAttrs_uiTiltGestures:I = 0xc

.field public static final MapAttrs_uiZoomControls:I = 0x8

.field public static final MapAttrs_uiZoomGestures:I = 0xb

.field public static final MapAttrs_uiZoomLevel:I = 0x9

.field public static final MapAttrs_zOrderOnTop:I = 0xf

.field public static final SoftKey:[I

.field public static final SoftKey_keyCode:I = 0x0

.field public static final StrokeTextView:[I

.field public static final StrokeTextView_borderColor:I = 0x1

.field public static final StrokeTextView_borderWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    const/high16 v1, 0x7f010000

    aput v1, v0, v2

    sput-object v0, Lcom/autonavi/xm/navi/R$styleable;->CandidateListView:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/autonavi/xm/navi/R$styleable;->HandwritingBoard:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/autonavi/xm/navi/R$styleable;->MapAttrs:[I

    new-array v0, v3, [I

    const v1, 0x7f010001

    aput v1, v0, v2

    sput-object v0, Lcom/autonavi/xm/navi/R$styleable;->SoftKey:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/autonavi/xm/navi/R$styleable;->StrokeTextView:[I

    return-void

    :array_0
    .array-data 4
        0x7f010002
        0x7f010003
    .end array-data

    :array_1
    .array-data 4
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
    .end array-data

    :array_2
    .array-data 4
        0x7f010014
        0x7f010015
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
