.class final Lcom/example/mascot/ResultActivity$onCreate$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ResultActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mascot/ResultActivity$onCreate$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u000b\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "innerPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "invoke",
        "(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $name:Ljava/lang/String;

.field final synthetic $representing:Ljava/lang/String;

.field final synthetic $success:Z

.field final synthetic this$0:Lcom/example/mascot/ResultActivity;


# direct methods
.method constructor <init>(Lcom/example/mascot/ResultActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/example/mascot/ResultActivity$onCreate$1$1$1;->this$0:Lcom/example/mascot/ResultActivity;

    iput-object p2, p0, Lcom/example/mascot/ResultActivity$onCreate$1$1$1;->$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/example/mascot/ResultActivity$onCreate$1$1$1;->$representing:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/example/mascot/ResultActivity$onCreate$1$1$1;->$success:Z

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

    .line 38
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/example/mascot/ResultActivity$onCreate$1$1$1;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .locals 12
    .param p1, "innerPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    const-string v0, "innerPadding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "C38@1573L270:ResultActivity.kt#4zhrkq"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v0, p3

    .local v0, "$dirty":I
    and-int/lit8 v1, p3, 0xe

    if-nez v1, :cond_1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v0, v1

    .line 39
    :cond_1
    and-int/lit8 v1, v0, 0x5b

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 46
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_2

    .line 39
    :cond_3
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    const-string v2, "com.example.mascot.ResultActivity.onCreate.<anonymous>.<anonymous>.<anonymous> (ResultActivity.kt:38)"

    const v3, -0x2e1cf254

    invoke-static {v3, v0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    iget-object v4, p0, Lcom/example/mascot/ResultActivity$onCreate$1$1$1;->this$0:Lcom/example/mascot/ResultActivity;

    .line 40
    iget-object v5, p0, Lcom/example/mascot/ResultActivity$onCreate$1$1$1;->$name:Ljava/lang/String;

    .line 41
    iget-object v6, p0, Lcom/example/mascot/ResultActivity$onCreate$1$1$1;->$representing:Ljava/lang/String;

    .line 42
    iget-boolean v7, p0, Lcom/example/mascot/ResultActivity$onCreate$1$1$1;->$success:Z

    .line 43
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 44
    invoke-static {v1, p1}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 45
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-static {v1, v8, v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxHeight$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 39
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, p2

    invoke-static/range {v4 .. v11}, Lcom/example/mascot/ResultActivity;->access$Result(Lcom/example/mascot/ResultActivity;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 47
    :cond_5
    :goto_2
    return-void
.end method
