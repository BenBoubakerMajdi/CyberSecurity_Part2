.class public final Lcom/security/shield/SecurityShield;
.super Ljava/lang/Object;
.source "SecurityShield.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0008\u0010\n\u001a\u00020\u0006H\u0002J\u0008\u0010\u000b\u001a\u00020\u0006H\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\tH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/security/shield/SecurityShield;",
        "",
        "()V",
        "TAG",
        "",
        "isDebuggerDetected",
        "",
        "isDeveloperModeDetected",
        "context",
        "Landroid/content/Context;",
        "isEmulatorDetected",
        "isRootDetected",
        "killApplication",
        "",
        "protect",
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
.field public static final $stable:I = 0x0

.field public static final INSTANCE:Lcom/security/shield/SecurityShield;

.field private static final TAG:Ljava/lang/String; = "SecurityShield"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/security/shield/SecurityShield;

    invoke-direct {v0}, Lcom/security/shield/SecurityShield;-><init>()V

    sput-object v0, Lcom/security/shield/SecurityShield;->INSTANCE:Lcom/security/shield/SecurityShield;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isDebuggerDetected()Z
    .locals 3

    .line 87
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    .line 90
    .local v0, "isConnected":Z
    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v1

    .line 92
    .local v1, "isWaiting":Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private final isDeveloperModeDetected(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    nop

    .line 108
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 109
    const-string v2, "development_settings_enabled"

    .line 110
    nop

    .line 107
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .local v1, "devMode":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    goto :goto_0

    .line 113
    .end local v1    # "devMode":I
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Impossible de lire le mode d\u00e9veloppeur: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecurityShield"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    nop

    .line 106
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v0
.end method

.method private final isEmulatorDetected()Z
    .locals 15

    .line 184
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 185
    .local v1, "$i$a$-let-SecurityShield$isEmulatorDetected$suspiciousFingerprints$1":I
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "generic"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    const-string v7, "emulator"

    const-string v8, "unknown"

    const/4 v9, 0x1

    if-nez v6, :cond_1

    .line 186
    invoke-static {v0, v8, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 187
    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const-string v10, "test-keys"

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v6, v10, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 188
    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    move-object v10, v7

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v6, v10, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v9

    .line 185
    :goto_1
    nop

    .line 184
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-SecurityShield$isEmulatorDetected$suspiciousFingerprints$1":I
    move v0, v6

    .line 192
    .local v0, "suspiciousFingerprints":Z
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .local v1, "it":Ljava/lang/String;
    const/4 v6, 0x0

    .line 193
    .local v6, "$i$a$-let-SecurityShield$isEmulatorDetected$suspiciousModel$1":I
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v10, v1

    check-cast v10, Ljava/lang/CharSequence;

    const-string v11, "google_sdk"

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v10, v11, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 194
    move-object v10, v1

    check-cast v10, Ljava/lang/CharSequence;

    const-string v11, "Emulator"

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v10, v11, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 195
    move-object v10, v1

    check-cast v10, Ljava/lang/CharSequence;

    const-string v11, "Android SDK built for x86"

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v10, v11, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 196
    move-object v10, v1

    check-cast v10, Ljava/lang/CharSequence;

    const-string v11, "sdk_gphone"

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v10, v11, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    move v10, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v10, v9

    .line 193
    :goto_3
    nop

    .line 192
    .end local v1    # "it":Ljava/lang/String;
    .end local v6    # "$i$a$-let-SecurityShield$isEmulatorDetected$suspiciousModel$1":I
    move v1, v10

    .line 200
    .local v1, "suspiciousModel":Z
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .local v6, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 201
    .local v10, "$i$a$-let-SecurityShield$isEmulatorDetected$suspiciousManufacturer$1":I
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v6

    check-cast v11, Ljava/lang/CharSequence;

    const-string v12, "Genymotion"

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 202
    move-object v11, v6

    check-cast v11, Ljava/lang/CharSequence;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v11, v8, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 203
    const-string v8, "Google"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v2, v9

    .line 201
    :goto_5
    nop

    .line 200
    .end local v6    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-let-SecurityShield$isEmulatorDetected$suspiciousManufacturer$1":I
    nop

    .line 207
    .local v2, "suspiciousManufacturer":Z
    sget-object v6, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .restart local v6    # "it":Ljava/lang/String;
    const/4 v8, 0x0

    .line 208
    .local v8, "$i$a$-let-SecurityShield$isEmulatorDetected$suspiciousHardware$1":I
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v10, v6

    check-cast v10, Ljava/lang/CharSequence;

    const-string v11, "goldfish"

    move-object v12, v11

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v10, v12, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    const-string v12, "ranchu"

    if-nez v10, :cond_7

    .line 209
    move-object v10, v6

    check-cast v10, Ljava/lang/CharSequence;

    move-object v13, v12

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v10, v13, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 210
    move-object v10, v6

    check-cast v10, Ljava/lang/CharSequence;

    const-string v13, "vbox"

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v10, v13, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_6

    :cond_6
    move v10, v3

    goto :goto_7

    :cond_7
    :goto_6
    move v10, v9

    .line 208
    :goto_7
    nop

    .line 207
    .end local v6    # "it":Ljava/lang/String;
    .end local v8    # "$i$a$-let-SecurityShield$isEmulatorDetected$suspiciousHardware$1":I
    move v6, v10

    .line 214
    .local v6, "suspiciousHardware":Z
    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .local v8, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 215
    .local v10, "$i$a$-let-SecurityShield$isEmulatorDetected$suspiciousProduct$1":I
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v8

    check-cast v13, Ljava/lang/CharSequence;

    const-string v14, "sdk"

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v13, v14, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 216
    move-object v13, v8

    check-cast v13, Ljava/lang/CharSequence;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v13, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 217
    move-object v7, v8

    check-cast v7, Ljava/lang/CharSequence;

    const-string v13, "simulator"

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v7, v13, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_8

    :cond_8
    move v7, v3

    goto :goto_9

    :cond_9
    :goto_8
    move v7, v9

    .line 215
    :goto_9
    nop

    .line 214
    .end local v8    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-let-SecurityShield$isEmulatorDetected$suspiciousProduct$1":I
    nop

    .line 221
    .local v7, "suspiciousProduct":Z
    sget-object v8, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .restart local v8    # "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 222
    .local v10, "$i$a$-let-SecurityShield$isEmulatorDetected$suspiciousBoard$1":I
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v8

    check-cast v13, Ljava/lang/CharSequence;

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v13, v11, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 223
    move-object v11, v8

    check-cast v11, Ljava/lang/CharSequence;

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_a

    :cond_a
    move v4, v3

    goto :goto_b

    :cond_b
    :goto_a
    move v4, v9

    .line 222
    :goto_b
    nop

    .line 221
    .end local v8    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-let-SecurityShield$isEmulatorDetected$suspiciousBoard$1":I
    nop

    .line 227
    .local v4, "suspiciousBoard":Z
    if-nez v0, :cond_c

    .line 228
    if-nez v1, :cond_c

    .line 229
    if-nez v2, :cond_c

    .line 230
    if-nez v6, :cond_c

    .line 231
    if-nez v7, :cond_c

    .line 232
    if-eqz v4, :cond_d

    :cond_c
    move v3, v9

    .line 227
    :cond_d
    return v3
.end method

.method private final isRootDetected()Z
    .locals 11

    .line 132
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/app/Superuser.apk"

    aput-object v2, v0, v1

    .line 133
    const-string v3, "/sbin/su"

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 132
    nop

    .line 134
    const-string v3, "/system/bin/su"

    const/4 v5, 0x2

    aput-object v3, v0, v5

    .line 132
    nop

    .line 135
    const-string v3, "/system/xbin/su"

    const/4 v6, 0x3

    aput-object v3, v0, v6

    .line 132
    nop

    .line 136
    const-string v3, "/data/local/xbin/su"

    const/4 v6, 0x4

    aput-object v3, v0, v6

    .line 132
    nop

    .line 137
    const-string v3, "/data/local/bin/su"

    const/4 v6, 0x5

    aput-object v3, v0, v6

    .line 132
    nop

    .line 138
    const-string v3, "/system/sd/xbin/su"

    const/4 v6, 0x6

    aput-object v3, v0, v6

    .line 132
    nop

    .line 139
    const-string v3, "/system/bin/failsafe/su"

    const/4 v6, 0x7

    aput-object v3, v0, v6

    .line 132
    nop

    .line 140
    const-string v3, "/data/local/su"

    const/16 v6, 0x8

    aput-object v3, v0, v6

    .line 132
    nop

    .line 141
    const-string v3, "/su/bin/su"

    const/16 v6, 0x9

    aput-object v3, v0, v6

    .line 132
    nop

    .line 142
    const-string v3, "/system/xbin/daemonsu"

    const/16 v6, 0xa

    aput-object v3, v0, v6

    .line 132
    nop

    .line 143
    const/16 v3, 0xb

    const-string v6, "/system/etc/init.d/99SuperSUDaemon"

    aput-object v6, v0, v3

    .line 132
    nop

    .line 144
    const-string v3, "/dev/com.koushikdutta.superuser.daemon/"

    const/16 v7, 0xc

    aput-object v3, v0, v7

    .line 132
    nop

    .line 145
    const/16 v3, 0xd

    aput-object v2, v0, v3

    .line 132
    nop

    .line 146
    const/16 v2, 0xe

    aput-object v6, v0, v2

    .line 132
    nop

    .line 131
    nop

    .line 150
    .local v0, "suspiciousRootPaths":[Ljava/lang/String;
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v6, v0, v3

    .line 151
    .local v6, "path":Ljava/lang/String;
    nop

    .line 152
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 154
    const-string v8, "SecurityShield"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fichier root trouv\u00e9: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    return v4

    .line 157
    .end local v7    # "file":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 150
    .end local v6    # "path":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    :cond_1
    nop

    .line 164
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    const-string v5, "which"

    aput-object v5, v3, v1

    const-string v5, "su"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 165
    .local v2, "process":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v5, "getInputStream(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v6, Ljava/io/Reader;

    instance-of v3, v6, Ljava/io/BufferedReader;

    if-eqz v3, :cond_2

    check-cast v6, Ljava/io/BufferedReader;

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v3, v6, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v6, v3

    :goto_1
    check-cast v6, Ljava/io/Reader;

    invoke-static {v6}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 167
    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lez v5, :cond_3

    move v1, v4

    goto :goto_2

    .line 168
    .end local v2    # "process":Ljava/lang/Process;
    .end local v3    # "result":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/Exception;
    nop

    .line 163
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return v1
.end method

.method private final killApplication()V
    .locals 1

    .line 244
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 247
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 248
    return-void
.end method

.method public static final protect(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-string v0, "\ud83d\udee1\ufe0f === INITIALISATION DU BOUCLIER DE S\u00c9CURIT\u00c9 ==="

    const-string v1, "SecurityShield"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 38
    .local v0, "detectedThreats":Ljava/util/List;
    sget-object v2, Lcom/security/shield/SecurityShield;->INSTANCE:Lcom/security/shield/SecurityShield;

    invoke-direct {v2}, Lcom/security/shield/SecurityShield;->isDebuggerDetected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    const-string v2, "D\u00e9bogueur"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v2, "\u26a0\ufe0f D\u00c9BOGUEUR D\u00c9TECT\u00c9"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    sget-object v2, Lcom/security/shield/SecurityShield;->INSTANCE:Lcom/security/shield/SecurityShield;

    invoke-direct {v2, p0}, Lcom/security/shield/SecurityShield;->isDeveloperModeDetected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    const-string v2, "Mode d\u00e9veloppeur"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v2, "\u26a0\ufe0f MODE D\u00c9VELOPPEUR D\u00c9TECT\u00c9"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_1
    sget-object v2, Lcom/security/shield/SecurityShield;->INSTANCE:Lcom/security/shield/SecurityShield;

    invoke-direct {v2}, Lcom/security/shield/SecurityShield;->isRootDetected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    const-string v2, "Root"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v2, "\u26a0\ufe0f ROOT D\u00c9TECT\u00c9"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_2
    sget-object v2, Lcom/security/shield/SecurityShield;->INSTANCE:Lcom/security/shield/SecurityShield;

    invoke-direct {v2}, Lcom/security/shield/SecurityShield;->isEmulatorDetected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 54
    const-string v2, "\u00c9mulateur"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v2, "\u26a0\ufe0f \u00c9MULATEUR D\u00c9TECT\u00c9"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_3
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 61
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v2, ", "

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ud83d\udea8 MENACES D\u00c9TECT\u00c9ES: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v2, "\ud83d\udd12 APPLICATION DE LA REM\u00c9DIATION..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v2, "\ud83d\udc80 FERMETURE IMM\u00c9DIATE DE L\'APPLICATION"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 69
    sget-object v1, Lcom/security/shield/SecurityShield;->INSTANCE:Lcom/security/shield/SecurityShield;

    invoke-direct {v1}, Lcom/security/shield/SecurityShield;->killApplication()V

    goto :goto_0

    .line 71
    :cond_4
    const-string v2, "\u2705 Aucune menace d\u00e9tect\u00e9e"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v2, "\u2705 D\u00e9marrage de l\'application autoris\u00e9"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void
.end method
