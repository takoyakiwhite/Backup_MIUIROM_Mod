.class public Lcom/miui/server/SecurityManagerService;
.super Lmiui/security/ISecurityManager$Stub;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/SecurityManagerService$PackageSetting;,
        Lcom/miui/server/SecurityManagerService$SettingsObserver;,
        Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;,
        Lcom/miui/server/SecurityManagerService$MyPackageMonitor;,
        Lcom/miui/server/SecurityManagerService$AppItem;,
        Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;,
        Lcom/miui/server/SecurityManagerService$UserState;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "classname"

.field private static final CLASS_NAMES:Ljava/lang/String; = "classnames"

.field private static final DEBUG:Z = false

.field public static final INSTALL_FULL_APP:I = 0x4000

.field public static final INSTALL_REASON_USER:I = 0x4

.field private static final LEADCORE:Ljava/lang/String; = "leadcore"

.field public static final LOCK_TIME_OUT:J = 0xea60L

.field private static final MSG_SHOW_DIALOG:I = 0x1

.field private static final MTK:Ljava/lang/String; = "mediatek"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PACKAGE_SECURITYCENTER:Ljava/lang/String; = "com.miui.securitycenter"

.field private static final REMVOE_AC_PACKAGE:I = 0x4

.field private static final RTC_POWEROFF_WAKEUP_MTK:I = 0x8

.field private static final SYS_APP_CRACKED:I = 0x1

.field private static final SYS_APP_NOT_CRACKED:I = 0x0

.field private static final SYS_APP_UNINIT:I = -0x1

.field static final TAG:Ljava/lang/String; = "SecurityManagerService"

.field private static final TIME:Ljava/lang/String; = "time"

.field private static final UPDATE_VERSION:Ljava/lang/String; = "1.0"

.field private static final WAKEALARM_PATH_OF_LEADCORE:Ljava/lang/String; = "/sys/comip/rtc_alarm"

.field private static final WAKEALARM_PATH_OF_QCOM:Ljava/lang/String; = "/sys/class/rtc/rtc0/wakealarm"

.field private static final WRITE_BOOTTIME_DELAY:I = 0x3e8

.field private static final WRITE_BOOT_TIME:I = 0x3

.field private static final WRITE_SETTINGS:I = 0x1

.field private static final WRITE_SETTINGS_DELAY:I = 0x3e8

.field private static final WRITE_WAKE_UP_TIME:I = 0x2

.field private static mAppRunningControlService:Lcom/miui/server/AppRunningControlService;


# instance fields
.field private mAccessController:Lcom/miui/server/AccessController;

.field private mAom:Landroid/app/AppOpsManager;

.field private mAppRunningControlBinder:Landroid/os/IBinder;

.field private mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

.field private mContext:Landroid/content/Context;

.field private mDialogFlag:Z

.field private mFingerprintNotify:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mIncompatibleAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUpdated:Z

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mRegistrantLock:Ljava/lang/Object;

.field private mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

.field private mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

.field private mSettingsFile:Lcom/android/internal/os/AtomicFile;

.field private mSettingsObserver:Lcom/miui/server/SecurityManagerService$SettingsObserver;

.field private mSysAppCracked:I

.field private mUserManager:Lcom/android/server/pm/UserManagerService;

.field private mUserStateLock:Ljava/lang/Object;

.field final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/miui/server/SecurityManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeTime:J

.field private mWakeUpFile:Lcom/android/internal/os/AtomicFile;

