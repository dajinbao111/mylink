.class public Lcom/autonavi/navigation/api/settings/a/c;
.super Lcom/autonavi/navigation/api/settings/a/a;


# instance fields
.field private final b:Lcom/autonavi/wh/navigation/engine/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/settings/a/a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/a;->a()Lcom/autonavi/wh/navigation/engine/a;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    return-void
.end method

.method private a(I)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    invoke-virtual {v0, p1}, Lcom/autonavi/wh/navigation/engine/a;->a(I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Z)[Lcom/autonavi/navigation/api/settings/model/MapTheme;
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/map/GPaletteList;

    iget-object v2, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    invoke-virtual {v2, p1, v0}, Lcom/autonavi/wh/navigation/engine/a;->a(Z[Lcom/autonavi/wh/navigation/server/map/GPaletteList;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v2, v3, :cond_0

    aget-object v0, v0, v1

    iget-object v3, v0, Lcom/autonavi/wh/navigation/server/map/GPaletteList;->pPalette:[Lcom/autonavi/wh/navigation/server/map/GPalette;

    array-length v0, v3

    new-array v0, v0, [Lcom/autonavi/navigation/api/settings/model/MapTheme;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    new-instance v6, Lcom/autonavi/navigation/api/settings/model/MapTheme;

    iget v7, v5, Lcom/autonavi/wh/navigation/server/map/GPalette;->nPaletteID:I

    iget-object v5, v5, Lcom/autonavi/wh/navigation/server/map/GPalette;->szPaletteName:Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Lcom/autonavi/navigation/api/settings/model/MapTheme;-><init>(ILjava/lang/String;)V

    aput-object v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GParam;
    .locals 2

    const-string v0, "rect_of_map"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_H_MAP_VIEW_RECT:Lcom/autonavi/wh/navigation/server/GParam;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_V_MAP_VIEW_RECT:Lcom/autonavi/wh/navigation/server/GParam;

    goto :goto_0

    :cond_1
    const-string v0, "rect_of_overview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_H_OVERVIEW_FRGND_RECT:Lcom/autonavi/wh/navigation/server/GParam;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_V_OVERVIEW_FRGND_RECT:Lcom/autonavi/wh/navigation/server/GParam;

    goto :goto_0

    :cond_3
    const-string v0, "map_center_position"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_H_MAP_CAR_POSITION:Lcom/autonavi/wh/navigation/server/GParam;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_V_MAP_CAR_POSITION:Lcom/autonavi/wh/navigation/server/GParam;

    goto :goto_0

    :cond_5
    const-string v0, "rect_of_zoom_intersection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_H_ZOOM_VIEW_RECT:Lcom/autonavi/wh/navigation/server/GParam;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_V_ZOOM_VIEW_RECT:Lcom/autonavi/wh/navigation/server/GParam;

    goto :goto_0

    :cond_7
    const-string v0, "map_center_position_zoom"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_H_MAP_CAR_POSITION_ZOOM:Lcom/autonavi/wh/navigation/server/GParam;

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_V_MAP_CAR_POSITION_ZOOM:Lcom/autonavi/wh/navigation/server/GParam;

    goto :goto_0

    :cond_9
    const-string v0, "rect_of_highway_signs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_H_GUIDEPOST_VIEW_RECT:Lcom/autonavi/wh/navigation/server/GParam;

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_V_GUIDEPOST_VIEW_RECT:Lcom/autonavi/wh/navigation/server/GParam;

    goto :goto_0

    :cond_b
    const-string v0, "map_center_position_highway_signs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_H_MAP_CAR_POSITION_GUIDEPOST:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_V_MAP_CAR_POSITION_GUIDEPOST:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_d
    const-string v0, "rect_of_guideboard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_H_SIGNPOST_VIEW_RECT:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_V_SIGNPOST_VIEW_RECT:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_f
    const-string v0, "map_center_position_guideboard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_H_MAP_CAR_POSITION_SIGNPOST:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_10
    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_V_MAP_CAR_POSITION_SIGNPOST:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_11
    const-string v0, "rect_of_route_overview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/navigation/api/internal/a/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_H_OVERVIEW_BKGND_RECT:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_12
    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_V_OVERVIEW_BKGND_RECT:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_13
    const-string v0, "calculation_rule"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_ROUTE_OPTION:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_14
    const-string v0, "language"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_LANGUAGE:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_15
    const-string v0, "orientation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_DISPLAY_ORIENTATION:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_16
    const-string v0, "show_traffic_status"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_MAP_SHOW_TMC:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_17
    const-string v0, "text_size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_MAP_FONT_SIZE:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_18
    const-string v0, "day_night_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_MAP_DAYNIGHT_MODE:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_19
    const-string v0, "poi_density"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_MAP_POI_DENSITY:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_1a
    const-string v0, "map_theme"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/settings/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_DAY_PALETTE_INDEX:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_1b
    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_NIGHT_PALETTE_INDEX:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_1c
    const-string v0, "map_theme_day"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_DAY_PALETTE_INDEX:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_1d
    const-string v0, "map_theme_night"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_NIGHT_PALETTE_INDEX:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_1e
    const-string v0, "speed_warning_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_OVERSPEED:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_1f
    const-string v0, "speed_limit_road"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_NORMALWAY_LIMIT:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_20
    const-string v0, "speed_limit_highway"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_HIGHWAY_LIMIT:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_21
    const-string v0, "warning_statement_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_WARM_PROMPT:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_22
    const-string v0, "voice_frequency"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_PROMPT_OPTION:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_23
    const-string v0, "volume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_VOLUME:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_24
    const-string v0, "mute"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_MUTE:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_25
    const-string v0, "driving_safety_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_SAFETY_INFORMATION:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_26
    const-string v0, "tts_role"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_SPEAKER_OPTION:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_27
    const-string v0, "show_map_cursor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_MAP_SHOW_CURSOR:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_28
    const-string v0, "show_zoom_view"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_MAP_SHOW_ZOOM_VIEW:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_29
    const-string v0, "show_track"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_MAP_SHOW_TRACK:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_2a
    const-string v0, "show_highway_signs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_MAP_SHOW_GUIDEPOST:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_2b
    const-string v0, "show_guideboard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_MAP_SHOW_SIGNPOST:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_2c
    const-string v0, "current_day_night_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_AUTO_MODE_DAYNIGHT:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_2d
    const-string v0, "my_position_icon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_CAR_IMAGE_INDEX:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_2e
    const-string v0, "show_uncorrected_location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_MAP_SHOW_ORIGIN_CAR:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_2f
    const-string v0, "disable_location_providers"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_DISABLE_GPS:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_30
    const-string v0, "disable_ecompass"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_DISABLE_ECOMPASS:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_31
    const-string v0, "show_traffic_incident"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_SHOW_TMCEVENT:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_32
    const-string v0, "traffic_incident_distance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_TMC_EVENT_NORMALWAYLIMIT:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_33
    const-string v0, "show_traffic_flow"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_SHOW_TMCSTREAM:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_34
    const-string v0, "show_traffic_tmc_option"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_MAP_TMC_SHOW_OPTION:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_35
    const-string v0, "show_traffic_flow_event"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_SHOW_TMCSTREAMEVENT:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_36
    const-string v0, "route_calculate_tmc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_ROUTE_TMC_OPTION:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_37
    const-string v0, "route_recalculate_tmc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_ROUTE_TMC_RECALCULATE:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_38
    const-string v0, "show_animation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_MAP_SHOW_ANIMATED:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_39
    const-string v0, "has_route"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_GUIDE_STATUS:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_3a
    const-string v0, "is_simulating"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_DEMO_STATUS:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_3b
    const-string v0, "detour_region_visibility"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_REGIONAVOID_ONOFF:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_3c
    const-string v0, "map_origin_car_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_MAP_SHOW_ORIGIN_CAR:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_3d
    const-string v0, "detour_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_DETOUR_TYPE:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_3e
    const-string v0, "route_calculate_consider_tmc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_ROUTE_FLAG:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_3f
    const-string v0, "saft_speed_limit_speak"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_40
    const-string v0, "saft_camera_speak"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_41
    const-string v0, "saft_danger_warn_speak"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_42
    const-string v0, "speak_guidance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_SPEAK_GUIDANCE:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_43
    const-string v0, "map_3d_mode_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Navi engine don\'t support!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    const-string v0, "support_netmap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_45
    const-string v0, "map_icon_size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_MAP_ICON_SIZE:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_46
    const-string v0, "support_hk_mc_tw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Navi engine don\'t support!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    const-string v0, "pcd_broadcast"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Navi engine don\'t support!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    const-string v0, "detour_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_GRAPHICS_LIB:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_49
    const-string v0, "favorite_display_option"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_FAVORITE_SHOW_OPTION:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_4a
    const-string v0, "show_traffic_board"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Navi engine don\'t support!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    const-string v0, "tbt_commonroad_normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_GUIDE_CLUSTERNORMALDIS:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_4c
    const-string v0, "tbt_commonroad_simple"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_GUIDE_CLUSTERSIMPLEDIS:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_4d
    const-string v0, "tbt_commonroad_prenormal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_GUIDE_CLUSTERPRENORMALDIS:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_4e
    const-string v0, "tbt_highway_normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_GUIDE_HWCLUSTERNORMALDIS:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_4f
    const-string v0, "tbt_highway_simple"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_GUIDE_HWCLUSTERSIMPLEDIS:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_50
    const-string v0, "tbt_highway_prenormal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_GUIDE_HWCLUSTERPRENORMALDIS:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_51
    const-string v0, "tbt_expressway_normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_GUIDE_EWCLUSTERNORMALDIS:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_52
    const-string v0, "tbt_expressway_simple"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_GUIDE_EWCLUSTERSIMPLEDIS:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_53
    const-string v0, "tbt_expressway_prenormal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_GUIDE_EWCLUSTERPRENORMALDIS:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_54
    const-string v0, "show_ecompass"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    sget-object v0, Lcom/autonavi/wh/navigation/server/GParam;->G_SHOW_ECOMPASS:Lcom/autonavi/wh/navigation/server/GParam;

    goto/16 :goto_0

    :cond_55
    const/4 v0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/settings/a/c;->b(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GParam;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/autonavi/navigation/api/settings/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "current_day_night_mode"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p2}, Lcom/autonavi/navigation/api/settings/a/c;->a(I)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "tts_audio_stream_type"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/f;->a()Lcom/autonavi/wh/navigation/engine/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/wh/navigation/engine/f;->b(I)Z

    move-result v1

    goto :goto_0

    :cond_2
    const-string v2, "tts_audio_focus"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/autonavi/wh/navigation/engine/f;->a()Lcom/autonavi/wh/navigation/engine/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/wh/navigation/engine/f;->c(I)Z

    move-result v1

    goto :goto_0

    :cond_3
    const-string v2, "map_icon_size"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p2, :cond_4

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/autonavi/navigation/api/settings/a/c;->a(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/settings/a/c;->b(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GParam;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/settings/a/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    goto :goto_0

    :cond_6
    const-string v3, "traffic_incident_distance"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    sget-object v4, Lcom/autonavi/wh/navigation/server/GParam;->G_TMC_EVENT_NORMALWAYRADIUS:Lcom/autonavi/wh/navigation/server/GParam;

    invoke-virtual {v3, v4, p2}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;I)Lcom/autonavi/wh/navigation/server/GStatus;

    iget-object v3, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    sget-object v4, Lcom/autonavi/wh/navigation/server/GParam;->G_TMC_EVENT_HIGHWAYLIMIT:Lcom/autonavi/wh/navigation/server/GParam;

    invoke-virtual {v3, v4, p2}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;I)Lcom/autonavi/wh/navigation/server/GStatus;

    iget-object v3, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    sget-object v4, Lcom/autonavi/wh/navigation/server/GParam;->G_TMC_EVENT_HIGHWAYRADIUS:Lcom/autonavi/wh/navigation/server/GParam;

    invoke-virtual {v3, v4, p2}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;I)Lcom/autonavi/wh/navigation/server/GStatus;

    :cond_7
    sget-object v3, Lcom/autonavi/wh/navigation/server/GParam;->G_DEMO_SPEED:Lcom/autonavi/wh/navigation/server/GParam;

    if-ne v2, v3, :cond_8

    sget-object v3, Lcom/autonavi/wh/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_JUMP:Lcom/autonavi/wh/navigation/server/map/GDemoSpeed;

    invoke-virtual {v3}, Lcom/autonavi/wh/navigation/server/map/GDemoSpeed;->ordinal()I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget-object v4, Lcom/autonavi/wh/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_LOW:Lcom/autonavi/wh/navigation/server/map/GDemoSpeed;

    invoke-virtual {v4}, Lcom/autonavi/wh/navigation/server/map/GDemoSpeed;->ordinal()I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_8
    iget-object v3, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    invoke-virtual {v3, v2, p2}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-eq v2, v3, :cond_0

    move v1, v0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Point;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Lcom/autonavi/wh/navigation/server/GCoord;

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v3}, Lcom/autonavi/wh/navigation/server/GCoord;-><init>(II)V

    iget-object v2, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/settings/a/c;->b(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GParam;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;Lcom/autonavi/wh/navigation/server/GCoord;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Rect;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/settings/a/c;->b(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GParam;

    move-result-object v1

    new-instance v2, Lcom/autonavi/wh/navigation/server/GRect;

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/autonavi/wh/navigation/server/GRect;-><init>(IIII)V

    iget-object v3, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    invoke-virtual {v3, v1, v2}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;Lcom/autonavi/wh/navigation/server/GRect;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "poi_priorities"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/autonavi/navigation/api/settings/Settings;->getPoiPriorities(Landroid/os/Bundle;)[Lcom/autonavi/navigation/api/settings/model/PoiPriority;

    move-result-object v6

    new-array v0, v3, [I

    iget-object v1, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    sget-object v4, Lcom/autonavi/wh/navigation/server/GParam;->G_MAP_POI_PRIORITY:Lcom/autonavi/wh/navigation/server/GParam;

    invoke-virtual {v1, v4, v0}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;[I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v4, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v4, :cond_4

    aget v1, v0, v2

    if-eqz v6, :cond_5

    array-length v7, v6

    move v5, v2

    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v8, v6, v5

    iget-boolean v0, v8, Lcom/autonavi/navigation/api/settings/model/PoiPriority;->isChecked:Z

    if-eqz v0, :cond_0

    iget v0, v8, Lcom/autonavi/navigation/api/settings/model/PoiPriority;->index:I

    shl-int v0, v3, v0

    or-int/2addr v0, v1

    :goto_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move v4, v2

    move v0, v2

    :goto_2
    const/4 v9, 0x7

    if-ge v4, v9, :cond_2

    iget v9, v8, Lcom/autonavi/navigation/api/settings/model/PoiPriority;->index:I

    if-ne v4, v9, :cond_1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    shl-int v9, v3, v4

    or-int/2addr v0, v9

    goto :goto_3

    :cond_2
    and-int/2addr v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_4
    iget-object v1, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    sget-object v4, Lcom/autonavi/wh/navigation/server/GParam;->G_MAP_POI_PRIORITY:Lcom/autonavi/wh/navigation/server/GParam;

    invoke-virtual {v1, v4, v0}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_4

    move v2, v3

    :cond_4
    return v2

    :cond_5
    move v0, v2

    goto :goto_4
.end method

.method public a(Ljava/lang/String;Lcom/autonavi/navigation/api/settings/model/Size;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/settings/a/c;->b(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GParam;

    move-result-object v1

    new-instance v2, Lcom/autonavi/wh/navigation/server/GSize;

    iget v3, p2, Lcom/autonavi/navigation/api/settings/model/Size;->width:I

    iget v4, p2, Lcom/autonavi/navigation/api/settings/model/Size;->height:I

    invoke-direct {v2, v3, v4}, Lcom/autonavi/wh/navigation/server/GSize;-><init>(II)V

    iget-object v3, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    invoke-virtual {v3, v1, v2}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;Lcom/autonavi/wh/navigation/server/GSize;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "use_original_location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/autonavi/wh/navigation/engine/a;->a(Z)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v3, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/settings/a/c;->b(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GParam;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/settings/a/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    invoke-virtual {v3, v0, p2}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;Z)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_1
.end method

.method public b(Ljava/lang/String;I)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/settings/a/c;->b(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GParam;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/settings/a/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    :cond_0
    :goto_0
    return p2

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    invoke-virtual {v2, v0, v1}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;[I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    aget p2, v1, v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/GCoord;

    iget-object v1, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/settings/a/c;->b(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GParam;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;[Lcom/autonavi/wh/navigation/server/GCoord;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance p2, Landroid/graphics/Point;

    iget v1, v0, Lcom/autonavi/wh/navigation/server/GCoord;->x:I

    iget v0, v0, Lcom/autonavi/wh/navigation/server/GCoord;->y:I

    invoke-direct {p2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    :cond_0
    return-object p2
.end method

.method public b(Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/GRect;

    iget-object v1, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/settings/a/c;->b(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GParam;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;[Lcom/autonavi/wh/navigation/server/GRect;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance p2, Landroid/graphics/Rect;

    iget v1, v0, Lcom/autonavi/wh/navigation/server/GRect;->left:I

    iget v2, v0, Lcom/autonavi/wh/navigation/server/GRect;->top:I

    iget v3, v0, Lcom/autonavi/wh/navigation/server/GRect;->right:I

    iget v0, v0, Lcom/autonavi/wh/navigation/server/GRect;->bottom:I

    invoke-direct {p2, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_0
    return-object p2
.end method

.method public b(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    const/4 v9, 0x7

    const/4 v8, 0x5

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "poi_priorities"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v1, [I

    iget-object v4, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    sget-object v5, Lcom/autonavi/wh/navigation/server/GParam;->G_MAP_POI_PRIORITY:Lcom/autonavi/wh/navigation/server/GParam;

    invoke-virtual {v4, v5, v0}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;[I)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v4

    sget-object v5, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v4, v5, :cond_c

    aget v5, v0, v2

    new-array v6, v9, [Lcom/autonavi/navigation/api/settings/model/PoiPriority;

    move v4, v2

    :goto_0
    if-ge v4, v9, :cond_1

    shl-int v7, v1, v4

    new-instance v8, Lcom/autonavi/navigation/api/settings/model/PoiPriority;

    and-int v0, v5, v7

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {v8, v4, v7, v0, v3}, Lcom/autonavi/navigation/api/settings/model/PoiPriority;-><init>(IIZLjava/lang/String;)V

    aput-object v8, v6, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_2
    invoke-virtual {p2, p1, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :goto_2
    return-object p2

    :cond_3
    const-string v0, "supported_map_themes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/settings/a/c;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/autonavi/navigation/api/settings/a/c;->a(Z)[Lcom/autonavi/navigation/api/settings/model/MapTheme;

    move-result-object v0

    if-eqz v0, :cond_c

    if-nez p2, :cond_4

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_4
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_2

    :cond_5
    const-string v0, "supported_map_themes_day"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, v1}, Lcom/autonavi/navigation/api/settings/a/c;->a(Z)[Lcom/autonavi/navigation/api/settings/model/MapTheme;

    move-result-object v0

    if-eqz v0, :cond_c

    if-nez p2, :cond_6

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_6
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_2

    :cond_7
    const-string v0, "supported_map_themes_night"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, v2}, Lcom/autonavi/navigation/api/settings/a/c;->a(Z)[Lcom/autonavi/navigation/api/settings/model/MapTheme;

    move-result-object v0

    if-eqz v0, :cond_c

    if-nez p2, :cond_8

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_8
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_2

    :cond_9
    const-string v0, "supported_my_position_icons"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez p2, :cond_a

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_a
    new-array v4, v8, [Lcom/autonavi/navigation/api/settings/model/MyLocationIcon;

    new-array v1, v1, [Lcom/autonavi/wh/navigation/server/map/GBitmap;

    move v0, v2

    :goto_3
    if-ge v0, v8, :cond_b

    iget-object v5, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    invoke-virtual {v5, v0, v1, v3}, Lcom/autonavi/wh/navigation/engine/a;->a(I[Lcom/autonavi/wh/navigation/server/map/GBitmap;[Lcom/autonavi/wh/navigation/server/map/GBitmap;)Lcom/autonavi/wh/navigation/server/GStatus;

    new-instance v5, Lcom/autonavi/navigation/api/settings/model/MyLocationIcon;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-static {v7}, Lcom/autonavi/navigation/api/internal/a/a/b;->a(Lcom/autonavi/wh/navigation/server/map/GBitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v5, v0, v6, v7}, Lcom/autonavi/navigation/api/settings/model/MyLocationIcon;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    const-string v0, "supported_my_position_icons"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_2

    :cond_c
    move-object p2, v3

    goto/16 :goto_2
.end method

.method public b(Ljava/lang/String;Lcom/autonavi/navigation/api/settings/model/Size;)Lcom/autonavi/navigation/api/settings/model/Size;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/wh/navigation/server/GSize;

    iget-object v1, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/settings/a/c;->b(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GParam;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;[Lcom/autonavi/wh/navigation/server/GSize;)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance p2, Lcom/autonavi/navigation/api/settings/model/Size;

    iget v1, v0, Lcom/autonavi/wh/navigation/server/GSize;->cx:I

    iget v0, v0, Lcom/autonavi/wh/navigation/server/GSize;->cy:I

    invoke-direct {p2, v1, v0}, Lcom/autonavi/navigation/api/settings/model/Size;-><init>(II)V

    :cond_0
    return-object p2
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "map_3d_mode_enabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move p2, v0

    :cond_0
    :goto_0
    return p2

    :cond_1
    invoke-direct {p0, p1}, Lcom/autonavi/navigation/api/settings/a/c;->b(Ljava/lang/String;)Lcom/autonavi/wh/navigation/server/GParam;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/navigation/api/settings/a/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [Z

    iget-object v3, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    invoke-virtual {v3, v1, v2}, Lcom/autonavi/wh/navigation/engine/a;->a(Lcom/autonavi/wh/navigation/server/GParam;[Z)Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v1

    sget-object v3, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v1, v3, :cond_0

    aget-boolean p2, v2, v0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/navigation/api/settings/a/c;->b:Lcom/autonavi/wh/navigation/engine/a;

    invoke-virtual {v0}, Lcom/autonavi/wh/navigation/engine/a;->c()Lcom/autonavi/wh/navigation/server/GStatus;

    move-result-object v0

    invoke-super {p0}, Lcom/autonavi/navigation/api/settings/a/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/autonavi/wh/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/wh/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
