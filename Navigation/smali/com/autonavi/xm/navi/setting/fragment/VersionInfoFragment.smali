.class public Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;
.super Lcom/autonavi/xm/navigation/app/NaviFragment;


# static fields
.field private static final GESTURE_FACTORY_SETTINGS:Ljava/lang/String; = "factory_settings"

.field private static final MAP_VERSION_FILE_PATH:Ljava/lang/String; = "data/dbdata/china/map_v.dat"


# instance fields
.field private mAnApiInfo:Lcom/autonavi/navigation/api/AnApiInfo;

.field private mGestureLib:Landroid/gesture/GestureLibrary;

.field private mGov:Landroid/gesture/GestureOverlayView;

.field private mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

.field private mIsbnNumber:Ljava/lang/String;

.field private mMapInfo:Ljava/lang/String;

.field private mMapNumber:Ljava/lang/String;

.field private mOnGestureListener:Landroid/gesture/GestureOverlayView$OnGestureListener;

.field private mRegisterManager:Lcom/autonavi/navigation/api/register/RegisterManager;

.field private mVersionInfo:Ljava/lang/String;

.field private mVersionNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/app/NaviFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;)Landroid/gesture/GestureOverlayView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mGov:Landroid/gesture/GestureOverlayView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;)Landroid/gesture/GestureLibrary;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mGestureLib:Landroid/gesture/GestureLibrary;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;)Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method private getMapVersionInfo()V
    .locals 5

    const v0, 0x7f0b0160

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mIsbnNumber:Ljava/lang/String;

    const v0, 0x7f0b015f

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mMapNumber:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/navigation/api/AnApi;->getDataSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data/dbdata/china/map_v.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v0, "GB2312"

    invoke-direct {v2, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISBN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ISBN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "ISBN"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mIsbnNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mIsbnNumber:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mIsbnNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mIsbnNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mIsbnNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0b0161

    invoke-virtual {p0, v3}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mIsbnNumber:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "GS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mMapNumber:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Version1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mVersionNumber:Ljava/lang/String;

    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mVersionInfo:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MapInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mMapInfo:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    if-eqz v0, :cond_5

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_5

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_6

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_6
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private initFactorySettingsEntrance()V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f080185

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment$1;

    invoke-direct {v1, p0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment$1;-><init>(Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f080186

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/gesture/GestureOverlayView;

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mGov:Landroid/gesture/GestureOverlayView;

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mGov:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v0, v2}, Landroid/gesture/GestureOverlayView;->setGestureStrokeType(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mGov:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v0, v2}, Landroid/gesture/GestureOverlayView;->setGestureVisible(Z)V

    new-instance v0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment$2;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment$2;-><init>(Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mOnGestureListener:Landroid/gesture/GestureOverlayView$OnGestureListener;

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mGov:Landroid/gesture/GestureOverlayView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mOnGestureListener:Landroid/gesture/GestureOverlayView$OnGestureListener;

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->addOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    const/high16 v1, 0x7f060000

    invoke-static {v0, v1}, Landroid/gesture/GestureLibraries;->fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mGestureLib:Landroid/gesture/GestureLibrary;

    return-void
.end method

.method private initVersionInfo()V
    .locals 4

    const v3, 0x7f080181

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mAnApiInfo:Lcom/autonavi/navigation/api/AnApiInfo;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApiInfo;->getMapIsbn()Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f08017d

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mIsbnNumber:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mAnApiInfo:Lcom/autonavi/navigation/api/AnApiInfo;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApiInfo;->getMapReviewNum()Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f08017e

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mMapNumber:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/util/AnApiUtils;->getDataVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mMapInfo:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "2010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "2010"

    const-string v2, "20-10"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f08017f

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v0, 0x7f080180

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/autonavi/navigation/api/util/AnApiUtils;->getEngineVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mRegisterManager:Lcom/autonavi/navigation/api/register/RegisterManager;

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/register/RegisterManager;->getRegisterInfo()Lcom/autonavi/navigation/api/register/model/RegisterInfo;

    move-result-object v1

    const v0, 0x7f080183

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, v1, Lcom/autonavi/navigation/api/register/model/RegisterInfo;->installCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080182

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v1, Lcom/autonavi/navigation/api/register/model/RegisterInfo;->serialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mVersionNumber:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, "V2.0"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mVersionInfo:Ljava/lang/String;

    if-eqz v0, :cond_3

    const v0, 0x7f080184

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mVersionInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "autonavidata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "factory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->initFactorySettingsEntrance()V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mMapInfo:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mVersionNumber:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/autonavi/xm/navigation/app/NaviFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreateView(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onCreateView(Landroid/os/Bundle;)V

    const v0, 0x7f0b0157

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->setTitle(I)V

    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->setContentView(I)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getRegisterManager()Lcom/autonavi/navigation/api/register/RegisterManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mRegisterManager:Lcom/autonavi/navigation/api/register/RegisterManager;

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getAnApiInfo()Lcom/autonavi/navigation/api/AnApiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mAnApiInfo:Lcom/autonavi/navigation/api/AnApiInfo;

    const v0, 0x7f080143

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xm/support/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xm/support/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->getMapVersionInfo()V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->initVersionInfo()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mOnGestureListener:Landroid/gesture/GestureOverlayView$OnGestureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mGov:Landroid/gesture/GestureOverlayView;

    iget-object v1, p0, Lcom/autonavi/xm/navi/setting/fragment/VersionInfoFragment;->mOnGestureListener:Landroid/gesture/GestureOverlayView$OnGestureListener;

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->removeOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V

    :cond_0
    invoke-super {p0}, Lcom/autonavi/xm/navigation/app/NaviFragment;->onDestroy()V

    return-void
.end method