.field private mWakeUpTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private sGoogleBaseService:Lmiui/security/ISecurityCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 378
    const-string v0, "miui_security"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onlyCore"    # Z

    .line 381
    invoke-direct {p0}, Lmiui/security/ISecurityManager$Stub;-><init>()V

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/server/SecurityManagerService;->mDialogFlag:Z

    .line 162
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 172
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserStateLock:Ljava/lang/Object;

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    .line 175
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mRegistrantLock:Ljava/lang/Object;

    .line 177
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    .line 250
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/server/SecurityManagerService;->mSysAppCracked:I

    .line 382
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    .line 383
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 384
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 385
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "system"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 386
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Lcom/android/internal/os/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string v4, "miui-packages.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    .line 388
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SecurityWriteHandlerThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 389
    .local v2, "securityWriteHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 390
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 391
    .local v3, "looper":Landroid/os/Looper;
    new-instance v4, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-direct {v4, p0, v3}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;-><init>(Lcom/miui/server/SecurityManagerService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    .line 392
    new-instance v4, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;

    invoke-direct {v4, p0}, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;-><init>(Lcom/miui/server/SecurityManagerService;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 393
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v6}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 394
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->readSettings()V

    .line 396
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->updateXSpaceSettings()V

    .line 398
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->initForKK()V

    .line 400
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/miui/server/SecurityManagerService;->mWakeTime:J

    .line 401
    new-instance v4, Lcom/android/internal/os/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "miui-wakeuptime.xml"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    .line 402
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->readWakeUpTime()V

    .line 405
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->checkSystemSelfProtection(Z)V

    .line 406
    new-instance v4, Lcom/miui/server/AccessController;

    invoke-direct {v4, p1, v3}, Lcom/miui/server/AccessController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    .line 408
    new-instance v4, Lcom/miui/server/SecurityManagerService$SettingsObserver;

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-direct {v4, p0, v5, p1}, Lcom/miui/server/SecurityManagerService$SettingsObserver;-><init>(Lcom/miui/server/SecurityManagerService;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mSettingsObserver:Lcom/miui/server/SecurityManagerService$SettingsObserver;

    .line 409
    monitor-enter p0

    .line 410
    :try_start_0
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 411
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 412
    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-eq v0, v4, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-ne v0, v4, :cond_2

    :cond_0
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 414
    const-string v4, "hennessy"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 415
    const-string v4, "kenzo"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 416
    const-string v4, "ido"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 417
    const-string v4, "aqua"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/server/SecurityManagerService;->mFingerprintNotify:Z

    .line 420
    :cond_2
    new-instance v0, Lcom/miui/server/AppRunningControlService;

    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/miui/server/AppRunningControlService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/server/SecurityManagerService;->mAppRunningControlService:Lcom/miui/server/AppRunningControlService;

    .line 421
    sget-object v0, Lcom/miui/server/SecurityManagerService;->mAppRunningControlService:Lcom/miui/server/AppRunningControlService;

    invoke-virtual {v0}, Lcom/miui/server/AppRunningControlService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAppRunningControlBinder:Landroid/os/IBinder;

    .line 422
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lmiui/security/WakePathChecker;->init(Landroid/content/Context;)V

    .line 425
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/RestrictAppNetManager;->init(Landroid/content/Context;)V

    .line 428
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/miui/server/AccessController;->updatePasswordTypeForPattern(I)V

    .line 430
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/InputMethodHelper;->init(Landroid/content/Context;)V

    .line 431
    return-void

    .line 412
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static Libcore_Os_getFileLastStatusChangedTime(Ljava/lang/String;)J
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .line 1858
    :try_start_0
    const-string v0, "libcore.io.Libcore"

    const-string v1, "os"

    const-string v2, "Llibcore/io/Os;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    .line 1859
    .local v0, "field":Lmiui/reflect/Field;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1861
    .local v2, "o":Ljava/lang/Object;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x14

    const-string v5, "lstat"

    if-le v3, v4, :cond_0

    .line 1862
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "(Ljava/lang/String;)Landroid/system/StructStat;"

    invoke-static {v3, v5, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    .local v3, "method":Lmiui/reflect/Method;
    goto :goto_0

    .line 1864
    .end local v3    # "method":Lmiui/reflect/Method;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "(Ljava/lang/String;)Llibcore/io/StructStat;"

    invoke-static {v3, v5, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    .line 1866
    .restart local v3    # "method":Lmiui/reflect/Method;
    :goto_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v3, v1, v2, v4}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1867
    .end local v2    # "o":Ljava/lang/Object;
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "st_ctime"

    const-string v5, "J"

    invoke-static {v2, v4, v5}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v2

    move-object v0, v2

    .line 1868
    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    return-wide v4

    .line 1869
    .end local v0    # "field":Lmiui/reflect/Field;
    .end local v1    # "o":Ljava/lang/Object;
    .end local v3    # "method":Lmiui/reflect/Method;
    :catch_0
    move-exception v0

    .line 1870
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileChangeTime fail :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecurityManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    .end local v0    # "e":Ljava/lang/Exception;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method static synthetic access$000(Lcom/miui/server/SecurityManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .line 105
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/server/SecurityManagerService;)Lcom/android/internal/os/AtomicFile;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .line 105
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 105
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessMiuiOptUri(Lcom/miui/server/SecurityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/server/SecurityManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .line 105
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->nativeIsReleased()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # [Landroid/content/pm/Signature;

    .line 105
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->enforcePlatformSignature([Landroid/content/pm/Signature;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/server/SecurityManagerService;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageManager;
    .param p2, "x2"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->checkEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # [Landroid/content/pm/Signature;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecurityManagerService;->enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/server/SecurityManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .line 105
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->isOldmanMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1702(Lcom/miui/server/SecurityManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # I

    .line 105
    iput p1, p0, Lcom/miui/server/SecurityManagerService;->mSysAppCracked:I

    return p1
.end method

.method static synthetic access$1800(Lcom/miui/server/SecurityManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .line 105
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkSysAppCrack()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/server/SecurityManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .line 105
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->writeSettings()V

    return-void
.end method

.method static synthetic access$2102(Lcom/miui/server/SecurityManagerService;Lmiui/security/ISecurityCallback;)Lmiui/security/ISecurityCallback;
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # Lmiui/security/ISecurityCallback;

    .line 105
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService;->sGoogleBaseService:Lmiui/security/ISecurityCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/server/SecurityManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .line 105
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/server/SecurityManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .line 105
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->writeWakeUpTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/server/SecurityManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .line 105
    iget-wide v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/miui/server/SecurityManagerService;I)Lcom/miui/server/SecurityManagerService$UserState;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # I

    .line 105
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 105
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 105
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlLockModeLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 105
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlLockConvenientLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    return-void
.end method

.method private allowSaveIconCache()Z
    .locals 2

    .line 1828
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1829
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2649

    if-eq v0, v1, :cond_0

    .line 1830
    invoke-static {}, Lcom/miui/server/SecurityManagerService;->canSaveExternalIconCache()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1828
    :goto_0
    return v0
.end method

.method public static varargs callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 532
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 533
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 534
    .local v1, "declaredMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 535
    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private static canSaveExternalIconCache()Z
    .locals 6

    .line 1850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "miui_version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/server/SecurityManagerService;->Libcore_Os_getFileLastStatusChangedTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 1852
    .local v0, "iconModifiedTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private changeUserState(Lcom/miui/server/SecurityManagerService$UserState;)Lcom/miui/server/SecurityManagerService$UserState;
    .locals 2
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 1768
    iget v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    .line 1769
    .local v0, "useId":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    return-object v1
.end method

.method private checkAccessControlPassLocked(Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 898
    invoke-direct {p0, p3}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 900
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    .line 901
    .local v1, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 902
    return v3

    .line 905
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockMode(Lcom/miui/server/SecurityManagerService$UserState;)I

    move-result v2

    .line 907
    .local v2, "lockMode":I
    iget-object v4, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 908
    .local v4, "pass":Z
    if-eqz v4, :cond_3

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 909
    iget-object v5, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 910
    .local v5, "lastTime":Ljava/lang/Long;
    if-eqz v5, :cond_1

    .line 911
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 912
    .local v6, "realtime":J
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v6, v8

    const-wide/32 v10, 0xea60

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 913
    const/4 v4, 0x0

    .line 916
    .end local v6    # "realtime":J
    :cond_1
    if-eqz v4, :cond_3

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.systemui"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 917
    :cond_2
    iget-object v6, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    .end local v5    # "lastTime":Ljava/lang/Long;
    :cond_3
    if-nez v4, :cond_4

    if-ne v2, v3, :cond_4

    .line 922
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockConvenient(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 923
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->isPackageAccessControlPass(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 924
    const/4 v4, 0x1

    .line 927
    :cond_4
    if-nez v4, :cond_5

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lcom/miui/server/AccessController;->skipActivity(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 928
    const/4 v4, 0x1

    .line 930
    :cond_5
    if-nez v4, :cond_6

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v5, v3, p1, p2}, Lcom/miui/server/AccessController;->filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 931
    const/4 v4, 0x1

    .line 933
    :cond_6
    return v4
.end method

.method private checkAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)Z
    .locals 10

    const/4 v0, 0x1

    return v0
.end method

.method private checkEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 737
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-static {p1, p2, v0}, Lmiui/security/SecurityManagerCompat;->checkAppHidden(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 739
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    .local v0, "state":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 746
    .end local v0    # "state":I
    :cond_0
    nop

    .line 747
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 748
    return-void

    .line 741
    .restart local v0    # "state":I
    :cond_1
    :goto_0
    return-void

    .line 743
    .end local v0    # "state":I
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecurityManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    return-void
.end method

.method private checkPermission()V
    .locals 4

    .line 1419
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 1421
    .local v0, "permission":I
    if-nez v0, :cond_0

    return-void

    .line 1422
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: attempt to change application state from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkPermissionByUid(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 1610
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1611
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1614
    return-void

    .line 1612
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no permission to read file for UID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkSysAppCrack()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method private checkSystemSelfProtection(Z)V
    .locals 1

    return-void
.end method

.method private checkWakePathPermission()V
    .locals 5

    .line 1619
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    .line 1620
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1619
    const-string v3, "android.permission.UPDATE_APP_OPS_STATS"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1621
    return-void
.end method

.method private checkWriteSecurePermission()V
    .locals 3

    .line 2016
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: attempt to change application privacy revoke state from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2017
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2016
    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    return-void
.end method

.method private clearPassPackages(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 1773
    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportXSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3e7

    if-eqz p1, :cond_0

    if-ne v0, p1, :cond_1

    .line 1774
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    .line 1775
    .local v1, "userStateOwner":Lcom/miui/server/SecurityManagerService$UserState;
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 1776
    .local v0, "userStateXSpace":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    .line 1777
    .local v2, "passPackagesOwner":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    .line 1778
    .local v3, "passPackagesXSpace":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 1779
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 1780
    .end local v0    # "userStateXSpace":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v1    # "userStateOwner":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v2    # "passPackagesOwner":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "passPackagesXSpace":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_0

    .line 1781
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    .line 1782
    .local v0, "passPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1784
    .end local v0    # "passPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    return-void
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 7
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .line 563
    const/4 v0, -0x3

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 566
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 567
    .local v1, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p0, v4

    .line 568
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 567
    .end local v5    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 570
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 571
    .local v2, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v4, p1

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, p1, v5

    .line 572
    .local v6, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 571
    .end local v6    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 575
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 576
    return v3

    .line 578
    :cond_3
    return v0

    .line 564
    .end local v1    # "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v2    # "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :cond_4
    :goto_2
    return v0
.end method

.method private enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "validSignatures"    # [Landroid/content/pm/Signature;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "checkEnabled"    # Z

    .line 583
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecurityManagerService;->checkAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    return-void

    .line 584
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System error: connot find system app : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforcePlatformSignature([Landroid/content/pm/Signature;)V
    .locals 5
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    .line 727
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "3082046c30820354a003020102020900e552a8ecb9011b7c300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323632365a170d3339303432333033323632365a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c786568a9aff253ad74c5d3e6fbffa12fed44cd3244f18960ec5511bb551e413115197234845112cc3df9bbacd3e0f4b3528cd87ed397d577dc9008e9cbc6a25fc0664d3a3f440243786db8b250d40f6f148c9a3cd6fbc2dd8d24039bd6a8972a1bdee28c308798bfa9bb3b549877b10f98e265f118c05f264537d95e29339157b9d2a31485e0c823521cca6d0b721a8432600076d669e20ac43aa588b52c11c2a51f04c6bb31ad6ae8573991afe8e4957d549591fcb83ec62d1da35b1727dc6b63001a5ef387b5a7186c1e68da1325772b5307b1bc739ef236b9efe06d52dcaf1e32768e3403e55e3ec56028cf5680cfb33971ccf7870572bc47d3e3affa385020103a381e83081e5301d0603551d0e0416041491ae2f8c72e305f92aa9f7452e2a3160b841a15c3081b50603551d230481ad3081aa801491ae2f8c72e305f92aa9f7452e2a3160b841a15ca18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d820900e552a8ecb9011b7c300c0603551d13040530030101ff300d06092a864886f70d010105050003820101003b3a699ceb497300f2ab86cbd41c513440bf60aa5c43984eb1da140ef30544d9fbbb3733df24b26f2703d7ffc645bf598a5e6023596a947e91731542f2c269d0816a69c92df9bfe8b1c9bc3c54c46c12355bb4629fe6020ca9d15f8d6155dc5586f5616db806ecea2d06bd83e32b5f13f5a04fe3e5aa514f05df3d555526c63d3d62acf00adee894b923c2698dc571bc52c756ffa7a2221d834d10cb7175c864c30872fe217c31442dff0040a67a2fb1c8ba63eac2d5ba3d8e76b4ff2a49b0db8a33ef4ae0dd0a840dd2a8714cb5531a56b786819ec9eb1051d91b23fde06bd9d0708f150c4f9efe6a416ca4a5e0c23a952af931ad3579fb4a8b19de98f64bd9"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 728
    .local v0, "platformSig":Landroid/content/pm/Signature;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 729
    .local v3, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 730
    return-void

    .line 728
    .end local v3    # "sig":Landroid/content/pm/Signature;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 733
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "System error: My heart is broken"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)Z
    .locals 2
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 539
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->changeUserState(Lcom/miui/server/SecurityManagerService$UserState;)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 540
    .local v0, "transferUserState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlSettingInit:Z

    if-nez v1, :cond_0

    .line 541
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 543
    :cond_0
    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlEnabled:Z

    return v1
.end method

.method private getAccessControlLockConvenient(Lcom/miui/server/SecurityManagerService$UserState;)Z
    .locals 2
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 555
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->changeUserState(Lcom/miui/server/SecurityManagerService$UserState;)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 556
    .local v0, "transferUserState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlSettingInit:Z

    if-nez v1, :cond_0

    .line 557
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 559
    :cond_0
    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockConvenient:Z

    return v1
.end method

.method private getAccessControlLockMode(Lcom/miui/server/SecurityManagerService$UserState;)I
    .locals 2
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 547
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->changeUserState(Lcom/miui/server/SecurityManagerService$UserState;)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 548
    .local v0, "transferUserState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlSettingInit:Z

    if-nez v1, :cond_0

    .line 549
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 551
    :cond_0
    iget v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockMode:I

    return v1
.end method

.method public static getAppRunningControlService()Lcom/miui/server/AppRunningControlService;
    .locals 1

    .line 2087
    sget-object v0, Lcom/miui/server/SecurityManagerService;->mAppRunningControlService:Lcom/miui/server/AppRunningControlService;

    return-object v0
.end method

.method private getApplicationAccessControlEnabledLocked(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 945
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 947
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :try_start_0
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    .line 948
    .local v1, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 949
    .end local v1    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    :catch_0
    move-exception v1

    .line 950
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return v2
.end method

.method private getApplicationMaskNotificationEnabledLocked(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 955
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 957
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :try_start_0
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    .line 958
    .local v1, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->maskNotification:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 959
    .end local v1    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    :catch_0
    move-exception v1

    .line 960
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return v2
.end method

.method private declared-synchronized getBootTimeFromMap(Ljava/lang/String;)J
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;

    monitor-enter p0

    .line 1550
    :try_start_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local p0    # "this":Lcom/miui/server/SecurityManagerService;
    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    monitor-exit p0

    return-wide v0

    .end local p1    # "componentName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;
    .locals 2
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/server/SecurityManagerService$PackageSetting;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/server/SecurityManagerService$PackageSetting;"
        }
    .end annotation

    .line 1289
    .local p1, "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/server/SecurityManagerService$PackageSetting;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SecurityManagerService$PackageSetting;

    .line 1290
    .local v0, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    if-nez v0, :cond_0

    .line 1291
    new-instance v1, Lcom/miui/server/SecurityManagerService$PackageSetting;

    invoke-direct {v1, p0, p2}, Lcom/miui/server/SecurityManagerService$PackageSetting;-><init>(Lcom/miui/server/SecurityManagerService;Ljava/lang/String;)V

    move-object v0, v1

    .line 1292
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    :cond_0
    return-object v0
.end method

.method private getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;
    .locals 3
    .param p1, "userHandle"    # I

    .line 434
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SecurityManagerService$UserState;

    .line 435
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    if-nez v0, :cond_0

    .line 436
    new-instance v1, Lcom/miui/server/SecurityManagerService$UserState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/server/SecurityManagerService$UserState;-><init>(Lcom/miui/server/SecurityManagerService$1;)V

    .line 437
    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .local v1, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iput p1, v1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    .line 438
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mUserStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 440
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 442
    .end local v1    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .restart local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :cond_0
    :goto_0
    return-object v0
.end method

.method private getUserStateOrNullUnLocked(I)Lcom/miui/server/SecurityManagerService$UserState;
    .locals 2
    .param p1, "userHandle"    # I

    .line 452
    invoke-static {p1}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p1

    .line 453
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mUserStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/server/SecurityManagerService$UserState;

    monitor-exit v0

    return-object v1

    .line 455
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 1
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 462
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 463
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlLockModeLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 464
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlLockConvenientLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlSettingInit:Z

    .line 466
    return-void
.end method

.method private initForKK()V
    .locals 3

    .line 751
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 752
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAom:Landroid/app/AppOpsManager;

    .line 753
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SecurityManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 754
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 755
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandler:Landroid/os/Handler;

    .line 756
    new-instance v0, Lcom/miui/server/SecuritySmsHandler;

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/miui/server/SecuritySmsHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    .line 758
    :cond_0
    return-void
.end method

.method private isOldmanMode()Z
    .locals 2

    .line 686
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isPackageAccessControlPass(Lcom/miui/server/SecurityManagerService$UserState;)Z
    .locals 6
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 1758
    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportXSpace()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    const/16 v3, 0x3e7

    if-eq v0, v3, :cond_0

    iget v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    if-nez v0, :cond_2

    .line 1759
    :cond_0
    invoke-direct {p0, v2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 1760
    .local v0, "userStateOwner":Lcom/miui/server/SecurityManagerService$UserState;
    invoke-direct {p0, v3}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v3

    .line 1761
    .local v3, "userStateXSpace":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v4, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    iget-object v5, v3, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    add-int/2addr v4, v5

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 1763
    .end local v0    # "userStateOwner":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v3    # "userStateXSpace":Lcom/miui/server/SecurityManagerService$UserState;
    :cond_2
    iget-object v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method private isSystemApp()Z
    .locals 7

    .line 1835
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1836
    .local v1, "uid":I
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1837
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    .line 1838
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1839
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 1840
    return v6

    .line 1842
    :cond_0
    return v0

    .line 1844
    .end local v1    # "uid":I
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1845
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private minWakeUpTime(J)V
    .locals 10
    .param p1, "nowtime"    # J

    .line 1446
    const-wide/16 v0, 0x0

    .line 1447
    .local v0, "min":J
    const-wide/16 v2, 0x12c

    add-long/2addr v2, p1

    .line 1448
    .local v2, "rightBorder":J
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1449
    .local v5, "componentName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v6

    .line 1452
    .local v6, "tmp":J
    cmp-long v8, v6, p1

    if-ltz v8, :cond_2

    cmp-long v8, v6, v0

    if-ltz v8, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-nez v8, :cond_2

    .line 1453
    :cond_0
    cmp-long v8, v6, v2

    if-ltz v8, :cond_1

    move-wide v8, v6

    goto :goto_1

    :cond_1
    move-wide v8, v2

    :goto_1
    move-wide v0, v8

    .line 1455
    .end local v5    # "componentName":Ljava/lang/String;
    .end local v6    # "tmp":J
    :cond_2
    goto :goto_0

    .line 1456
    :cond_3
    iput-wide v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeTime:J

    .line 1457
    return-void
.end method

.method private moveIconInner(Ljava/lang/String;)Z
    .locals 4
    .param p1, "srcIconPath"    # Ljava/lang/String;

    .line 1812
    const/4 v0, 0x0

    .line 1813
    .local v0, "ret":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1814
    invoke-static {p1}, Lmiui/os/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1815
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lmiui/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1816
    .local v2, "destPath":Ljava/lang/String;
    invoke-static {p1, v2}, Lmiui/content/res/ThemeNativeUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1818
    if-eqz v0, :cond_0

    .line 1819
    invoke-static {v2}, Lmiui/content/res/ThemeNativeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    move-result v0

    .line 1821
    :cond_0
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/content/res/IconCustomizer;->ensureMiuiVersionFlagExist(Landroid/content/Context;)V

    .line 1822
    invoke-static {p1}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    .line 1824
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "destPath":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method private native nativeIsReleased()Z
.end method

.method private native nativeKillPackageProcesses(ILjava/lang/String;)V
.end method

.method private declared-synchronized putBootTimeToMap(Ljava/lang/String;J)V
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "time"    # J

    monitor-enter p0

    .line 1546
    :try_start_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1547
    monitor-exit p0

    return-void

    .line 1545
    .end local p0    # "this":Lcom/miui/server/SecurityManagerService;
    .end local p1    # "componentName":Ljava/lang/String;
    .end local p2    # "time":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private readPackagesSettings(Ljava/io/FileInputStream;)V
    .locals 13
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1324
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 1325
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1327
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1328
    .local v2, "eventType":I
    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    .line 1329
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 1332
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1333
    .local v5, "tagName":Ljava/lang/String;
    const-string v6, "packages"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1334
    const-string v6, "updateVersion"

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1335
    .local v6, "updateVersion":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "1.0"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1336
    iput-boolean v3, p0, Lcom/miui/server/SecurityManagerService;->mIsUpdated:Z

    .line 1338
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1340
    :cond_2
    if-ne v2, v4, :cond_4

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ne v7, v4, :cond_4

    .line 1341
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1342
    const-string v7, "package"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1343
    const-string v7, "name"

    invoke-interface {v0, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1344
    .local v7, "name":Ljava/lang/String;
    new-instance v8, Lcom/miui/server/SecurityManagerService$PackageSetting;

    invoke-direct {v8, p0, v7}, Lcom/miui/server/SecurityManagerService$PackageSetting;-><init>(Lcom/miui/server/SecurityManagerService;Ljava/lang/String;)V

    .line 1345
    .local v8, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    const/4 v9, 0x0

    .line 1346
    .local v9, "userHandle":I
    const-string v10, "u"

    invoke-interface {v0, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1347
    .local v10, "userHandleStr":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1348
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1350
    :cond_3
    const-string v11, "accessControl"

    invoke-interface {v0, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v8, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    .line 1351
    const-string v11, "childrenControl"

    invoke-interface {v0, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v8, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    .line 1352
    const-string v11, "maskNotification"

    invoke-interface {v0, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v8, Lcom/miui/server/SecurityManagerService$PackageSetting;->maskNotification:Z

    .line 1353
    const-string v11, "isPrivacyApp"

    invoke-interface {v0, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v8, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z

    .line 1355
    monitor-enter p0

    .line 1356
    :try_start_0
    invoke-direct {p0, v9}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v11

    .line 1357
    .local v11, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v12, v11, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v12, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    nop

    .end local v11    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1361
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    .end local v9    # "userHandle":I
    .end local v10    # "userHandleStr":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1362
    if-ne v2, v3, :cond_2

    .line 1364
    .end local v6    # "updateVersion":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private readSettings()V
    .locals 4

    .line 1303
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1304
    return-void

    .line 1307
    :cond_0
    const/4 v0, 0x0

    .line 1309
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v1}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    move-object v0, v1

    .line 1310
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->readPackagesSettings(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1314
    if-eqz v0, :cond_1

    .line 1316
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1318
    :goto_0
    goto :goto_1

    .line 1317
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1314
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1311
    :catch_1
    move-exception v1

    .line 1312
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "SecurityManagerService"

    const-string v3, "Error reading package settings"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1314
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 1316
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1321
    :cond_1
    :goto_1
    return-void

    .line 1314
    :goto_2
    if-eqz v0, :cond_2

    .line 1316
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1318
    goto :goto_3

    .line 1317
    :catch_2
    move-exception v2

    .line 1318
    :cond_2
    :goto_3
    throw v1
.end method

.method private readWakeUpTime()V
    .locals 3

    .line 1495
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1496
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1497
    return-void

    .line 1499
    :cond_0
    const/4 v0, 0x0

    .line 1501
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v1}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    move-object v0, v1

    .line 1502
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->readWakeUpTime(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1506
    if-eqz v0, :cond_1

    .line 1508
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1510
    :goto_0
    goto :goto_1

    .line 1509
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1506
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1503
    :catch_1
    move-exception v1

    .line 1504
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1506
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 1508
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1513
    :cond_1
    :goto_1
    return-void

    .line 1506
    :goto_2
    if-eqz v0, :cond_2

    .line 1508
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1510
    goto :goto_3

    .line 1509
    :catch_2
    move-exception v2

    .line 1510
    :cond_2
    :goto_3
    throw v1
.end method

.method private readWakeUpTime(Ljava/io/FileInputStream;)V
    .locals 9
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1516
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 1517
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1519
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1520
    .local v2, "eventType":I
    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    .line 1521
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 1523
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1524
    .local v5, "tagName":Ljava/lang/String;
    const-string v6, "classnames"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1525
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1527
    :cond_1
    if-ne v2, v4, :cond_2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v4, :cond_2

    .line 1528
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1529
    const-string v6, "classname"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1530
    const-string v6, "name"

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1531
    .local v6, "componentName":Ljava/lang/String;
    new-instance v7, Ljava/lang/Long;

    const-string v8, "time"

    invoke-interface {v0, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1532
    .local v7, "time":J
    invoke-direct {p0, v6, v7, v8}, Lcom/miui/server/SecurityManagerService;->putBootTimeToMap(Ljava/lang/String;J)V

    .line 1535
    .end local v6    # "componentName":Ljava/lang/String;
    .end local v7    # "time":J
    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1536
    if-ne v2, v3, :cond_1

    .line 1538
    :cond_3
    return-void
.end method

.method private removeAccessControlPassLocked(Lcom/miui/server/SecurityManagerService$UserState;Ljava/lang/String;)V
    .locals 1
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1056
    const-string v0, "*"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1058
    iget-object v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    goto :goto_0

    .line 1060
    :cond_0
    iget-object v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1062
    :goto_0
    return-void
.end method

.method private removePackage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1411
    monitor-enter p0

    .line 1412
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 1413
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    .line 1415
    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    monitor-exit p0

    .line 1416
    return-void

    .line 1415
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private saveIconInner(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .line 1798
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->allowSaveIconCache()Z

    move-result v0

    .line 1803
    .local v0, "allowSaveIcon":Z
    if-eqz v0, :cond_0

    .line 1804
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lmiui/content/res/ThemeRuntimeManager;->createTempIconFile(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    .line 1805
    .local v1, "path":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/miui/server/SecurityManagerService;->moveIconInner(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1807
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private scheduleWriteSettings()V
    .locals 4

    .line 1298
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1299
    :cond_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1300
    return-void
.end method

.method private setTimeBoot()V
    .locals 4

    .line 1460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 1461
    .local v0, "now_time":J
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    monitor-enter v2

    .line 1462
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/miui/server/SecurityManagerService;->minWakeUpTime(J)V

    .line 1463
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1464
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->sucheduleWriteBootTime()V

    .line 1465
    return-void

    .line 1463
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private sucheduleWriteBootTime()V
    .locals 2

    .line 1434
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1435
    :cond_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendEmptyMessage(I)Z

    .line 1436
    return-void
.end method

.method private sucheduleWriteWakeUpTime()V
    .locals 2

    .line 1429
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1430
    :cond_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendEmptyMessage(I)Z

    .line 1431
    return-void
.end method

.method private updateAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 4
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 469
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    const/4 v2, 0x0

    const-string v3, "access_control_lock_enabled"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlEnabled:Z

    .line 471
    return-void
.end method

.method private updateAccessControlLockConvenientLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 4
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 479
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    const/4 v2, 0x0

    const-string v3, "access_control_lock_convenient"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockConvenient:Z

    .line 481
    return-void
.end method

.method private updateAccessControlLockModeLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 4
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 474
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    const-string v2, "access_control_lock_mode"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockMode:I

    .line 476
    return-void
.end method

.method private updateAccessMiuiOptUri(Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 11
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 484
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_2

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1c

    const/16 v2, 0x4000

    const-string v3, "com.google.android.packageinstaller"

    const-string v4, "installExistingPackageAsUser"

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-le v0, v1, :cond_0

    .line 487
    const/4 v0, 0x5

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v1, v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v1, v6

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v1, v8

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v1, v5

    const-class v10, Ljava/util/List;

    aput-object v10, v1, v7

    .line 494
    .local v1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v10, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v9

    .line 496
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    const/4 v2, 0x0

    aput-object v2, v0, v7

    .line 494
    invoke-static {v10, v4, v1, v0}, Lcom/miui/server/SecurityManagerService;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    nop

    .end local v1    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_1

    .line 498
    new-array v0, v7, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v9

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v8

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    .line 504
    .local v0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v3, v10, v9

    .line 506
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v5

    .line 504
    invoke-static {v1, v4, v0, v10}, Lcom/miui/server/SecurityManagerService;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    nop

    .end local v0    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_0

    .line 508
    :cond_1
    new-array v0, v8, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v9

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    .line 512
    .restart local v0    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v3, v2, v9

    .line 514
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 512
    invoke-static {v1, v4, v0, v2}, Lcom/miui/server/SecurityManagerService;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 519
    .end local v0    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    goto :goto_1

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call installExistingPackageAsUser error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecurityManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->checkPkgInstallerOptMode(Lcom/android/server/pm/PackageManagerService;)V

    .line 523
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->checkGTSSpecAppOptMode(Lcom/android/server/pm/PackageManagerService;)V

    .line 524
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->revokeAllPermssions(Lcom/android/server/pm/PackageManagerService;)V

    .line 525
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 526
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantMiuiPackageInstallerPermssions(Lcom/android/server/pm/PackageManagerService;)V

    .line 528
    :cond_3
    return-void
.end method

.method private updateXSpaceSettings()V
    .locals 9

    .line 1737
    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportXSpace()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/server/SecurityManagerService;->mIsUpdated:Z

    if-nez v0, :cond_2

    .line 1738
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 1739
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    const/16 v1, 0x3e7

    invoke-direct {p0, v1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    .line 1740
    .local v1, "userStateXSpace":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v2, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 1741
    .local v2, "packagesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/server/SecurityManagerService$PackageSetting;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1742
    .local v4, "entrySet":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/server/SecurityManagerService$PackageSetting;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1743
    .local v5, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lmiui/securityspace/XSpaceUserHandle;->isAppInXSpace(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1744
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/server/SecurityManagerService$PackageSetting;

    .line 1745
    .local v6, "value":Lcom/miui/server/SecurityManagerService$PackageSetting;
    new-instance v7, Lcom/miui/server/SecurityManagerService$PackageSetting;

    invoke-direct {v7, p0, v5}, Lcom/miui/server/SecurityManagerService$PackageSetting;-><init>(Lcom/miui/server/SecurityManagerService;Ljava/lang/String;)V

    .line 1746
    .local v7, "psXSpace":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v8, v6, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    iput-boolean v8, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    .line 1747
    iget-boolean v8, v6, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    iput-boolean v8, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    .line 1748
    monitor-enter p0

    .line 1749
    :try_start_0
    iget-object v8, v1, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1752
    .end local v4    # "entrySet":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/server/SecurityManagerService$PackageSetting;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Lcom/miui/server/SecurityManagerService$PackageSetting;
    .end local v7    # "psXSpace":Lcom/miui/server/SecurityManagerService$PackageSetting;
    :cond_0
    :goto_1
    goto :goto_0

    .line 1753
    :cond_1
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    .line 1755
    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v1    # "userStateXSpace":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v2    # "packagesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/server/SecurityManagerService$PackageSetting;>;>;"
    :cond_2
    return-void
.end method

.method private writeSettings()V
    .locals 10

    .line 1367
    const/4 v0, 0x0

    .line 1369
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1370
    .local v1, "userStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/server/SecurityManagerService$UserState;>;"
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1371
    :try_start_1
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1372
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_0

    .line 1373
    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/server/SecurityManagerService$UserState;

    .line 1374
    .local v5, "state":Lcom/miui/server/SecurityManagerService$UserState;
    new-instance v6, Lcom/miui/server/SecurityManagerService$UserState;

    invoke-direct {v6, v4}, Lcom/miui/server/SecurityManagerService$UserState;-><init>(Lcom/miui/server/SecurityManagerService$1;)V

    move-object v4, v6

    .line 1375
    .local v4, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget v6, v5, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    iput v6, v4, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    .line 1376
    iget-object v6, v4, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    new-instance v7, Ljava/util/HashMap;

    iget-object v8, v5, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1377
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    nop

    .end local v4    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v5    # "state":Lcom/miui/server/SecurityManagerService$UserState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1379
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1380
    :try_start_2
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    .line 1381
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1382
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v3, "utf-8"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1383
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1384
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1385
    const-string v3, "packages"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1386
    const-string v3, "updateVersion"

    const-string v5, "1.0"

    invoke-interface {v2, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1387
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/server/SecurityManagerService$UserState;

    .line 1388
    .local v5, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v6, v5, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/server/SecurityManagerService$PackageSetting;

    .line 1389
    .local v7, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    const-string v8, "package"

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1390
    const-string v8, "name"

    iget-object v9, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-interface {v2, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1391
    const-string v8, "accessControl"

    iget-boolean v9, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1392
    const-string v8, "childrenControl"

    iget-boolean v9, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1393
    const-string v8, "maskNotification"

    iget-boolean v9, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->maskNotification:Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1394
    const-string v8, "isPrivacyApp"

    iget-boolean v9, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1395
    const-string v8, "u"

    iget v9, v5, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1396
    const-string v8, "package"

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1397
    nop

    .end local v7    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    goto :goto_2

    .line 1398
    .end local v5    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :cond_1
    goto :goto_1

    .line 1399
    :cond_2
    const-string v3, "packages"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1400
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1401
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3, v0}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1407
    .end local v1    # "userStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/server/SecurityManagerService$UserState;>;"
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_3

    .line 1379
    .restart local v1    # "userStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/server/SecurityManagerService$UserState;>;"
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/miui/server/SecurityManagerService;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1402
    .end local v1    # "userStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/server/SecurityManagerService$UserState;>;"
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/miui/server/SecurityManagerService;
    :catch_0
    move-exception v1

    .line 1403
    .local v1, "e1":Ljava/io/IOException;
    const-string v2, "SecurityManagerService"

    const-string v3, "Error writing package settings file"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1404
    if-eqz v0, :cond_3

    .line 1405
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1408
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_3
    :goto_3
    return-void
.end method

.method private writeWakeUpTime()V
    .locals 11

    .line 1468
    const-string v0, "classname"

    const-string v1, "classnames"

    const/4 v2, 0x0

    .line 1470
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 1471
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1472
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v4, "utf-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1473
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1474
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1475
    invoke-interface {v3, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1476
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1477
    .local v5, "componentName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 1479
    invoke-interface {v3, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1480
    const-string v7, "name"

    invoke-interface {v3, v6, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1481
    const-string v7, "time"

    invoke-direct {p0, v5}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1482
    invoke-interface {v3, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1477
    .end local v5    # "componentName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1484
    :cond_1
    invoke-interface {v3, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1485
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1486
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1491
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_1

    .line 1487
    :catch_0
    move-exception v0

    .line 1488
    .local v0, "e1":Ljava/io/IOException;
    if-eqz v2, :cond_2

    .line 1489
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1492
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public activityResume(Landroid/content/Intent;)I
    .locals 21
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1123
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x0

    if-nez v2, :cond_0

    .line 1124
    return v0

    .line 1127
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 1128
    .local v3, "componentName":Landroid/content/ComponentName;
    if-nez v3, :cond_1

    .line 1129
    return v0

    .line 1132
    :cond_1
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1133
    .local v4, "packageName":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 1134
    return v0

    .line 1137
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1138
    .local v5, "callingUid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1139
    .local v6, "userId":I
    monitor-enter p0

    .line 1140
    :try_start_0
    invoke-direct {v1, v6}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v7

    .line 1141
    .local v7, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    invoke-direct {v1, v7}, Lcom/miui/server/SecurityManagerService;->getAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v8

    .line 1143
    .local v8, "enabled":Z
    if-nez v8, :cond_3

    .line 1144
    monitor-exit p0

    return v0

    .line 1146
    :cond_3
    iget-object v9, v1, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v9, v4, v6}, Lcom/android/server/pm/PackageManagerServiceCompat;->getPackageUid(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)I

    move-result v9

    .line 1147
    .local v9, "packageUid":I
    if-eq v5, v9, :cond_4

    .line 1148
    monitor-exit p0

    return v0

    .line 1151
    :cond_4
    const/4 v0, 0x1

    .line 1152
    .local v0, "result":I
    invoke-direct {v1, v7}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockMode(Lcom/miui/server/SecurityManagerService$UserState;)I

    move-result v10

    .line 1154
    .local v10, "lockMode":I
    iget-object v11, v7, Lcom/miui/server/SecurityManagerService$UserState;->mLastResumePackage:Ljava/lang/String;

    .line 1155
    .local v11, "oldResumePackage":Ljava/lang/String;
    iput-object v4, v7, Lcom/miui/server/SecurityManagerService$UserState;->mLastResumePackage:Ljava/lang/String;

    .line 1156
    iget-object v12, v7, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    .line 1157
    .local v12, "passPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v13, 0x2

    if-ne v10, v13, :cond_5

    .line 1158
    if-eqz v11, :cond_5

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1159
    iget-object v14, v7, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v11, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    :cond_5
    iget-object v14, v7, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {v1, v14, v4}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v14

    .line 1163
    .local v14, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v15, v14, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    if-nez v15, :cond_7

    .line 1164
    if-nez v10, :cond_6

    .line 1165
    invoke-direct {v1, v6}, Lcom/miui/server/SecurityManagerService;->clearPassPackages(I)V

    .line 1167
    :cond_6
    monitor-exit p0

    return v0

    .line 1169
    :cond_7
    or-int/2addr v0, v13

    .line 1171
    invoke-virtual {v12, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1172
    if-ne v10, v13, :cond_9

    .line 1173
    iget-object v13, v7, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-virtual {v13, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 1174
    .local v13, "lastTime":Ljava/lang/Long;
    if-eqz v13, :cond_8

    .line 1175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 1176
    .local v15, "realtime":J
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sub-long v17, v15, v17

    const-wide/32 v19, 0xea60

    cmp-long v17, v17, v19

    if-gez v17, :cond_8

    .line 1177
    or-int/lit8 v0, v0, 0x4

    .line 1178
    monitor-exit p0

    return v0

    .line 1181
    .end local v15    # "realtime":J
    :cond_8
    invoke-virtual {v12, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1182
    nop

    .end local v13    # "lastTime":Ljava/lang/Long;
    goto :goto_0

    .line 1183
    :cond_9
    or-int/lit8 v0, v0, 0x4

    .line 1184
    if-nez v10, :cond_a

    .line 1185
    invoke-direct {v1, v6}, Lcom/miui/server/SecurityManagerService;->clearPassPackages(I)V

    .line 1186
    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1188
    :cond_a
    monitor-exit p0

    return v0

    .line 1192
    :cond_b
    :goto_0
    if-nez v10, :cond_c

    .line 1193
    invoke-direct {v1, v6}, Lcom/miui/server/SecurityManagerService;->clearPassPackages(I)V

    .line 1195
    :cond_c
    iget-object v13, v7, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlCanceled:Landroid/util/ArraySet;

    invoke-virtual {v13, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1196
    or-int/lit8 v0, v0, 0x8

    .line 1197
    monitor-exit p0

    return v0

    .line 1200
    :cond_d
    const/4 v13, 0x1

    if-ne v10, v13, :cond_e

    .line 1201
    invoke-direct {v1, v7}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockConvenient(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 1202
    invoke-direct {v1, v7}, Lcom/miui/server/SecurityManagerService;->isPackageAccessControlPass(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v15

    if-nez v15, :cond_f

    :cond_e
    iget-object v15, v1, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    .line 1203
    invoke-virtual {v15, v2, v4}, Lcom/miui/server/AccessController;->skipActivity(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_f

    iget-object v15, v1, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    .line 1204
    invoke-virtual {v15, v13, v4, v2}, Lcom/miui/server/AccessController;->filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 1205
    :cond_f
    or-int/lit8 v0, v0, 0x4

    .line 1208
    :cond_10
    monitor-exit p0

    return v0

    .line 1209
    .end local v0    # "result":I
    .end local v7    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v8    # "enabled":Z
    .end local v9    # "packageUid":I
    .end local v10    # "lockMode":I
    .end local v11    # "oldResumePackage":Ljava/lang/String;
    .end local v12    # "passPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v14    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addAccessControlPass(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 805
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 806
    .local v0, "callingUserId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/server/SecurityManagerService;->addAccessControlPassForUser(Ljava/lang/String;I)V

    .line 807
    return-void
.end method

.method public addAccessControlPassForUser(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 811
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 812
    monitor-enter p0

    .line 813
    :try_start_0
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 814
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockMode(Lcom/miui/server/SecurityManagerService$UserState;)I

    move-result v1

    .line 815
    .local v1, "lockMode":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 816
    iget-object v2, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    :cond_0
    iget-object v2, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 819
    nop

    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v1    # "lockMode":I
    monitor-exit p0

    .line 820
    return-void

    .line 819
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addMiuiFirewallSharedUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 1877
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    .line 1878
    invoke-static {}, Lcom/android/server/MiuiNetworkManagementService;->getInstance()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/MiuiNetworkManagementService;->addMiuiFirewallSharedUid(I)Z

    move-result v0

    return v0
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1970
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1971
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    if-nez v0, :cond_0

    .line 1972
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    .line 1974
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1976
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1978
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1976
    return v2

    .line 1978
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 831
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 832
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 833
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/server/SecurityManagerService;->checkAccessControlPassLocked(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v1

    monitor-exit p0

    return v1

    .line 834
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 839
    monitor-enter p0

    .line 840
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecurityManagerService;->checkAccessControlPassLocked(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 841
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "passwordType"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1073
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1074
    invoke-static {p3}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p3

    .line 1075
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/server/AccessController;->checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 4
    .param p1, "callerPkgName"    # Ljava/lang/String;
    .param p2, "calleePkgName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "userId"    # I

    .line 1674
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1675
    return v1

    .line 1679
    :cond_0
    monitor-enter p0

    .line 1680
    :try_start_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, v1, p2, p3}, Lcom/miui/server/AccessController;->filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    .line 1681
    .local v0, "ret":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1683
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    .line 1684
    invoke-static {v2, p2, v3}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1688
    :cond_1
    if-nez v0, :cond_2

    .line 1689
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p4}, Lmiui/security/WakePathChecker;->checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1691
    :cond_2
    return v0

    .line 1685
    :cond_3
    :goto_0
    return v1

    .line 1681
    .end local v0    # "ret":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public checkGameBoosterAntimsgPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 860
    monitor-enter p0

    .line 861
    :try_start_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/server/AccessController;->filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit p0

    return v1

    .line 862
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkSmsBlocked(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 790
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0, p1}, Lcom/miui/server/SecuritySmsHandler;->checkSmsBlocked(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump SecurityManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    return-void

    .line 191
    :cond_0
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiui/security/WakePathChecker;->dump(Ljava/io/PrintWriter;)V

    .line 192
    return-void
.end method

.method public finishAccessControl(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1107
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1108
    if-nez p1, :cond_0

    .line 1109
    return-void

    .line 1111
    :cond_0
    monitor-enter p0

    .line 1112
    :try_start_0
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 1113
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlCanceled:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1114
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1115
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 1116
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1117
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1118
    nop

    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit p0

    .line 1119
    return-void

    .line 1118
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAccessControlPasswordType(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .line 1086
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1087
    invoke-static {p1}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p1

    .line 1088
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, p1}, Lcom/miui/server/AccessController;->getAccessControlPasswordType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllPrivacyApps(I)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2173
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 2174
    monitor-enter p0

    .line 2175
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2176
    .local v0, "privacyAppsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    .line 2177
    .local v1, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    .line 2178
    .local v2, "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/server/SecurityManagerService$PackageSetting;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2179
    .local v3, "pkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2181
    .local v5, "pkgName":Ljava/lang/String;
    :try_start_1
    iget-object v6, v1, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v6, v5}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v6

    .line 2182
    .local v6, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v7, v6, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z

    if-eqz v7, :cond_0

    .line 2183
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2187
    .end local v6    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    :cond_0
    goto :goto_1

    .line 2185
    :catch_0
    move-exception v6

    .line 2186
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "SecurityManagerService"

    const-string v8, "getAllPrivacyApps error"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2188
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 2189
    :cond_1
    monitor-exit p0

    return-object v0

    .line 2190
    .end local v0    # "privacyAppsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v2    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/server/SecurityManagerService$PackageSetting;>;"
    .end local v3    # "pkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getAppPermissionControlOpen(I)I
    .locals 2
    .param p1, "userId"    # I

    .line 1696
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1697
    return v1

    .line 1699
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateOrNullUnLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 1700
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    if-eqz v0, :cond_1

    .line 1701
    invoke-static {v0}, Lcom/miui/server/SecurityManagerService$UserState;->access$2000(Lcom/miui/server/SecurityManagerService$UserState;)I

    move-result v1

    return v1

    .line 1703
    :cond_1
    return v1
.end method

.method public getAppRunningControlIBinder()Landroid/os/IBinder;
    .locals 1

    .line 2083
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAppRunningControlBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getApplicationAccessControlEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 938
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 939
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 940
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/miui/server/SecurityManagerService;->getApplicationAccessControlEnabledLocked(Ljava/lang/String;I)Z

    move-result v1

    monitor-exit p0

    return v1

    .line 941
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 846
    monitor-enter p0

    .line 847
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->getApplicationAccessControlEnabledLocked(Ljava/lang/String;I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 848
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getApplicationChildrenControlEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1214
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1215
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 1217
    :try_start_0
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    .line 1218
    .local v1, "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v2, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v2

    .line 1219
    .local v2, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v3, v2, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    return v3

    .line 1223
    .end local v1    # "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v2    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1220
    :catch_0
    move-exception v1

    .line 1221
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 1223
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 853
    monitor-enter p0

    .line 854
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->getApplicationMaskNotificationEnabledLocked(Ljava/lang/String;I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 855
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentUserId()I
    .locals 1

    .line 1719
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public getGameMode(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 890
    monitor-enter p0

    .line 891
    :try_start_0
    invoke-static {p1}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result v0

    move p1, v0

    .line 892
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 893
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mIsGameMode:Z

    monitor-exit p0

    return v1

    .line 894
    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGoogleBaseService()Lmiui/security/ISecurityCallback;
    .locals 1

    .line 1965
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->sGoogleBaseService:Lmiui/security/ISecurityCallback;

    return-object v0
.end method

.method public getIncompatibleAppList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1907
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1908
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 1909
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .locals 6
    .param p1, "pid"    # I

    .line 769
    const-string v0, ""

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 770
    .local v1, "callingUid":I
    if-eqz v1, :cond_3

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_3

    .line 772
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 773
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 774
    .local v3, "packages":[Ljava/lang/String;
    if-eqz v3, :cond_2

    array-length v4, v3

    if-nez v4, :cond_0

    goto :goto_0

    .line 777
    :cond_0
    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-virtual {v2, v5, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 778
    .local v4, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 779
    return-object v0

    .line 783
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "packages":[Ljava/lang/String;
    .end local v4    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    goto :goto_1

    .line 775
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "packages":[Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v0

    .line 781
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "packages":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 782
    .local v2, "e":Ljava/lang/Exception;
    return-object v0

    .line 785
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondSpaceId()I
    .locals 6

    .line 2097
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2099
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "second_user_id"

    const/16 v4, -0x2710

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2102
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2099
    return v2

    .line 2102
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getStickWindowName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "component"    # Ljava/lang/String;

    .line 2132
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gamebox_stick"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSysAppCracked()I
    .locals 1

    .line 1724
    iget v0, p0, Lcom/miui/server/SecurityManagerService;->mSysAppCracked:I

    return v0
.end method

.method public getTopActivity()Landroid/os/IBinder;
    .locals 6

    .line 2061
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 2062
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getTopRunningActivityInfo()Ljava/util/HashMap;

    move-result-object v0

    .line 2063
    .local v0, "topActivity":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_1

    .line 2064
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2065
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 2066
    .local v2, "componentName":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 2067
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 2068
    .local v3, "clsName":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2069
    .local v4, "pkgName":Ljava/lang/String;
    const-string v5, "com.google.android.packageinstaller"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2070
    const-string v5, "com.android.packageinstaller.InstallAppProgress"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2071
    const-string v5, "com.android.packageinstaller.InstallSuccess"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2072
    const-string v5, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2073
    :cond_0
    const-string v5, "token"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    .line 2074
    .local v5, "token":Landroid/os/IBinder;
    return-object v5

    .line 2079
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "clsName":Ljava/lang/String;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "token":Landroid/os/IBinder;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;
    .locals 1

    .line 1660
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1662
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/security/WakePathChecker;->getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getWakePathComponents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1914
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1916
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceCompat;->getWakePathComponents(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1917
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathComponent;>;"
    if-nez v0, :cond_0

    .line 1918
    const/4 v1, 0x0

    return-object v1

    .line 1920
    :cond_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public getWakeUpTime(Ljava/lang/String;)J
    .locals 3
    .param p1, "componentName"    # Ljava/lang/String;

    .line 1541
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.miui.permission.MANAGE_BOOT_TIME"

    const-string v2, "SecurityManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 1729
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1730
    const-string v0, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1733
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/server/pm/PackageManagerServicePermissionProxy;->grantInstallPermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1734
    return-void

    .line 1731
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support permssion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public grantRuntimePermission(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1249
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1250
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1251
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2, p1, v0}, Lcom/android/server/pm/PackageManagerServiceCompat;->getPackageUid(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)I

    move-result v2

    .line 1252
    .local v2, "packageUid":I
    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_0

    if-eq v2, v1, :cond_0

    .line 1253
    return-void

    .line 1255
    :cond_0
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v0}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1256
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v4, :cond_1

    .line 1257
    return-void

    .line 1260
    :cond_1
    if-eq v1, v3, :cond_3

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1261
    :cond_2
    new-instance v3, Ljava/lang/SecurityException;

    const-string v5, "grantRuntimePermission Permission DENIED"

    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1264
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1266
    .local v5, "identity":J
    :try_start_0
    invoke-static {p1, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantRuntimePermission(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1269
    nop

    .line 1270
    return-void

    .line 1268
    :catchall_0
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public haveAccessControlPassword(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1080
    invoke-static {p1}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p1

    .line 1081
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, p1}, Lcom/miui/server/AccessController;->haveAccessControlPassword(I)Z

    move-result v0

    return v0
.end method

.method public isAllowStartService(Landroid/content/Intent;I)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 2055
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 2056
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public isAppHide()Z
    .locals 1

    .line 1997
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/pm/PackageHideManager;->getInstance(Z)Landroid/content/pm/PackageHideManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageHideManager;->isAppHide()Z

    move-result v0

    return v0
.end method

.method public isAppPrivacyEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2042
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2045
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2047
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "privacy_status_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 2049
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2047
    return v4

    .line 2049
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2043
    .end local v0    # "identity":J
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "packageName can not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isFunctionOpen()Z
    .locals 1

    .line 2002
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/pm/PackageHideManager;->getInstance(Z)Landroid/content/pm/PackageHideManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageHideManager;->isFunctionOpen()Z

    move-result v0

    return v0
.end method

.method public isPrivacyApp(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2158
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 2159
    monitor-enter p0

    .line 2160
    :try_start_0
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2162
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :try_start_1
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    .line 2163
    .local v1, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return v2

    .line 2164
    .end local v1    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    :catch_0
    move-exception v1

    .line 2165
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SecurityManagerService"

    const-string v3, "isPrivacyApp error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2166
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 2168
    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public isRestrictedAppNet(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1788
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/server/RestrictAppNetManager;->isRestrictedAppNet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidDevice()Z
    .locals 1

    .line 2012
    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    return v0
.end method

.method public killNativePackageProcesses(ILjava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 762
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 763
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    .line 764
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->nativeKillPackageProcesses(ILjava/lang/String;)V

    .line 765
    :cond_0
    return-void
.end method

.method public moveTaskToStack(IIZ)I
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z

    .line 2108
    if-eqz p3, :cond_0

    .line 2109
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2111
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quick_reply"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2115
    goto :goto_0

    .line 2114
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2117
    .end local v0    # "callingId":J
    :cond_0
    :goto_0
    invoke-static {p1, p2, p3}, Landroid/util/MiuiMultiWindowUtils;->moveTaskToStack(IIZ)I

    move-result v0

    return v0
.end method

.method public needFinishAccessControl(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1093
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1094
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getTaskIntentForToken(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1095
    .local v0, "taskIntent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1096
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1097
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 1098
    .local v3, "component":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    .line 1099
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5, v1}, Lcom/miui/server/AccessController;->filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    return v2

    .line 1102
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public notifyAppsPreInstalled()V
    .locals 3

    .line 1944
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1945
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mRegistrantLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1946
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1948
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1949
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    invoke-virtual {v2}, Landroid/os/Registrant;->clear()V

    .line 1948
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1951
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->removeCleared()V

    .line 1952
    monitor-exit v0

    .line 1953
    return-void

    .line 1952
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public offerGoogleBaseCallBack(Lmiui/security/ISecurityCallback;)V
    .locals 3
    .param p1, "cb"    # Lmiui/security/ISecurityCallback;

    .line 1926
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1927
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService;->sGoogleBaseService:Lmiui/security/ISecurityCallback;

    .line 1929
    :try_start_0
    invoke-interface {p1}, Lmiui/security/ISecurityCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/miui/server/SecurityManagerService$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/server/SecurityManagerService$2;-><init>(Lcom/miui/server/SecurityManagerService;Lmiui/security/ISecurityCallback;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1939
    goto :goto_0

    .line 1937
    :catch_0
    move-exception v0

    .line 1938
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SecurityManagerService"

    const-string v2, "offerGoogleBaseCallBack"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1940
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public pushUpdatePkgsData(Ljava/util/List;Z)V
    .locals 1
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 2142
    .local p1, "updatePkgsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 2143
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/security/WakePathChecker;->pushUpdatePkgsData(Ljava/util/List;Z)V

    .line 2144
    return-void
.end method

.method public pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1639
    .local p2, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1641
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/security/WakePathChecker;->pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V

    .line 1642
    return-void
.end method

.method public pushWakePathData(ILandroid/content/pm/ParceledListSlice;I)V
    .locals 2
    .param p1, "wakeType"    # I
    .param p2, "wakePathRuleInfos"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "userId"    # I

    .line 1625
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1627
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lmiui/security/WakePathChecker;->pushWakePathRuleInfos(ILjava/util/List;I)V

    .line 1628
    return-void
.end method

.method public pushWakePathWhiteList(Ljava/util/List;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1632
    .local p1, "wakePathWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1634
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/security/WakePathChecker;->pushWakePathWhiteList(Ljava/util/List;I)V

    .line 1635
    return-void
.end method

.method public putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1555
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    .line 1556
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1557
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 1558
    .local v1, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1560
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1563
    goto :goto_0

    .line 1561
    :catch_0
    move-exception v2

    .line 1562
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1566
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1567
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 1568
    invoke-virtual {v1, p2}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1569
    const/4 v2, 0x1

    .line 1573
    nop

    .line 1575
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1578
    goto :goto_1

    .line 1576
    :catch_1
    move-exception v3

    .line 1577
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1569
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    return v2

    .line 1573
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 1570
    :catch_2
    move-exception v2

    .line 1571
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1573
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 1575
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1578
    :goto_2
    goto :goto_3

    .line 1576
    :catch_3
    move-exception v2

    .line 1577
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 1581
    :cond_1
    :goto_3
    const/4 v2, 0x0

    return v2

    .line 1573
    :goto_4
    if-eqz v1, :cond_2

    .line 1575
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1578
    goto :goto_5

    .line 1576
    :catch_4
    move-exception v3

    .line 1577
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1578
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_5
    throw v2
.end method

.method public readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 1586
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    .line 1587
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1588
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 1589
    .local v1, "raf":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 1590
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1592
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    .line 1593
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1597
    nop

    .line 1599
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1602
    :goto_0
    goto :goto_3

    .line 1600
    :catch_0
    move-exception v3

    .line 1601
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 1597
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1594
    :catch_1
    move-exception v3

    .line 1595
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1597
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 1599
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1597
    :goto_1
    if-eqz v1, :cond_0

    .line 1599
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1602
    goto :goto_2

    .line 1600
    :catch_2
    move-exception v4

    .line 1601
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 1602
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    throw v3

    .line 1606
    :cond_1
    :goto_3
    return-object v2
.end method

.method public registerForAppsPreInstalled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1956
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mRegistrantLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1957
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1958
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1959
    .local v1, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1961
    .end local v1    # "r":Landroid/os/Registrant;
    :cond_0
    monitor-exit v0

    .line 1962
    return-void

    .line 1961
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/app/IWakePathCallback;

    .line 1667
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1669
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/WakePathChecker;->registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V

    .line 1670
    return-void
.end method

.method public removeAccessControlPass(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 824
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 825
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 826
    .local v0, "callingUserId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/server/SecurityManagerService;->removeAccessControlPassAsUser(Ljava/lang/String;I)V

    .line 827
    return-void
.end method

.method public removeAccessControlPassAsUser(Ljava/lang/String;I)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 999
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1000
    const/4 v0, 0x0

    .line 1001
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1002
    .local v1, "token":Landroid/os/IBinder;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1003
    .local v2, "activityUserId":Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 1005
    .local v3, "checkAccessControlPass":Z
    const/4 v4, 0x0

    .line 1006
    .local v4, "topActivity":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    .line 1007
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getTopRunningActivityInfo()Ljava/util/HashMap;

    move-result-object v4

    .line 1013
    :cond_0
    monitor-enter p0

    .line 1014
    if-ne p2, v5, :cond_4

    .line 1015
    :try_start_0
    iget-object v6, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1016
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 1017
    iget-object v8, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/server/SecurityManagerService$UserState;

    .line 1018
    .local v8, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    invoke-direct {p0, v8, p1}, Lcom/miui/server/SecurityManagerService;->removeAccessControlPassLocked(Lcom/miui/server/SecurityManagerService$UserState;Ljava/lang/String;)V

    .line 1016
    .end local v8    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1020
    .end local v7    # "i":I
    :cond_1
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getCurrentUserId()I

    move-result v7

    .line 1021
    .local v7, "currentUserId":I
    invoke-direct {p0, v7}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v8

    .line 1022
    .restart local v8    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    invoke-direct {p0, v8}, Lcom/miui/server/SecurityManagerService;->getAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v9

    .line 1023
    .local v9, "enabled":Z
    if-nez v9, :cond_2

    .line 1024
    monitor-exit p0

    return-void

    .line 1026
    :cond_2
    if-eqz v4, :cond_3

    .line 1027
    const-string v10, "packageName"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v0, v10

    .line 1028
    const-string v10, "token"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/IBinder;

    move-object v1, v10

    .line 1029
    const-string v10, "userId"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    move-object v2, v10

    .line 1030
    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {p0, v0, v10, v11}, Lcom/miui/server/SecurityManagerService;->checkAccessControlPassLocked(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v10

    move v3, v10

    .line 1032
    .end local v6    # "size":I
    .end local v7    # "currentUserId":I
    .end local v8    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v9    # "enabled":Z
    :cond_3
    goto :goto_1

    .line 1033
    :cond_4
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v6

    .line 1034
    .local v6, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    invoke-direct {p0, v6, p1}, Lcom/miui/server/SecurityManagerService;->removeAccessControlPassLocked(Lcom/miui/server/SecurityManagerService$UserState;Ljava/lang/String;)V

    .line 1036
    .end local v6    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    if-ne p2, v5, :cond_6

    if-eqz v4, :cond_6

    .line 1039
    if-nez v3, :cond_5

    .line 1041
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x0

    move-object v7, v0

    invoke-static/range {v6 .. v12}, Lmiui/security/SecurityManager;->getCheckAccessIntent(ZLjava/lang/String;Landroid/content/Intent;IZILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    .line 1042
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "miui.KEYGUARD_LOCKED"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1043
    iget-object v6, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object v8, v1

    move-object v10, v5

    invoke-static/range {v6 .. v11}, Lmiui/security/SecurityManagerCompat;->startActvityAsUser(Landroid/content/Context;Landroid/app/IApplicationThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v5    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 1044
    :catch_0
    move-exception v5

    .line 1045
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "SecurityManagerService"

    const-string v7, "removeAccessControlPassAsUser startActvityAsUser error "

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1046
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_3

    .line 1047
    :cond_5
    iget-boolean v5, p0, Lcom/miui/server/SecurityManagerService;->mFingerprintNotify:Z

    if-eqz v5, :cond_6

    const-string v5, "com.miui.securitycenter"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1048
    new-instance v5, Landroid/content/Intent;

    const-string v6, "miui.intent.action.APP_LOCK_CLEAR_STATE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "com.miui.securitycenter"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1050
    iget-object v6, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1053
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_6
    :goto_3
    return-void

    .line 1036
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public removeWakePathData(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1646
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1648
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/WakePathChecker;->removeWakePathData(I)V

    .line 1649
    return-void
.end method

.method public resizeTask(ILandroid/graphics/Rect;I)I
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "resizeMode"    # I

    .line 2137
    invoke-static {p1, p2, p3}, Landroid/util/MiuiMultiWindowUtils;->resizeTask(ILandroid/graphics/Rect;I)I

    move-result v0

    return v0
.end method

.method public saveIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .line 994
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->saveIconInner(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 995
    return-void
.end method

.method public setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "passwordType"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1066
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1067
    invoke-static {p3}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p3

    .line 1068
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/server/AccessController;->setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1069
    return-void
.end method

.method public setAppHide(Z)Z
    .locals 2
    .param p1, "hide"    # Z

    .line 2007
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/pm/PackageHideManager;->getInstance(Z)Landroid/content/pm/PackageHideManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageHideManager;->setHideApp(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public setAppPermissionControlOpen(I)V
    .locals 5
    .param p1, "status"    # I

    .line 1708
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    .line 1709
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1708
    const-string v3, "android.permission.UPDATE_APP_OPS_STATS"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1710
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1711
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 1712
    :try_start_0
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    .line 1713
    .local v1, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    invoke-static {v1, p1}, Lcom/miui/server/SecurityManagerService$UserState;->access$2002(Lcom/miui/server/SecurityManagerService$UserState;I)I

    .line 1714
    nop

    .end local v1    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    monitor-exit p0

    .line 1715
    return-void

    .line 1714
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAppPrivacyStatus(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isOpen"    # Z

    .line 2023
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2026
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2027
    .local v0, "callingPid":I
    invoke-static {v0}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v1

    .line 2029
    .local v1, "callingPackageName":Ljava/lang/String;
    const-string v2, "com.android.settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2030
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWriteSecurePermission()V

    .line 2032
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2034
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "privacy_status_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2036
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2037
    nop

    .line 2038
    return-void

    .line 2036
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2024
    .end local v0    # "callingPid":I
    .end local v1    # "callingPackageName":Ljava/lang/String;
    .end local v2    # "identity":J
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "packageName can not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setApplicationAccessControlEnabled(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 966
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 967
    .local v0, "callingUserId":I
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/server/SecurityManagerService;->setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V

    .line 968
    return-void
.end method

.method public setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 972
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 973
    monitor-enter p0

    .line 974
    :try_start_0
    invoke-direct {p0, p3}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 975
    .local v0, "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    .line 976
    .local v1, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iput-boolean p2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    .line 977
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    .line 978
    .end local v0    # "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v1    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    monitor-exit p0

    .line 979
    return-void

    .line 978
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 1228
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1229
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1230
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 1231
    :try_start_0
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    .line 1232
    .local v1, "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v2, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v2

    .line 1233
    .local v2, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iput-boolean p2, v2, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    .line 1234
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    .line 1235
    .end local v1    # "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v2    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    monitor-exit p0

    .line 1236
    return-void

    .line 1235
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setApplicationMaskNotificationEnabledForUser(Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 983
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 984
    monitor-enter p0

    .line 985
    :try_start_0
    invoke-direct {p0, p3}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 986
    .local v0, "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    .line 987
    .local v1, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iput-boolean p2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->maskNotification:Z

    .line 988
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    .line 989
    .end local v0    # "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v1    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    monitor-exit p0

    .line 990
    return-void

    .line 989
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCoreRuntimePermissionEnabled(ZI)V
    .locals 2
    .param p1, "grant"    # Z
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1240
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1243
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1244
    .local v0, "userId":I
    invoke-static {p1, p2, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->setCoreRuntimePermissionEnabled(ZII)V

    .line 1245
    return-void

    .line 1241
    .end local v0    # "userId":I
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "setCoreRuntimePermissionEnabled Permission DENIED"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCurrentNetworkState(I)Z
    .locals 1
    .param p1, "state"    # I

    .line 1889
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    .line 1890
    invoke-static {}, Lcom/android/server/MiuiNetworkManagementService;->getInstance()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/MiuiNetworkManagementService;->setCurrentNetworkState(I)Z

    move-result v0

    return v0
.end method

.method public setGameBoosterIBinder(Landroid/os/IBinder;IZ)V
    .locals 4
    .param p1, "gameBooster"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "isGameMode"    # Z

    .line 867
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 868
    monitor-enter p0

    .line 869
    :try_start_0
    invoke-static {p2}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result v0

    move p2, v0

    .line 870
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :try_start_1
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 873
    new-instance v1, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-direct {v1, p0, v0, p1}, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;-><init>(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    .line 874
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_0

    .line 875
    :cond_0
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-static {v1}, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->access$1900(Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;)Landroid/os/IBinder;

    move-result-object v1

    if-eq p1, v1, :cond_1

    .line 876
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-static {v1}, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->access$1900(Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 877
    new-instance v1, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-direct {v1, p0, v0, p1}, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;-><init>(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    .line 878
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_0

    .line 880
    :cond_1
    iput-boolean p3, v0, Lcom/miui/server/SecurityManagerService$UserState;->mIsGameMode:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 884
    :goto_0
    goto :goto_1

    .line 882
    :catch_0
    move-exception v1

    .line 883
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "SecurityManagerService"

    const-string v3, "setGameBoosterIBinder"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 885
    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    .line 886
    return-void

    .line 885
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setIncompatibleAppList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1895
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1896
    if-eqz p1, :cond_0

    .line 1899
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1900
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1901
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1902
    monitor-exit v0

    .line 1903
    return-void

    .line 1902
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1897
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "List is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMiuiFirewallRule(Ljava/lang/String;III)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "rule"    # I
    .param p4, "type"    # I

    .line 1883
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    .line 1884
    invoke-static {}, Lcom/android/server/MiuiNetworkManagementService;->getInstance()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/MiuiNetworkManagementService;->setMiuiFirewallRule(Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1984
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1985
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    if-nez v0, :cond_0

    .line 1986
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    .line 1988
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1990
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1992
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1993
    nop

    .line 1994
    return-void

    .line 1992
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setPrivacyApp(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isPrivacy"    # Z

    .line 2147
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 2148
    monitor-enter p0

    .line 2149
    :try_start_0
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 2150
    .local v0, "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    .line 2151
    .local v1, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iput-boolean p3, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z

    .line 2152
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    .line 2153
    .end local v0    # "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v1    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    monitor-exit p0

    .line 2154
    return-void

    .line 2153
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStickWindowName(Ljava/lang/String;)V
    .locals 4
    .param p1, "component"    # Ljava/lang/String;

    .line 2122
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2124
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gamebox_stick"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2126
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2127
    nop

    .line 2128
    return-void

    .line 2126
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setTrackWakePathCallListLogEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1653
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1655
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/WakePathChecker;->setTrackWakePathCallListLogEnabled(Z)V

    .line 1656
    return-void
.end method

.method public setWakeUpTime(Ljava/lang/String;J)V
    .locals 3
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "timeInSeconds"    # J

    .line 1439
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.miui.permission.MANAGE_BOOT_TIME"

    const-string v2, "SecurityManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecurityManagerService;->putBootTimeToMap(Ljava/lang/String;J)V

    .line 1441
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->sucheduleWriteWakeUpTime()V

    .line 1442
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->setTimeBoot()V

    .line 1443
    return-void
.end method

.method public startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/String;
    .param p3, "count"    # I

    .line 795
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/server/SecuritySmsHandler;->startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public stopInterceptSmsBySender()Z
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0}, Lcom/miui/server/SecuritySmsHandler;->stopInterceptSmsBySender()Z

    move-result v0

    return v0
.end method

.method public updateLauncherPackageNames()V
    .locals 2

    .line 2195
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lmiui/security/WakePathChecker;->init(Landroid/content/Context;)V

    .line 2196
    return-void
.end method

.method public watchGreenGuardProcess()V
    .locals 1

    .line 2092
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/GreenGuardManagerService;->startWatchGreenguardProcess(Landroid/content/Context;)V

    .line 2093
    return-void
.end method

.method public writeAppHideConfig(Z)Z
    .locals 1
    .param p1, "hide"    # Z

    .line 1793
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1794
    const/4 v0, 0x0

    return v0
.end method
