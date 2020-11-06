.class public Lmiui/drm/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/drm/DrmManager$DrmNSContext;,
        Lmiui/drm/DrmManager$TrialLimits;,
        Lmiui/drm/DrmManager$RightObject;,
        Lmiui/drm/DrmManager$RightObjectCache;,
        Lmiui/drm/DrmManager$DrmResult;
    }
.end annotation


# static fields
.field private static final ASSET_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:asset/o-ex:context/o-dd:uid"

.field private static final DISPLAY_COUNT_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:display/o-ex:constraint/o-dd:count"

.field private static final IMEI_EVERYONE:Ljava/lang/String; = "-1"

.field private static final IMEI_PREFIX:Ljava/lang/String; = "d"

.field private static final INDIVIDUAL_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/oma-dd:individual/o-ex:context/o-dd:uid"

.field private static final ITEM_SEPARATOR:Ljava/lang/String; = ","

.field private static final O_EX_ID_CATEGORY:Ljava/lang/String; = "o-ex:id"

.field private static final PAIR_SEPARATOR:Ljava/lang/String; = ":"

.field private static final PUBLIC_KEY_E:Ljava/lang/String; = "10001"

.field private static final PUBLIC_KEY_M:Ljava/lang/String; = "a2ebd07cfae9a72345fc3c95d80cf5a21a55bf553fbab3025c82747ba4d53d1f9b02f46c20b5520585a910732698b165f0ecf7bd9ce5402e27c646cd0c5d34cff92b184d6a477e156a7d3503b756cc3e8531fb26c0da0ca051ab531c7f9f2a040a06642cadb698882c048630030b73edbbd62da73f7027065443c6e2558edfbd"

.field private static final SUPPORT_AD:Ljava/lang/String; = "support_ad"

.field public static final TAG:Ljava/lang/String; = "drm"

.field private static final TIME_END_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:end"

.field private static final TIME_START_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:start"

.field private static final USER_EVERYONE:Ljava/lang/String; = "-1"

.field private static final USER_PREFIX:Ljava/lang/String; = "m"

.field private static mRightsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/drm/DrmManager$RightObjectCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 102
    new-instance v0, Lmiui/drm/DrmManager$1;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmiui/drm/DrmManager$1;-><init>(IFZ)V

    sput-object v0, Lmiui/drm/DrmManager;->mRightsCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertHexStringToBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "hex"    # Ljava/lang/String;

    .line 445
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 446
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 447
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 446
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 449
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static exportFatalLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 453
    const-string v0, " "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v1, 0x0

    .line 456
    .local v1, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "drm.log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 457
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x19000

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recreate log file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 461
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create log file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 465
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "export error message into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v1, v3

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/drm/DrmManager;->getContextInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 468
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    .end local v2    # "file":Ljava/io/File;
    nop

    .line 474
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 477
    :goto_0
    goto :goto_1

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 472
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 469
    :catch_1
    move-exception v0

    .line 470
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 472
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_2

    .line 474
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 480
    :cond_2
    :goto_1
    return-void

    .line 472
    :goto_2
    if-eqz v1, :cond_3

    .line 474
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 477
    goto :goto_3

    .line 475
    :catch_2
    move-exception v2

    .line 476
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 477
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    throw v0
.end method

.method private static getContextInfo()Ljava/lang/String;
    .locals 4

    .line 483
    const-string v0, "%s %s_%s %s"

    .line 484
    .local v0, "info":Ljava/lang/String;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 485
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 484
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEncodedImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .line 489
    invoke-static {p0}, Lmiui/drm/DrmManager;->getOriginImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "imei":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    const-string v1, ""

    return-object v1

    .line 493
    :cond_0
    invoke-static {v0}, Lmiui/util/HashUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    return-object v0
.end method

.method public static getMorePreciseDrmResult(Lmiui/drm/DrmManager$DrmResult;Lmiui/drm/DrmManager$DrmResult;)Lmiui/drm/DrmManager$DrmResult;
    .locals 1
    .param p0, "r1"    # Lmiui/drm/DrmManager$DrmResult;
    .param p1, "r2"    # Lmiui/drm/DrmManager$DrmResult;

    .line 182
    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_TIME_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    if-ne p0, v0, :cond_0

    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    if-ne p1, v0, :cond_1

    :cond_0
    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    if-eq p0, v0, :cond_2

    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_TIME_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    if-ne p1, v0, :cond_2

    .line 184
    :cond_1
    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_TIME_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    return-object v0

    .line 186
    :cond_2
    invoke-virtual {p0, p1}, Lmiui/drm/DrmManager$DrmResult;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_3

    move-object v0, p0

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private static getOriginImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .line 498
    invoke-static {}, Lmiui/telephony/TelephonyManagerUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "imei":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    const-string v1, ""

    return-object v1

    .line 502
    :cond_0
    return-object v0
