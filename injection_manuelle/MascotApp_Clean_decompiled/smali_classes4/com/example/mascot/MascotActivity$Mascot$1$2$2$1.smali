.class final Lcom/example/mascot/MascotActivity$Mascot$1$2$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MascotActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mascot/MascotActivity;->Mascot(Lcom/example/mascot/Mascot;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
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
.field final synthetic $mascot:Lcom/example/mascot/Mascot;

.field final synthetic $response$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/example/mascot/Mascot;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/example/mascot/MascotActivity;


# direct methods
.method constructor <init>(Lcom/example/mascot/MascotActivity;Lcom/example/mascot/Mascot;Landroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/mascot/MascotActivity;",
            "Lcom/example/mascot/Mascot;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/example/mascot/Mascot;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/mascot/MascotActivity$Mascot$1$2$2$1;->this$0:Lcom/example/mascot/MascotActivity;

    iput-object p2, p0, Lcom/example/mascot/MascotActivity$Mascot$1$2$2$1;->$mascot:Lcom/example/mascot/Mascot;

    iput-object p3, p0, Lcom/example/mascot/MascotActivity$Mascot$1$2$2$1;->$response$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/example/mascot/MascotActivity$Mascot$1$2$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/mascot/MascotActivity$Mascot$1$2$2$1;->this$0:Lcom/example/mascot/MascotActivity;

    invoke-virtual {v1}, Lcom/example/mascot/MascotActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/example/mascot/ResultActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/example/mascot/MascotActivity$Mascot$1$2$2$1;->$mascot:Lcom/example/mascot/Mascot;

    invoke-virtual {v1}, Lcom/example/mascot/Mascot;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/example/mascot/MascotActivity$Mascot$1$2$2$1;->$mascot:Lcom/example/mascot/Mascot;

    invoke-virtual {v1}, Lcom/example/mascot/Mascot;->getRepresenting()Ljava/lang/String;

    move-result-object v1

    const-string v2, "representing"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    nop

    .line 110
    nop

    .line 111
    iget-object v1, p0, Lcom/example/mascot/MascotActivity$Mascot$1$2$2$1;->$mascot:Lcom/example/mascot/Mascot;

    invoke-virtual {v1}, Lcom/example/mascot/Mascot;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/example/mascot/MascotActivity$Mascot$1$2$2$1;->$response$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lcom/example/mascot/MascotActivity;->access$Mascot$lambda$1(Landroidx/compose/runtime/MutableState;)Lcom/example/mascot/Mascot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/mascot/Mascot;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/example/mascot/MascotActivity$Mascot$1$2$2$1;->$mascot:Lcom/example/mascot/Mascot;

    invoke-virtual {v1}, Lcom/example/mascot/Mascot;->getRepresenting()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/example/mascot/MascotActivity$Mascot$1$2$2$1;->$response$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lcom/example/mascot/MascotActivity;->access$Mascot$lambda$1(Landroidx/compose/runtime/MutableState;)Lcom/example/mascot/Mascot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/mascot/Mascot;->getRepresenting()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 109
    :goto_0
    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/example/mascot/MascotActivity$Mascot$1$2$2$1;->this$0:Lcom/example/mascot/MascotActivity;

    invoke-virtual {v1}, Lcom/example/mascot/MascotActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    return-void
.end method
