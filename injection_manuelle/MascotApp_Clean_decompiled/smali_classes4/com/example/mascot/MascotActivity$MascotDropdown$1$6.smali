.class final Lcom/example/mascot/MascotActivity$MascotDropdown$1$6;
.super Lkotlin/jvm/internal/Lambda;
.source "MascotActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mascot/MascotActivity;->MascotDropdown(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMascotActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MascotActivity.kt\ncom/example/mascot/MascotActivity$MascotDropdown$1$6\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,290:1\n1855#2:291\n1856#2:301\n83#3,3:292\n1097#4,6:295\n*S KotlinDebug\n*F\n+ 1 MascotActivity.kt\ncom/example/mascot/MascotActivity$MascotDropdown$1$6\n*L\n161#1:291\n161#1:301\n164#1:292,3\n164#1:295,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "invoke",
        "(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $expanded$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/example/mascot/Mascot;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selected$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/example/mascot/Mascot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/example/mascot/Mascot;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/example/mascot/Mascot;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6;->$selected$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6;->$onChange:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 160
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 25
    .param p1, "$this$DropdownMenu"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    move/from16 v14, p3

    const-string v1, "$this$DropdownMenu"

    move-object/from16 v15, p1

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "C*163@6524L163,161@6405L304:MascotActivity.kt#4zhrkq"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 161
    and-int/lit8 v1, v14, 0x51

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_5

    .line 161
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v2, "com.example.mascot.MascotActivity.MascotDropdown.<anonymous>.<anonymous> (MascotActivity.kt:160)"

    const v3, -0x5e654a2d

    invoke-static {v3, v14, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/example/mascot/MascotActivity;->Companion:Lcom/example/mascot/MascotActivity$Companion;

    invoke-virtual {v1}, Lcom/example/mascot/MascotActivity$Companion;->getMASCOTS()Ljava/util/List;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/Iterable;

    .local v16, "$this$forEach$iv":Ljava/lang/Iterable;
    iget-object v12, v0, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6;->$selected$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v11, v0, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v10, v0, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6;->$onChange:Lkotlin/jvm/functions/Function1;

    const/16 v17, 0x0

    .line 291
    .local v17, "$i$f$forEach":I
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .local v19, "element$iv":Ljava/lang/Object;
    move-object/from16 v9, v19

    check-cast v9, Lcom/example/mascot/Mascot;

    .local v9, "mascot":Lcom/example/mascot/Mascot;
    const/16 v20, 0x0

    .line 163
    .local v20, "$i$a$-forEach-MascotActivity$MascotDropdown$1$6$1":I
    new-instance v1, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6$1$1;

    invoke-direct {v1, v9}, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6$1$1;-><init>(Lcom/example/mascot/Mascot;)V

    const v2, 0x23e2309b

    const/4 v3, 0x1

    invoke-static {v13, v2, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 164
    filled-new-array {v12, v9, v11, v10}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x8

    .local v2, "keys$iv":[Ljava/lang/Object;
    .local v3, "$changed$iv":I
    const/4 v4, 0x0

    .local v4, "$i$f$remember":I
    const v5, -0x21de6e89

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v13, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 292
    const/4 v5, 0x0

    .line 293
    .local v5, "invalid$iv":Z
    array-length v6, v2

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v8, v2, v7

    .local v8, "key$iv":Ljava/lang/Object;
    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    or-int v5, v5, v21

    .end local v8    # "key$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 294
    :cond_3
    move-object/from16 v6, p2

    .local v6, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 295
    .local v7, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 296
    .local v21, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v5, :cond_5

    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v8, v0, :cond_4

    goto :goto_3

    .line 300
    :cond_4
    move-object v0, v8

    goto :goto_4

    .line 297
    :cond_5
    :goto_3
    const/4 v0, 0x0

    .line 164
    .local v0, "$i$a$-remember-MascotActivity$MascotDropdown$1$6$1$2":I
    move/from16 v22, v0

    .end local v0    # "$i$a$-remember-MascotActivity$MascotDropdown$1$6$1$2":I
    .local v22, "$i$a$-remember-MascotActivity$MascotDropdown$1$6$1$2":I
    new-instance v0, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6$1$2$1;

    invoke-direct {v0, v9, v10, v12, v11}, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6$1$2$1;-><init>(Lcom/example/mascot/Mascot;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 297
    .end local v22    # "$i$a$-remember-MascotActivity$MascotDropdown$1$6$1$2":I
    nop

    .line 298
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 299
    nop

    .line 296
    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    :goto_4
    nop

    .line 295
    .end local v8    # "it$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 294
    .end local v6    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v2    # "keys$iv":[Ljava/lang/Object;
    .end local v3    # "$changed$iv":I
    .end local v4    # "$i$f$remember":I
    .end local v5    # "invalid$iv":Z
    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 162
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/16 v21, 0x6

    const/16 v22, 0x1fc

    move-object/from16 v23, v9

    .end local v9    # "mascot":Lcom/example/mascot/Mascot;
    .local v23, "mascot":Lcom/example/mascot/Mascot;
    move-object v9, v0

    move-object v0, v10

    move-object/from16 v10, p2

    move-object/from16 v24, v11

    move/from16 v11, v21

    move-object/from16 v21, v12

    move/from16 v12, v22

    invoke-static/range {v1 .. v12}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 170
    nop

    .line 291
    .end local v20    # "$i$a$-forEach-MascotActivity$MascotDropdown$1$6$1":I
    .end local v23    # "mascot":Lcom/example/mascot/Mascot;
    move-object v10, v0

    move-object/from16 v12, v21

    move-object/from16 v11, v24

    move-object/from16 v0, p0

    .end local v19    # "element$iv":Ljava/lang/Object;
    goto/16 :goto_1

    .line 301
    :cond_6
    nop

    .end local v16    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v17    # "$i$f$forEach":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 171
    :cond_7
    :goto_5
    return-void
.end method
