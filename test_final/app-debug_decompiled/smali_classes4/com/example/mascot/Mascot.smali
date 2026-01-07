.class public final Lcom/example/mascot/Mascot;
.super Ljava/lang/Object;
.source "MascotActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\r\u001a\u00020\u0003H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/example/mascot/Mascot;",
        "",
        "name",
        "",
        "representing",
        "imageRes",
        "",
        "(Ljava/lang/String;Ljava/lang/String;I)V",
        "getImageRes",
        "()I",
        "getName",
        "()Ljava/lang/String;",
        "getRepresenting",
        "toString",
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


# instance fields
.field private final imageRes:I

.field private final name:Ljava/lang/String;

.field private final representing:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "representing"    # Ljava/lang/String;
    .param p3, "imageRes"    # I

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "representing"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/mascot/Mascot;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/example/mascot/Mascot;->representing:Ljava/lang/String;

    iput p3, p0, Lcom/example/mascot/Mascot;->imageRes:I

    return-void
.end method


# virtual methods
.method public final getImageRes()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/example/mascot/Mascot;->imageRes:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/example/mascot/Mascot;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getRepresenting()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/example/mascot/Mascot;->representing:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/example/mascot/Mascot;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/example/mascot/Mascot;->representing:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
