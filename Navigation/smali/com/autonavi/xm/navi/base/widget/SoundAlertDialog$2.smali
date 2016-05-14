.class Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/16 v4, 0x9

    const v7, 0x7f0b00eb

    const v6, 0x7f020184

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f080174

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mVolume:I
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$300(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)I

    move-result v0

    add-int/lit8 v0, v0, -0x9

    if-gez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    invoke-virtual {v3, v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->onVolumeResult(I)V

    const-string v3, "times"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " down volume:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/autonavi/xm/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/support/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/util/AnApiUtils;->speak(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mVolume:I
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$300(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$100(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v0

    const-string v3, "mute"

    invoke-virtual {v0, v3, v2}, Lcom/autonavi/navigation/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mToggleButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$200(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)Landroid/widget/ToggleButton;

    move-result-object v0

    const v2, 0x7f020181

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/ToggleButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mVolume:I
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$300(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)I

    move-result v0

    add-int/lit8 v0, v0, -0x9

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$100(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v0

    const-string v2, "mute"

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/navigation/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mToggleButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$200(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v6, v1}, Landroid/widget/ToggleButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    :cond_4
    const v3, 0x7f080175

    if-ne v0, v3, :cond_6

    const-string v0, "times"

    const-string v2, " up "

    invoke-static {v0, v2}, Lcom/autonavi/xm/navi/base/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mVolume:I
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$300(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    const/16 v2, 0x63

    if-le v0, v2, :cond_5

    const/16 v0, 0x63

    :goto_3
    iget-object v2, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    invoke-virtual {v2, v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->onVolumeResult(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/support/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/util/AnApiUtils;->speak(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$100(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v0

    const-string v2, "mute"

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/navigation/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$100(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v0

    const-string v2, "mute"

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/navigation/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mToggleButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$200(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v6, v1}, Landroid/widget/ToggleButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mVolume:I
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$300(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    goto :goto_3

    :cond_6
    const v3, 0x7f080172

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$100(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v0

    const-string v3, "mute"

    invoke-virtual {v0, v3, v1}, Lcom/autonavi/navigation/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$100(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v0

    const-string v2, "mute"

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/navigation/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mToggleButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$200(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v6, v1}, Landroid/widget/ToggleButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "navi_mute"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mVolume:I
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$300(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)I

    move-result v0

    if-le v0, v4, :cond_7

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mVolume:I
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$300(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v1, v0, 0x4

    :cond_7
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mVolume:I
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$300(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/a/a/a;->b(Landroid/content/Context;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/support/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/navigation/api/util/AnApiUtils;->speak(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mVolume:I
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$300(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)I

    move-result v0

    if-ne v0, v4, :cond_9

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/a/a/a;->b(Landroid/content/Context;I)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v0, "YFInterface"

    const-string v1, " can invoke YFInterface.setNaviVol"

    invoke-static {v0, v1}, Lcom/autonavi/xm/navi/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/a/a/a;->b(Landroid/content/Context;I)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mSettings:Lcom/autonavi/navigation/api/settings/Settings;
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$100(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)Lcom/autonavi/navigation/api/settings/Settings;

    move-result-object v0

    const-string v3, "mute"

    invoke-virtual {v0, v3, v2}, Lcom/autonavi/navigation/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    # getter for: Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->mToggleButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->access$200(Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;)Landroid/widget/ToggleButton;

    move-result-object v0

    const v3, 0x7f020181

    invoke-virtual {v0, v1, v1, v3, v1}, Landroid/widget/ToggleButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/a/a/a;->b(Landroid/content/Context;I)I

    iget-object v0, p0, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog$2;->this$0:Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;

    invoke-virtual {v0}, Lcom/autonavi/xm/navi/base/widget/SoundAlertDialog;->getActivity()Lcom/autonavi/xm/support/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "navi_mute"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4
.end method
