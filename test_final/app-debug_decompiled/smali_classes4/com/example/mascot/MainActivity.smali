.class public final Lcom/example/mascot/MainActivity;
.super Landroidx/activity/ComponentActivity;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0017\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u0003\u00a2\u0006\u0002\u0010\u0007J\r\u0010\u0008\u001a\u00020\u0004H\u0003\u00a2\u0006\u0002\u0010\tJ\u0012\u0010\n\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0014\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/example/mascot/MainActivity;",
        "Landroidx/activity/ComponentActivity;",
        "()V",
        "Home",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V",
        "HomePreview",
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

    .line 23
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    return-void
.end method

.method private final Home(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 5
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    .line 41
    const v0, 0x2a8bfe34

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    const-string v1, "C(Home)41@1482L561:MainActivity.kt#4zhrkq"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v1, p3

    .local v1, "$dirty":I
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, p3, 0xe

    if-nez v3, :cond_2

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v1, v3

    :cond_2
    :goto_1
    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, p3, 0x70

    if-nez v3, :cond_5

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v1, 0x5b

    const/16 v4, 0x12

    if-ne v3, v4, :cond_7

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_4

    .line 58
    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_5

    .line 41
    :cond_7
    :goto_4
    if-eqz v2, :cond_8

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object p1, v2

    check-cast p1, Landroidx/compose/ui/Modifier;

    :cond_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, -0x1

    const-string v3, "com.example.mascot.MainActivity.Home (MainActivity.kt:40)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 43
    :cond_9
    nop

    .line 44
    new-instance v0, Lcom/example/mascot/MainActivity$Home$1;

    invoke-direct {v0, p0, v1}, Lcom/example/mascot/MainActivity$Home$1;-><init>(Lcom/example/mascot/MainActivity;I)V

    const v2, -0x55e9b52    # -4.190009E35f

    const/4 v3, 0x1

    invoke-static {p2, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function3;

    and-int/lit8 v2, v1, 0xe

    or-int/lit8 v2, v2, 0x30

    .line 42
    const/4 v3, 0x0

    invoke-static {p1, v0, p2, v2, v3}, Lcom/example/mascot/UtilsKt;->IllustrationActionColumn(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 58
    :cond_a
    :goto_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    new-instance v2, Lcom/example/mascot/MainActivity$Home$2;

    invoke-direct {v2, p0, p1, p3, p4}, Lcom/example/mascot/MainActivity$Home$2;-><init>(Lcom/example/mascot/MainActivity;Landroidx/compose/ui/Modifier;II)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_6
    return-void
.end method

.method private final HomePreview(Landroidx/compose/runtime/Composer;I)V
    .locals 8
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    .line 62
    const v0, 0x7440f88f

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    const-string v1, "C(HomePreview)62@2143L42:MainActivity.kt#4zhrkq"

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

    .line 66
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_2

    .line 62
    :cond_3
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    const-string v2, "com.example.mascot.MainActivity.HomePreview (MainActivity.kt:61)"

    invoke-static {v0, v7, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 63
    :cond_4
    new-instance v0, Lcom/example/mascot/MainActivity$HomePreview$1;

    invoke-direct {v0, p0, v7}, Lcom/example/mascot/MainActivity$HomePreview$1;-><init>(Lcom/example/mascot/MainActivity;I)V

    const v1, 0x53295bdc

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

    .line 66
    :cond_5
    :goto_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Lcom/example/mascot/MainActivity$HomePreview$2;

    invoke-direct {v1, p0, p2}, Lcom/example/mascot/MainActivity$HomePreview$2;-><init>(Lcom/example/mascot/MainActivity;I)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_3
    return-void
.end method

.method public static final synthetic access$Home(Lcom/example/mascot/MainActivity;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 0
    .param p0, "$this"    # Lcom/example/mascot/MainActivity;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .param p4, "$default"    # I

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/example/mascot/MainActivity;->Home(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public static final synthetic access$HomePreview(Lcom/example/mascot/MainActivity;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "$this"    # Lcom/example/mascot/MainActivity;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/example/mascot/MainActivity;->HomePreview(Landroidx/compose/runtime/Composer;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 25
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V
    # ===== INJECTION AUTOMATIQUE - SÉCURITÉ =====
    invoke-static {p0}, Lcom/security/shield/SecurityShield;->protect(Landroid/content/Context;)V
    # ===========================================

    .line 26
    invoke-virtual {p0}, Lcom/example/mascot/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 27
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    new-instance v1, Lcom/example/mascot/MainActivity$onCreate$1;

    invoke-direct {v1, p0}, Lcom/example/mascot/MainActivity$onCreate$1;-><init>(Lcom/example/mascot/MainActivity;)V

    const v2, -0x1a0a66f8

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v3, v2}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 38
    return-void
.end method
