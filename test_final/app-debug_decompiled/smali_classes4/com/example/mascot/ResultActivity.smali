.class public final Lcom/example/mascot/ResultActivity;
.super Landroidx/activity/ComponentActivity;
.source "ResultActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J/\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u0003\u00a2\u0006\u0002\u0010\u000cJ\r\u0010\r\u001a\u00020\u0004H\u0003\u00a2\u0006\u0002\u0010\u000eJ\u0012\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/example/mascot/ResultActivity;",
        "Landroidx/activity/ComponentActivity;",
        "()V",
        "Result",
        "",
        "name",
        "",
        "representing",
        "success",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "(Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V",
        "ResultPreview",
        "(Landroidx/compose/runtime/Composer;I)V",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    return-void
.end method

.method private final Result(Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 17
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "representing"    # Ljava/lang/String;
    .param p3, "success"    # Z
    .param p4, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I

    .line 58
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p6

    const v0, -0x2b04ddc6

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Result)P(1,2,3)68@2384L997:ResultActivity.kt#4zhrkq"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p6

    .local v1, "$dirty":I
    and-int/lit8 v2, p7, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v12, 0xe

    if-nez v2, :cond_2

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v12, 0x70

    if-nez v2, :cond_5

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    :goto_3
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v2, v12, 0x380

    if-nez v2, :cond_8

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x100

    goto :goto_4

    :cond_7
    const/16 v2, 0x80

    :goto_4
    or-int/2addr v1, v2

    :cond_8
    :goto_5
    and-int/lit8 v2, p7, 0x8

    if-eqz v2, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v3, p4

    goto :goto_7

    :cond_9
    and-int/lit16 v3, v12, 0x1c00

    if-nez v3, :cond_b

    move-object/from16 v3, p4

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x800

    goto :goto_6

    :cond_a
    const/16 v4, 0x400

    :goto_6
    or-int/2addr v1, v4

    goto :goto_7

    :cond_b
    move-object/from16 v3, p4

    :goto_7
    and-int/lit8 v4, p7, 0x10

    if-eqz v4, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_9

    :cond_c
    const v4, 0xe000

    and-int/2addr v4, v12

    if-nez v4, :cond_e

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v4, 0x4000

    goto :goto_8

    :cond_d
    const/16 v4, 0x2000

    :goto_8
    or-int/2addr v1, v4

    :cond_e
    :goto_9
    move v14, v1

    .end local v1    # "$dirty":I
    .local v14, "$dirty":I
    const v1, 0xb6db

    and-int/2addr v1, v14

    const/16 v4, 0x2492

    if-ne v1, v4, :cond_10

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_a

    .line 96
    :cond_f
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v15, v3

    goto/16 :goto_e

    .line 58
    :cond_10
    :goto_a
    if-eqz v2, :cond_11

    .line 57
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .end local p4    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_b

    .line 58
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p4    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_11
    move-object v1, v3

    .line 57
    .end local p4    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 58
    const/4 v2, -0x1

    const-string v3, "com.example.mascot.ResultActivity.Result (ResultActivity.kt:57)"

    invoke-static {v0, v14, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 59
    :cond_12
    if-eqz v11, :cond_13

    .line 60
    sget v0, Lcom/example/mascot/R$drawable;->success:I

    goto :goto_c

    .line 62
    :cond_13
    sget v0, Lcom/example/mascot/R$drawable;->fail:I

    .line 59
    :goto_c
    nop

    .line 64
    .local v0, "icon":I
    const-string v2, " la mascotte de "

    if-eqz v11, :cond_14

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tu as bien devin\u00e9 !\nC\'\u00e9tait "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    .line 67
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dommage, il se trouve que c\'\u00e9tait "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    :goto_d
    nop

    .line 69
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Lcom/example/mascot/ResultActivity$Result$1;

    invoke-direct {v3, v8, v14, v0, v2}, Lcom/example/mascot/ResultActivity$Result$1;-><init>(Lcom/example/mascot/ResultActivity;IILjava/lang/String;)V

    const v4, -0x1751924c

    const/4 v5, 0x1

    invoke-static {v13, v4, v5, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function3;

    shr-int/lit8 v4, v14, 0x9

    and-int/lit8 v4, v4, 0xe

    or-int/lit8 v4, v4, 0x30

    const/4 v5, 0x0

    invoke-static {v1, v3, v13, v4, v5}, Lcom/example/mascot/UtilsKt;->IllustrationActionColumn(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 96
    .end local v0    # "icon":I
    .end local v2    # "message":Ljava/lang/String;
    :cond_15
    move-object v15, v1

    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v15, "modifier":Landroidx/compose/ui/Modifier;
    :goto_e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-nez v7, :cond_16

    goto :goto_f

    :cond_16
    new-instance v16, Lcom/example/mascot/ResultActivity$Result$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object v5, v15

    move/from16 v6, p6

    move-object v8, v7

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/example/mascot/ResultActivity$Result$2;-><init>(Lcom/example/mascot/ResultActivity;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/ui/Modifier;II)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_f
    return-void
.end method

.method private final ResultPreview(Landroidx/compose/runtime/Composer;I)V
    .locals 8
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    .line 100
    const v0, 0xca571cd

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    const-string v1, "C(ResultPreview)100@3483L65:ResultActivity.kt#4zhrkq"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v1, p2

    .local v1, "$dirty":I
    and-int/lit8 v2, p2, 0xe

    const/4 v3, 0x2

    if-nez v2, :cond_1

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    move v7, v1

    .end local v1    # "$dirty":I
    .local v7, "$dirty":I
    and-int/lit8 v1, v7, 0xb

    if-ne v1, v3, :cond_3

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 104
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_2

    .line 100
    :cond_3
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    const-string v2, "com.example.mascot.ResultActivity.ResultPreview (ResultActivity.kt:99)"

    invoke-static {v0, v7, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 101
    :cond_4
    new-instance v0, Lcom/example/mascot/ResultActivity$ResultPreview$1;

    invoke-direct {v0, p0, v7}, Lcom/example/mascot/ResultActivity$ResultPreview$1;-><init>(Lcom/example/mascot/ResultActivity;I)V

    const v1, 0xfb7675a

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/16 v5, 0x180

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/example/mascot/ui/theme/ThemeKt;->MascotTheme(ZZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 104
    :cond_5
    :goto_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Lcom/example/mascot/ResultActivity$ResultPreview$2;

    invoke-direct {v1, p0, p2}, Lcom/example/mascot/ResultActivity$ResultPreview$2;-><init>(Lcom/example/mascot/ResultActivity;I)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_3
    return-void
.end method

.method public static final synthetic access$Result(Lcom/example/mascot/ResultActivity;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 0
    .param p0, "$this"    # Lcom/example/mascot/ResultActivity;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "representing"    # Ljava/lang/String;
    .param p3, "success"    # Z
    .param p4, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .param p7, "$default"    # I

    .line 27
    invoke-direct/range {p0 .. p7}, Lcom/example/mascot/ResultActivity;->Result(Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public static final synthetic access$ResultPreview(Lcom/example/mascot/ResultActivity;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "$this"    # Lcom/example/mascot/ResultActivity;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/example/mascot/ResultActivity;->ResultPreview(Landroidx/compose/runtime/Composer;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/example/mascot/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 32
    .local v0, "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/example/mascot/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "representing"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 33
    .local v1, "representing":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/example/mascot/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "success"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 35
    .local v2, "success":Z
    invoke-virtual {p0}, Lcom/example/mascot/ResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 36
    move-object v3, p0

    check-cast v3, Landroidx/activity/ComponentActivity;

    new-instance v4, Lcom/example/mascot/ResultActivity$onCreate$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/example/mascot/ResultActivity$onCreate$1;-><init>(Lcom/example/mascot/ResultActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    const v5, -0x8f845f8

    const/4 v6, 0x1

    invoke-static {v5, v6, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v6, v5}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 50
    return-void
.end method
