.class final Lcom/example/mascot/ResultActivity$Result$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ResultActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mascot/ResultActivity;->Result(Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nResultActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResultActivity.kt\ncom/example/mascot/ResultActivity$Result$1\n+ 2 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/Updater\n+ 6 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 7 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,105:1\n71#2,7:106\n78#2:141\n82#2:147\n78#3,11:113\n91#3:146\n456#4,8:124\n464#4,3:138\n467#4,3:143\n36#4:148\n4144#5,6:132\n154#6:142\n1097#7,6:149\n*S KotlinDebug\n*F\n+ 1 ResultActivity.kt\ncom/example/mascot/ResultActivity$Result$1\n*L\n70#1:106,7\n70#1:141\n70#1:147\n70#1:113,11\n70#1:146\n70#1:124,8\n70#1:138,3\n70#1:143,3\n88#1:148\n70#1:132,6\n78#1:142\n88#1:149,6\n*E\n"
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
.field final synthetic $$dirty:I

.field final synthetic $icon:I

.field final synthetic $message:Ljava/lang/String;

.field final synthetic this$0:Lcom/example/mascot/ResultActivity;


# direct methods
.method constructor <init>(Lcom/example/mascot/ResultActivity;IILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/example/mascot/ResultActivity$Result$1;->this$0:Lcom/example/mascot/ResultActivity;

    iput p2, p0, Lcom/example/mascot/ResultActivity$Result$1;->$$dirty:I

    iput p3, p0, Lcom/example/mascot/ResultActivity$Result$1;->$icon:I

    iput-object p4, p0, Lcom/example/mascot/ResultActivity$Result$1;->$message:Ljava/lang/String;

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

    .line 69
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/example/mascot/ResultActivity$Result$1;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 56
    .param p1, "$this$IllustrationActionColumn"    # Landroidx/compose/foundation/layout/ColumnScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v14, p2

    move/from16 v15, p3

    const-string v1, "$this$IllustrationActionColumn"

    move-object/from16 v13, p1

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "C69@2444L633,87@3108L206,87@3091L280:ResultActivity.kt#4zhrkq"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 70
    and-int/lit8 v1, v15, 0x51

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_6

    .line 70
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v2, "com.example.mascot.ResultActivity.Result.<anonymous> (ResultActivity.kt:69)"

    const v3, -0x1751924c

    invoke-static {v3, v15, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 71
    :cond_2
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    .line 70
    iget v2, v0, Lcom/example/mascot/ResultActivity$Result$1;->$icon:I

    iget-object v3, v0, Lcom/example/mascot/ResultActivity$Result$1;->$message:Ljava/lang/String;

    const/16 v4, 0x180

    .local v1, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v4, "$changed$iv":I
    const/4 v5, 0x0

    .local v5, "$i$f$Column":I
    const v6, -0x1cd0f17e

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(Column)P(2,3,1)75@3779L61,76@3845L133:Column.kt#2w3rfo"

    invoke-static {v14, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 106
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 107
    .local v6, "modifier$iv":Landroidx/compose/ui/Modifier;
    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v7}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v7

    .line 111
    .local v7, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    shr-int/lit8 v8, v4, 0x3

    and-int/lit8 v8, v8, 0xe

    shr-int/lit8 v9, v4, 0x3

    and-int/lit8 v9, v9, 0x70

    or-int/2addr v8, v9

    invoke-static {v7, v1, v14, v8}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    .local v8, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v9, v4, 0x3

    and-int/lit8 v9, v9, 0x70

    .line 112
    nop

    .local v9, "$changed$iv$iv":I
    const/4 v10, 0x0

    .local v10, "$i$f$Layout":I
    const v11, -0x4ee9b9da

    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v14, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 113
    const/4 v11, 0x0

    invoke-static {v14, v11}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v12

    .line 114
    .local v12, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v11

    .line 116
    .local v11, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v17

    .line 123
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v18

    move-object/from16 v41, v1

    .end local v1    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v41, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    shl-int/lit8 v1, v9, 0x9

    and-int/lit16 v1, v1, 0x1c00

    or-int/lit8 v1, v1, 0x6

    .line 115
    move-object/from16 v42, v17

    .local v42, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v43, v18

    .local v1, "$changed$iv$iv$iv":I
    .local v43, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v44, 0x0

    .line 124
    .local v44, "$i$f$ReusableComposeNode":I
    move/from16 v45, v5

    .end local v5    # "$i$f$Column":I
    .local v45, "$i$f$Column":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v5

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-nez v5, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 125
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 126
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 127
    move-object/from16 v5, v42

    .end local v42    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v5, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 129
    .end local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v42    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4
    move-object/from16 v5, v42

    .end local v42    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 131
    :goto_1
    move-object/from16 v42, v5

    .end local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v42    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .local v5, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 118
    .local v17, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v46, v6

    .end local v6    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v46, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v5, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 119
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v5, v11, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 121
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    .local v6, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v18, 0x0

    .line 132
    .local v18, "$i$f$set-impl":I
    move-object/from16 v19, v5

    .local v19, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 133
    .local v20, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v21

    if-nez v21, :cond_6

    move-object/from16 v47, v7

    .end local v7    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v47, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v48, v8

    .end local v8    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v48, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v8, v19

    goto :goto_3

    .end local v47    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v48    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v7    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local v8    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_6
    move-object/from16 v47, v7

    move-object/from16 v48, v8

    .line 134
    .end local v7    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v8    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v47    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local v48    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v8, v19

    .end local v19    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v8, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 135
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7, v6}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 137
    :goto_3
    nop

    .line 132
    .end local v8    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 137
    nop

    .line 122
    .end local v6    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v18    # "$i$f$set-impl":I
    nop

    .line 131
    .end local v5    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 138
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v5

    shr-int/lit8 v6, v1, 0x3

    and-int/lit8 v6, v6, 0x70

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v7, v43

    .end local v43    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v7, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v7, v5, v14, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const v5, 0x7ab4aae9

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 140
    shr-int/lit8 v5, v1, 0x9

    and-int/lit8 v5, v5, 0xe

    .local v5, "$changed$iv":I
    move-object/from16 v6, p2

    .local v6, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 141
    .local v8, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    move/from16 v43, v1

    .end local v1    # "$changed$iv$iv$iv":I
    .local v43, "$changed$iv$iv$iv":I
    const v1, 0x107e0242

    move/from16 v49, v5

    .end local v5    # "$changed$iv":I
    .local v49, "$changed$iv":I
    const-string v5, "C77@3893L9:Column.kt#2w3rfo"

    invoke-static {v6, v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v5, v4, 0x6

    and-int/lit8 v5, v5, 0x70

    or-int/lit8 v5, v5, 0x6

    .local v5, "$changed":I
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    .local v1, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v50, v6

    .local v50, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v37, v50

    const/16 v51, 0x0

    .line 73
    .local v51, "$i$a$-Column-ResultActivity$Result$1$1":I
    move-object/from16 v52, v1

    .end local v1    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .local v52, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    const v1, 0x6083472e

    move/from16 v53, v4

    .end local v4    # "$changed$iv":I
    .local v53, "$changed$iv":I
    const-string v4, "C73@2588L26,72@2551L263,81@2915L10,79@2831L232:ResultActivity.kt#4zhrkq"

    move/from16 v54, v5

    move-object/from16 v5, v50

    .end local v50    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    .local v54, "$changed":I
    invoke-static {v5, v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 74
    const/4 v1, 0x0

    invoke-static {v2, v5, v1}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v17

    .line 75
    nop

    .line 76
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 77
    const/high16 v2, 0x3e800000    # 0.25f

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v18

    .line 78
    const/16 v1, 0x14

    .local v1, "$this$dp$iv":I
    const/4 v2, 0x0

    .line 142
    .local v2, "$i$f$getDp":I
    int-to-float v4, v1

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v22

    .line 78
    .end local v1    # "$this$dp$iv":I
    .end local v2    # "$i$f$getDp":I
    const/16 v23, 0x7

    const/16 v24, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v24}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v19

    .line 73
    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x1b8

    const/16 v26, 0x78

    move-object/from16 v24, v5

    invoke-static/range {v17 .. v26}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 82
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v2, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v1, v5, v2}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/Typography;->getHeadlineSmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v36

    .line 83
    sget-object v1, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getCenter-e0LSkKk()I

    move-result v1

    .line 84
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/4 v4, 0x1

    move-object/from16 v50, v7

    .end local v7    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v50, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/4 v7, 0x0

    move/from16 v55, v8

    .end local v8    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .local v55, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const/4 v8, 0x0

    invoke-static {v2, v8, v4, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    .line 81
    nop

    .line 84
    nop

    .line 83
    invoke-static {v1}, Landroidx/compose/ui/text/style/TextAlign;->box-impl(I)Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v28

    .line 82
    nop

    .line 80
    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v38, 0x30

    const/16 v39, 0x0

    const v40, 0xfdfc

    move-object/from16 v16, v3

    invoke-static/range {v16 .. v40}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 73
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 86
    nop

    .line 141
    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v51    # "$i$a$-Column-ResultActivity$Result$1$1":I
    .end local v52    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v54    # "$changed":I
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 140
    .end local v6    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v49    # "$changed$iv":I
    .end local v55    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    nop

    .line 143
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 144
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 145
    nop

    .end local v42    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v43    # "$changed$iv$iv$iv":I
    .end local v44    # "$i$f$ReusableComposeNode":I
    .end local v50    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 146
    nop

    .end local v9    # "$changed$iv$iv":I
    .end local v10    # "$i$f$Layout":I
    .end local v11    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v12    # "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 147
    nop

    .line 88
    .end local v41    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v45    # "$i$f$Column":I
    .end local v46    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v47    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v48    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v53    # "$changed$iv":I
    iget-object v1, v0, Lcom/example/mascot/ResultActivity$Result$1;->this$0:Lcom/example/mascot/ResultActivity;

    .local v1, "key1$iv":Ljava/lang/Object;
    iget-object v2, v0, Lcom/example/mascot/ResultActivity$Result$1;->this$0:Lcom/example/mascot/ResultActivity;

    iget v3, v0, Lcom/example/mascot/ResultActivity$Result$1;->$$dirty:I

    shr-int/lit8 v3, v3, 0xc

    and-int/lit8 v3, v3, 0xe

    .local v3, "$changed$iv":I
    const/4 v4, 0x0

    .local v4, "$i$f$remember":I
    const v5, 0x44faf204

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v14, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 148
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    .local v5, "invalid$iv$iv":Z
    .local v6, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 149
    .local v7, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 150
    .local v9, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v5, :cond_8

    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v8, v10, :cond_7

    goto :goto_4

    .line 154
    :cond_7
    move-object v2, v8

    goto :goto_5

    .line 151
    :cond_8
    :goto_4
    const/4 v10, 0x0

    .line 88
    .local v10, "$i$a$-remember-ResultActivity$Result$1$2":I
    new-instance v11, Lcom/example/mascot/ResultActivity$Result$1$2$1;

    invoke-direct {v11, v2}, Lcom/example/mascot/ResultActivity$Result$1$2$1;-><init>(Lcom/example/mascot/ResultActivity;)V

    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 151
    .end local v10    # "$i$a$-remember-ResultActivity$Result$1$2":I
    move-object v2, v11

    .line 152
    .local v2, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 153
    nop

    .line 150
    .end local v2    # "value$iv$iv":Ljava/lang/Object;
    :goto_5
    nop

    .line 149
    .end local v8    # "it$iv$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 148
    .end local v5    # "invalid$iv$iv":Z
    .end local v6    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v1    # "key1$iv":Ljava/lang/Object;
    .end local v3    # "$changed$iv":I
    .end local v4    # "$i$f$remember":I
    move-object v1, v2

    check-cast v1, Lkotlin/jvm/functions/Function0;

    sget-object v2, Lcom/example/mascot/ComposableSingletons$ResultActivityKt;->INSTANCE:Lcom/example/mascot/ComposableSingletons$ResultActivityKt;

    invoke-virtual {v2}, Lcom/example/mascot/ComposableSingletons$ResultActivityKt;->getLambda-1$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v10

    .line 88
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v12, 0x30000000

    const/16 v16, 0x1fe

    move-object/from16 v11, p2

    move/from16 v13, v16

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 95
    :cond_9
    :goto_6
    return-void
.end method
