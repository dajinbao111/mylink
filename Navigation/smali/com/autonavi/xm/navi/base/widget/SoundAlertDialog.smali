.class public Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;
.super Lcom/autonavi/xm/navigation/app/NaviDialogFragment;


# static fields
.field private static final ARGUMENT_NEGATIVE_BUTTON_ICON:Ljava/lang/String; = "negative_button_icon"

.field private static final ARGUMENT_NEGATIVE_BUTTON_TEXT:Ljava/lang/String; = "negative_button_text"

.field private static final ARGUMENT_POSITIVE_BUTTON_ICON:Ljava/lang/String; = "positive_button_icon"

.field private static final ARGUMENT_POSITIVE_BUTTON_TEXT:Ljava/lang/String; = "positive_button_text"

.field public static final DEFAULT_VOLUME:I = 0x3f


# instance fields
.field private mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

.field private mNaviVolumeSeekBar:Landroid/widget/SeekBar;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDismissCallback:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$OnDismissCallback;

.field private final mSettings:Lcom/autonavi/navigation/api/settings/Settings;

.field private mToggleButton:Landroid/widget/ToggleButton;

.field private mVolume:I

.field mVolumeControlReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;-><init>()V

    invoke-static {}, Lcom/autonavi/navigation/api/AnApi;->getInstance()Lcom/autonavi/navigation/api/AnApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/navigation/api/AnApi;->getSettings()Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    new-instance v0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$1;-><init>(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mVolumeControlReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;-><init>(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)V

    iput-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)Lcom/autonavi/navigation/api/settings/Settings;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)Landroid/widget/ToggleButton;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mToggleButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mVolume:I

    return v0
.end method

.method private initVolume()V
    .locals 4

    const/16 v0, 0x3f

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v2, "mute"

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/navigation/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mToggleButton:Landroid/widget/ToggleButton;

    const v2, 0x7f020181

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/ToggleButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_0
    iget-object v1, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v2, "volume"

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/navigation/api/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :goto_1
    const-string v1, "times"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastVolume= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xm/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->onVolumeResult(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mToggleButton:Landroid/widget/ToggleButton;

    const v2, 0x7f020184

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/ToggleButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const v1, 0x7f0c002f

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->setStyle(II)V

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iput-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mVolumeControlReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.yftech.keyevent_navi"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const v0, 0x7f030048

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->onDestroy()V

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mHost:Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;

    iget-object v1, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mVolumeControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navi/main/activity/NavigationMapActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mOnDismissCallback:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$OnDismissCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mOnDismissCallback:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$OnDismissCallback;

    iget-object v1, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v2, "mute"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/navigation/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$OnDismissCallback;->onDialogDismiss(Z)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v1, "volume"

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/navigation/api/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "navi_volume"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "times"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sound alert save volume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/xm/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const v2, 0x7f080172

    const v0, 0x7f080174

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080175

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mToggleButton:Landroid/widget/ToggleButton;

    const v0, 0x7f080173

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mNaviVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mNaviVolumeSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->initVolume()V

    return-void
.end method

.method protected onVolumeResult(I)V
    .locals 5

    const/16 v4, 0x9

    const/4 v0, 0x0

    iput p1, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mVolume:I

    iget-object v1, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;

    const-string v2, "volume"

    invoke-virtual {v1, v2, p1}, Lcom/autonavi/navigation/api/settings/Settings;->putInt(Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mNaviVolumeSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mVolume:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget v1, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mVolume:I

    if-le v1, v4, :cond_0

    iget v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mVolume:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    const-string v1, "times"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVolume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xm/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v1, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mVolume:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/a/a/a;->b(Landroid/content/Context;I)I

    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mVolume:I

    if-ne v1, v4, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/a/a/a;->b(Landroid/content/Context;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "YFInterface"

    const-string v1, " can invoke YFInterface.setNaviVol"

    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/a/a/a;->b(Landroid/content/Context;I)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final setArguments(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method setDialogArguments(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/autonavi/xm/navigation/app/NaviDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public setOnDismissCallback(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$OnDismissCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mOnDismissCallback:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$OnDismissCallback;

    return-void
.end method
