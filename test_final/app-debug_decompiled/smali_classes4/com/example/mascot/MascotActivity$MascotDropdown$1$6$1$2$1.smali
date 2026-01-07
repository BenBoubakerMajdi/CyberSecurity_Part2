.class final Lcom/example/mascot/MascotActivity$MascotDropdown$1$6$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MascotActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mascot/MascotActivity$MascotDropdown$1$6;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $expanded$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mascot:Lcom/example/mascot/Mascot;

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
.method constructor <init>(Lcom/example/mascot/Mascot;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/mascot/Mascot;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/example/mascot/Mascot;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/example/mascot/Mascot;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6$1$2$1;->$mascot:Lcom/example/mascot/Mascot;

    iput-object p2, p0, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6$1$2$1;->$onChange:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6$1$2$1;->$selected$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6$1$2$1;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6$1$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6$1$2$1;->$selected$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6$1$2$1;->$mascot:Lcom/example/mascot/Mascot;

    invoke-static {v0, v1}, Lcom/example/mascot/MascotActivity;->access$MascotDropdown$lambda$13(Landroidx/compose/runtime/MutableState;Lcom/example/mascot/Mascot;)V

    .line 166
    iget-object v0, p0, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6$1$2$1;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/example/mascot/MascotActivity;->access$MascotDropdown$lambda$10(Landroidx/compose/runtime/MutableState;Z)V

    .line 167
    iget-object v0, p0, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6$1$2$1;->$onChange:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/example/mascot/MascotActivity$MascotDropdown$1$6$1$2$1;->$mascot:Lcom/example/mascot/Mascot;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method
