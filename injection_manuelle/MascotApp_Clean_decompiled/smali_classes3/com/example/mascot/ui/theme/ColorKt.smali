.class public final Lcom/example/mascot/ui/theme/ColorKt;
.super Ljava/lang/Object;
.source "Color.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\"\u0016\u0010\u0000\u001a\u00020\u0001\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0002\u0010\u0003\"\u0016\u0010\u0005\u001a\u00020\u0001\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0006\u0010\u0003\"\u0016\u0010\u0007\u001a\u00020\u0001\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0003\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\t"
    }
    d2 = {
        "GreyMascot",
        "Landroidx/compose/ui/graphics/Color;",
        "getGreyMascot",
        "()J",
        "J",
        "OrangeMascot",
        "getOrangeMascot",
        "RedMascot",
        "getRedMascot",
        "app_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final GreyMascot:J

.field private static final OrangeMascot:J

.field private static final RedMascot:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    const-wide v0, 0xffbf7e04L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/example/mascot/ui/theme/ColorKt;->OrangeMascot:J

    .line 6
    const-wide v0, 0xffa62f03L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/example/mascot/ui/theme/ColorKt;->RedMascot:J

    .line 7
    const-wide v0, 0xffd9b166L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/example/mascot/ui/theme/ColorKt;->GreyMascot:J

    return-void
.end method

.method public static final getGreyMascot()J
    .locals 2

    .line 7
    sget-wide v0, Lcom/example/mascot/ui/theme/ColorKt;->GreyMascot:J

    return-wide v0
.end method

.method public static final getOrangeMascot()J
    .locals 2

    .line 5
    sget-wide v0, Lcom/example/mascot/ui/theme/ColorKt;->OrangeMascot:J

    return-wide v0
.end method

.method public static final getRedMascot()J
    .locals 2

    .line 6
    sget-wide v0, Lcom/example/mascot/ui/theme/ColorKt;->RedMascot:J

    return-wide v0
.end method