.end method

.method private static getTime(Ljava/lang/String;)J
    .locals 4
    .param p0, "rfc822"    # Ljava/lang/String;

    .line 378
    const-wide/16 v0, 0x0

    .line 380
    .local v0, "time":J
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 384
    goto :goto_0

    .line 381
    :catch_0
    move-exception v2

    .line 382
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 383
    const-wide/16 v0, -0x1

    .line 385
    .end local v2    # "e":Ljava/text/ParseException;
    :goto_0
    return-wide v0
.end method

.method public static getTrialLimits(Ljava/io/File;)Lmiui/drm/DrmManager$TrialLimits;
    .locals 6
    .param p0, "rightsFile"    # Ljava/io/File;

    .line 370
    invoke-static {p0}, Lmiui/drm/DrmManager;->parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;

    move-result-object v0

    .line 371
    .local v0, "ro":Lmiui/drm/DrmManager$RightObject;
    if-eqz v0, :cond_0

    .line 372
    new-instance v1, Lmiui/drm/DrmManager$TrialLimits;

    iget-wide v2, v0, Lmiui/drm/DrmManager$RightObject;->startTime:J

    iget-wide v4, v0, Lmiui/drm/DrmManager$RightObject;->endTime:J

    invoke-direct {v1, v2, v3, v4, v5}, Lmiui/drm/DrmManager$TrialLimits;-><init>(JJ)V

    return-object v1

    .line 374
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getVAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "c"    # Landroid/content/Context;

    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, "vaid":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_0

    .line 508
    return-object v0

    .line 511
    :cond_0
    :try_start_0
    const-string v1, "com.android.id.IdentifierManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 512
    .local v1, "identifierManagerClass":Ljava/lang/Class;
    const-string v2, "getVAID"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 513
    .local v2, "getVaidMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lmiui/util/HashUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 516
    .end local v1    # "identifierManagerClass":Ljava/lang/Class;
    .end local v2    # "getVaidMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 514
    :catch_0
    move-exception v1

    .line 515
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVAID hanppens exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drm"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static isLegal(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Lmiui/drm/DrmManager$DrmResult;
    .locals 2

    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    return-object v0
.end method

