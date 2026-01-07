.class final Lcom/example/mascot/ResultActivity$Result$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ResultActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mascot/ResultActivity$Result$1;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
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
.field final synthetic this$0:Lcom/example/mascot/ResultActivity;


# direct methods
.method constructor <init>(Lcom/example/mascot/ResultActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/example/mascot/ResultActivity$Result$1$2$1;->this$0:Lcom/example/mascot/ResultActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/example/mascot/ResultActivity$Result$1$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 89
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/mascot/ResultActivity$Result$1$2$1;->this$0:Lcom/example/mascot/ResultActivity;

    invoke-virtual {v1}, Lcom/example/mascot/ResultActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/example/mascot/MascotActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/example/mascot/ResultActivity$Result$1$2$1;->this$0:Lcom/example/mascot/ResultActivity;

    invoke-virtual {v1}, Lcom/example/mascot/ResultActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    return-void
.end method
