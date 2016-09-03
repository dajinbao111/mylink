.class public Lcom/autonavi/wh/view/animation/CameraAnimation;
.super Landroid/view/animation/Animation;


# static fields
.field public static final ROTATE_AXIS_X:I = 0x0

.field public static final ROTATE_AXIS_Y:I = 0x1

.field public static final ROTATE_AXIS_Z:I = 0x2


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mCenterX:F

.field private mCenterXType:I

.field private final mCenterXValue:F

.field private mCenterY:F

.field private mCenterYType:I

.field private final mCenterYValue:F

.field private final mDepthZ:F

.field private final mFromDegrees:F

.field private final mReverse:Z

.field private mRotateAxisList:[I

.field private final mToDegrees:F


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v2, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterXType:I

    iput v2, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterYType:I

    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    iput-object v0, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mRotateAxisList:[I

    iput p1, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mFromDegrees:F

    iput p2, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mToDegrees:F

    iput p3, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterXValue:F

    iput p4, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterYValue:F

    iput p5, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mDepthZ:F

    iput-boolean p6, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mReverse:Z

    return-void
.end method

.method public constructor <init>(FFFFF[IZ)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v2, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterXType:I

    iput v2, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterYType:I

    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    iput-object v0, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mRotateAxisList:[I

    iput p1, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mFromDegrees:F

    iput p2, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mToDegrees:F

    iput p3, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterXValue:F

    iput p4, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterYValue:F

    iput p5, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mDepthZ:F

    iput-object p6, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mRotateAxisList:[I

    iput-boolean p7, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mReverse:Z

    return-void
.end method

.method public constructor <init>(FFIFIFF[IZ)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v2, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterXType:I

    iput v2, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterYType:I

    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    iput-object v0, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mRotateAxisList:[I

    iput p1, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mFromDegrees:F

    iput p2, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mToDegrees:F

    iput p3, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterXType:I

    iput p5, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterYType:I

    iput p4, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterXValue:F

    iput p6, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterYValue:F

    iput p7, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mDepthZ:F

    iput-object p8, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mRotateAxisList:[I

    iput-boolean p9, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mReverse:Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9

    const/4 v8, 0x0

    iget v0, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mFromDegrees:F

    iget v1, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mToDegrees:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    iget v2, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterX:F

    iget v3, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterY:F

    iget-object v4, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCamera:Landroid/graphics/Camera;

    iget-object v5, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mRotateAxisList:[I

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v4}, Landroid/graphics/Camera;->save()V

    iget-boolean v0, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mReverse:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mDepthZ:F

    mul-float/2addr v0, p1

    invoke-virtual {v4, v8, v8, v0}, Landroid/graphics/Camera;->translate(FFF)V

    :goto_0
    array-length v7, v5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_1

    aget v8, v5, v0

    packed-switch v8, :pswitch_data_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mDepthZ:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, p1

    mul-float/2addr v0, v7

    invoke-virtual {v4, v8, v8, v0}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v4, v1}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {v4, v1}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {v4, v1}, Landroid/graphics/Camera;->rotateZ(F)V

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v4}, Landroid/graphics/Camera;->restore()V

    neg-float v0, v2

    neg-float v1, v3

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public initialize(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCamera:Landroid/graphics/Camera;

    iget v0, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterXType:I

    iget v1, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/autonavi/wh/view/animation/CameraAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterX:F

    iget v0, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterYType:I

    iget v1, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/autonavi/wh/view/animation/CameraAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/autonavi/wh/view/animation/CameraAnimation;->mCenterY:F

    return-void
.end method