.method public static isLegal(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lmiui/drm/DrmManager$DrmResult;
    .locals 8

    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    return-object v0
.end method

.method private static isLegal(Landroid/content/Context;Ljava/lang/String;Lmiui/drm/DrmManager$RightObject;)Lmiui/drm/DrmManager$DrmResult;
    .locals 6

    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    return-object v0
.end method

.method public static isPermanentRights(Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static isPermanentRights(Lmiui/drm/DrmManager$RightObject;)Z
    .locals 4

    const/4 v0, 0x1

    return v0
.end method

.method private static isRightsFileLegal(Ljava/io/File;)Z
    .locals 14

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportAd(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportAd(Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    return v0
.end method

.method private static nodeToString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .line 433
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 435
    .local v0, "sw":Ljava/io/StringWriter;
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 436
    .local v1, "t":Ljavax/xml/transform/Transformer;
    const-string v2, "omit-xml-declaration"

    const-string v3, "yes"

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    .end local v1    # "t":Ljavax/xml/transform/Transformer;
    goto :goto_0

    .line 438
    :catch_0
    move-exception v1

    .line 439
    .local v1, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    .line 441
    .end local v1    # "e":Ljavax/xml/transform/TransformerException;
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;
    .locals 19
    .param p0, "file"    # Ljava/io/File;

    .line 295
    const-string v0, "m"

    const-string v1, "d"

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "path":Ljava/lang/String;
    sget-object v3, Lmiui/drm/DrmManager;->mRightsCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/drm/DrmManager$RightObjectCache;

    .line 297
    .local v3, "cache":Lmiui/drm/DrmManager$RightObjectCache;
    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-wide v6, v3, Lmiui/drm/DrmManager$RightObjectCache;->lastModified:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 298
    iget-object v0, v3, Lmiui/drm/DrmManager$RightObjectCache;->ro:Lmiui/drm/DrmManager$RightObject;

    return-object v0

    .line 300
    :cond_0
    invoke-static/range {p0 .. p0}, Lmiui/drm/DrmManager;->isRightsFileLegal(Ljava/io/File;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 301
    return-object v5

    .line 303
    :cond_1
    new-instance v4, Lmiui/drm/DrmManager$RightObject;

    invoke-direct {v4, v5}, Lmiui/drm/DrmManager$RightObject;-><init>(Lmiui/drm/DrmManager$1;)V

    .line 304
    .local v4, "ro":Lmiui/drm/DrmManager$RightObject;
    new-instance v6, Lmiui/drm/DrmManager$RightObjectCache;

    invoke-direct {v6, v5}, Lmiui/drm/DrmManager$RightObjectCache;-><init>(Lmiui/drm/DrmManager$1;)V

    move-object v3, v6

    .line 305
    iput-object v4, v3, Lmiui/drm/DrmManager$RightObjectCache;->ro:Lmiui/drm/DrmManager$RightObject;

    .line 306
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, v3, Lmiui/drm/DrmManager$RightObjectCache;->lastModified:J

    .line 307
    sget-object v6, Lmiui/drm/DrmManager;->mRightsCache:Ljava/util/Map;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 310
    .local v6, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 311
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v8
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_a

    .line 312
    .local v8, "builder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v9, p0

    :try_start_1
    invoke-virtual {v8, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v10

    .line 313
    .local v10, "document":Lorg/w3c/dom/Document;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v11

    .line 314
    .local v11, "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    invoke-virtual {v11}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v12

    .line 315
    .local v12, "xPath":Ljavax/xml/xpath/XPath;
    new-instance v13, Lmiui/drm/DrmManager$DrmNSContext;

    invoke-direct {v13, v5}, Lmiui/drm/DrmManager$DrmNSContext;-><init>(Lmiui/drm/DrmManager$1;)V

    invoke-interface {v12, v13}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 316
    const-string v5, "/o-ex:rights/o-ex:agreement/o-ex:asset/o-ex:context/o-dd:uid"

    sget-object v13, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v12, v5, v10, v13}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/NodeList;

    .line 317
    .local v5, "assetList":Lorg/w3c/dom/NodeList;
    const/4 v13, 0x0

    if-eqz v5, :cond_5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lez v14, :cond_5

    .line 318
    move v14, v13

    .local v14, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v14, v15, :cond_4

    .line 319
    invoke-interface {v5, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    invoke-interface {v15}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v15

    .line 320
    .local v15, "content":Ljava/lang/String;
    const-string v13, ":"

    invoke-virtual {v15, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 321
    .local v13, "pair":[Ljava/lang/String;
    array-length v7, v13
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5

    move-object/from16 v16, v2

    .end local v2    # "path":Ljava/lang/String;
    .local v16, "path":Ljava/lang/String;
    const-string v2, ","

    move-object/from16 v17, v3

    const/4 v3, 0x1

    .end local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .local v17, "cache":Lmiui/drm/DrmManager$RightObjectCache;
    if-ne v7, v3, :cond_2

    .line 322
    :try_start_2
    iget-object v3, v4, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    move-object/from16 v18, v5

    const/4 v7, 0x0

    .end local v5    # "assetList":Lorg/w3c/dom/NodeList;
    .local v18, "assetList":Lorg/w3c/dom/NodeList;
    aget-object v5, v13, v7

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v5, 0x1

    goto :goto_1

    .line 323
    .end local v18    # "assetList":Lorg/w3c/dom/NodeList;
    .restart local v5    # "assetList":Lorg/w3c/dom/NodeList;
    :cond_2
    move-object/from16 v18, v5

    .end local v5    # "assetList":Lorg/w3c/dom/NodeList;
    .restart local v18    # "assetList":Lorg/w3c/dom/NodeList;
    array-length v3, v13

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 324
    iget-object v3, v4, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    const/4 v5, 0x0

    aget-object v7, v13, v5

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v3, v4, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    const/4 v5, 0x1

    aget-object v7, v13, v5

    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 323
    :cond_3
    const/4 v5, 0x1

    .line 318
    .end local v13    # "pair":[Ljava/lang/String;
    .end local v15    # "content":Ljava/lang/String;
    :goto_1
    add-int/lit8 v14, v14, 0x1

    move v7, v5

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v5, v18

    const/4 v13, 0x0

    goto :goto_0

    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .end local v18    # "assetList":Lorg/w3c/dom/NodeList;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .restart local v5    # "assetList":Lorg/w3c/dom/NodeList;
    :cond_4
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move v5, v7

    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .end local v5    # "assetList":Lorg/w3c/dom/NodeList;
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .restart local v18    # "assetList":Lorg/w3c/dom/NodeList;
    goto :goto_2

    .line 317
    .end local v14    # "i":I
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .end local v18    # "assetList":Lorg/w3c/dom/NodeList;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .restart local v5    # "assetList":Lorg/w3c/dom/NodeList;
    :cond_5
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move v5, v7

    .line 329
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .end local v5    # "assetList":Lorg/w3c/dom/NodeList;
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .restart local v18    # "assetList":Lorg/w3c/dom/NodeList;
    :goto_2
    const-string v2, "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/oma-dd:individual/o-ex:context/o-dd:uid"

    sget-object v3, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v12, v2, v10, v3}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/NodeList;

    .line 330
    .local v2, "individualList":Lorg/w3c/dom/NodeList;
    if-eqz v2, :cond_8

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_8

    .line 331
    const/4 v3, 0x0

    move v7, v3

    .local v7, "i":I
    :goto_3
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v7, v3, :cond_8

    .line 332
    invoke-interface {v2, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, "content":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 334
    iget-object v13, v4, Lmiui/drm/DrmManager$RightObject;->imeis:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 335
    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 336
    iget-object v13, v4, Lmiui/drm/DrmManager$RightObject;->users:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    .end local v3    # "content":Ljava/lang/String;
    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 340
    .end local v7    # "i":I
    :cond_8
    const-string v0, "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:start"

    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v12, v0, v10, v1}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 341
    .local v0, "timeStartList":Lorg/w3c/dom/NodeList;
    if-eqz v0, :cond_9

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_9

    .line 342
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "content":Ljava/lang/String;
    invoke-static {v1}, Lmiui/drm/DrmManager;->getTime(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v4, Lmiui/drm/DrmManager$RightObject;->startTime:J

    .line 345
    .end local v1    # "content":Ljava/lang/String;
    :cond_9
    const-string v1, "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:end"

    sget-object v3, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v12, v1, v10, v3}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/NodeList;

    .line 346
    .local v1, "timeEndList":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_a

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_a

    .line 347
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 348
    .restart local v3    # "content":Ljava/lang/String;
    invoke-static {v3}, Lmiui/drm/DrmManager;->getTime(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v4, Lmiui/drm/DrmManager$RightObject;->endTime:J

    .line 350
    .end local v3    # "content":Ljava/lang/String;
    :cond_a
    const-string v3, "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:display/o-ex:constraint/o-dd:count"

    sget-object v7, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v12, v3, v10, v7}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/NodeList;

    .line 351
    .local v3, "displayCountList":Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_c

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lez v7, :cond_c

    .line 352
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    invoke-interface {v13}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 353
    .local v13, "content":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lez v14, :cond_b

    goto :goto_5

    :cond_b
    move v5, v7

    :goto_5
    iput-boolean v5, v4, Lmiui/drm/DrmManager$RightObject;->adSupport:Z
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_10

    .line 363
    .end local v0    # "timeStartList":Lorg/w3c/dom/NodeList;
    .end local v1    # "timeEndList":Lorg/w3c/dom/NodeList;
    .end local v2    # "individualList":Lorg/w3c/dom/NodeList;
    .end local v3    # "displayCountList":Lorg/w3c/dom/NodeList;
    .end local v6    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v10    # "document":Lorg/w3c/dom/Document;
    .end local v11    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    .end local v12    # "xPath":Ljavax/xml/xpath/XPath;
    .end local v13    # "content":Ljava/lang/String;
    .end local v18    # "assetList":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v0

    goto :goto_7

    .line 361
    :catch_1
    move-exception v0

    goto :goto_9

    .line 359
    :catch_2
    move-exception v0

    goto :goto_b

    .line 357
    :catch_3
    move-exception v0

    goto :goto_d

    .line 355
    :catch_4
    move-exception v0

    goto :goto_f

    .line 363
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .local v2, "path":Ljava/lang/String;
    .local v3, "cache":Lmiui/drm/DrmManager$RightObjectCache;
    :catch_5
    move-exception v0

    goto :goto_6

    .line 361
    :catch_6
    move-exception v0

    goto :goto_8

    .line 359
    :catch_7
    move-exception v0

    goto :goto_a

    .line 357
    :catch_8
    move-exception v0

    goto :goto_c

    .line 355
    :catch_9
    move-exception v0

    goto :goto_e

    .line 363
    :catch_a
    move-exception v0

    move-object/from16 v9, p0

    :goto_6
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 364
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    :goto_7
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_11

    .line 361
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    :catch_b
    move-exception v0

    move-object/from16 v9, p0

    :goto_8
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 362
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .local v0, "e":Ljavax/xml/xpath/XPathExpressionException;
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    :goto_9
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .end local v0    # "e":Ljavax/xml/xpath/XPathExpressionException;
    goto :goto_10

    .line 359
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    :catch_c
    move-exception v0

    move-object/from16 v9, p0

    :goto_a
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 360
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    :goto_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_10

    .line 357
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    :catch_d
    move-exception v0

    move-object/from16 v9, p0

    :goto_c
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 358
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .local v0, "e":Lorg/xml/sax/SAXException;
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    :goto_d
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .end local v0    # "e":Lorg/xml/sax/SAXException;
    goto :goto_10

    .line 355
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    :catch_e
    move-exception v0

    move-object/from16 v9, p0

    :goto_e
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 356
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    :goto_f
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 365
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_c
    :goto_10
    nop

    .line 366
    :goto_11
    return-object v4
.end method

.method public static setSupportAd(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "support"    # Z

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "support_ad"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    return-void
.end method
