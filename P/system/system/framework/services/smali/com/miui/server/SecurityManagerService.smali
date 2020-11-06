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

.field private static final PACKAGE_SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

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

    const-string/jumbo v0, "miui_security"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7

    invoke-direct {p0}, Lmiui/security/ISecurityManager$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/server/SecurityManagerService;->mDialogFlag:Z

    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserStateLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mRegistrantLock:Ljava/lang/Object;

    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/server/SecurityManagerService;->mSysAppCracked:I

    iput-object p1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/os/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "miui-packages.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SecurityWriteHandlerThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-direct {v4, p0, v3}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;-><init>(Lcom/miui/server/SecurityManagerService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    new-instance v4, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;

    invoke-direct {v4, p0}, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;-><init>(Lcom/miui/server/SecurityManagerService;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v6}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->readSettings()V

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->updateXSpaceSettings()V

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->initForKK()V

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/miui/server/SecurityManagerService;->mWakeTime:J

    new-instance v4, Lcom/android/internal/os/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "miui-wakeuptime.xml"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->readWakeUpTime()V

    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->checkSystemSelfProtection(Z)V

    new-instance v4, Lcom/miui/server/AccessController;

    invoke-direct {v4, p1, v3}, Lcom/miui/server/AccessController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    new-instance v4, Lcom/miui/server/SecurityManagerService$SettingsObserver;

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-direct {v4, p0, v5, p1}, Lcom/miui/server/SecurityManagerService$SettingsObserver;-><init>(Lcom/miui/server/SecurityManagerService;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mSettingsObserver:Lcom/miui/server/SecurityManagerService$SettingsObserver;

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-eq v0, v4, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-ne v0, v4, :cond_2

    :cond_0
    const-string v0, "hennessy"

    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "kenzo"

    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ido"

    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "aqua"

    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/server/SecurityManagerService;->mFingerprintNotify:Z

    :cond_2
    new-instance v0, Lcom/miui/server/AppRunningControlService;

    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/miui/server/AppRunningControlService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/server/SecurityManagerService;->mAppRunningControlService:Lcom/miui/server/AppRunningControlService;

    sget-object v0, Lcom/miui/server/SecurityManagerService;->mAppRunningControlService:Lcom/miui/server/AppRunningControlService;

    invoke-virtual {v0}, Lcom/miui/server/AppRunningControlService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAppRunningControlBinder:Landroid/os/IBinder;

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lmiui/security/WakePathChecker;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/RestrictAppNetManager;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/miui/server/AccessController;->updatePasswordTypeForPattern(I)V

    return-void

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

    :try_start_0
    const-string/jumbo v0, "libcore.io.Libcore"

    const-string/jumbo v1, "os"

    const-string v2, "Llibcore/io/Os;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "lstat"

    const-string v5, "(Ljava/lang/String;)Landroid/system/StructStat;"

    invoke-static {v3, v4, v5}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "lstat"

    const-string v5, "(Ljava/lang/String;)Llibcore/io/StructStat;"

    invoke-static {v3, v4, v5}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    :goto_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v3, v1, v2, v4}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v4, "st_ctime"

    const-string v5, "J"

    invoke-static {v2, v4, v5}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v2

    move-object v0, v2

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    return-wide v4

    :catch_0
    move-exception v0

    const-string v1, "SecurityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileChangeTime fail :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method static synthetic access$000(Lcom/miui/server/SecurityManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/server/SecurityManagerService;)Lcom/android/internal/os/AtomicFile;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessMiuiOptUri(Lcom/miui/server/SecurityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/server/SecurityManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->nativeIsReleased()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->enforcePlatformSignature([Landroid/content/pm/Signature;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/server/SecurityManagerService;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->checkEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecurityManagerService;->enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/server/SecurityManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->isOldmanMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1702(Lcom/miui/server/SecurityManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/server/SecurityManagerService;->mSysAppCracked:I

    return p1
.end method

.method static synthetic access$1800(Lcom/miui/server/SecurityManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkSysAppCrack()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/server/SecurityManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->writeSettings()V

    return-void
.end method

.method static synthetic access$2102(Lcom/miui/server/SecurityManagerService;Lmiui/security/ISecurityCallback;)Lmiui/security/ISecurityCallback;
    .locals 0

    iput-object p1, p0, Lcom/miui/server/SecurityManagerService;->sGoogleBaseService:Lmiui/security/ISecurityCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/server/SecurityManagerService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/server/SecurityManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->writeWakeUpTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/server/SecurityManagerService;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/miui/server/SecurityManagerService;I)Lcom/miui/server/SecurityManagerService$UserState;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlLockModeLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlLockConvenientLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    return-void
.end method

.method private allowSaveIconCache()Z
    .locals 2

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2649

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/miui/server/SecurityManagerService;->canSaveExternalIconCache()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static varargs callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private static canSaveExternalIconCache()Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "miui_version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/server/SecurityManagerService;->Libcore_Os_getFileLastStatusChangedTime(Ljava/lang/String;)J

    move-result-wide v0

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

    iget v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    return-object v1
.end method

.method private checkAccessControlPassLocked(Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 12

    invoke-direct {p0, p3}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    iget-boolean v2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockMode(Lcom/miui/server/SecurityManagerService$UserState;)I

    move-result v2

    iget-object v4, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    iget-object v5, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v6, v8

    const-wide/32 v10, 0xea60

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    const/4 v4, 0x0

    :cond_1
    if-eqz v4, :cond_3

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_2

    const-string v6, "com.android.systemui"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    iget-object v6, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-nez v4, :cond_4

    if-ne v2, v3, :cond_4

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockConvenient(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->isPackageAccessControlPass(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x1

    :cond_4
    if-nez v4, :cond_5

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v5, p2}, Lcom/miui/server/AccessController;->skipActivity(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x1

    :cond_5
    if-nez v4, :cond_6

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v5, v3, p1, p2}, Lcom/miui/server/AccessController;->filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v4, 0x1

    :cond_6
    return v4
.end method

.method private checkAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)Z
    .locals 8

    const/4 v0, 0x1

    return v0
.end method

.method private checkEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-static {p1, p2, v0}, Lmiui/security/SecurityManagerCompat;->checkAppHidden(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/os/UserHandle;)V

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    nop

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    return-void

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SecurityManagerService"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkPermission()V
    .locals 4

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: attempt to change application state from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no permission to read file for UID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkSysAppCrack()Z
    .locals 8

    const/4 v0, 0x1

    return v0
.end method

.method private checkSystemSelfProtection(Z)V
    .locals 0

    return-void
.end method

.method private checkWakePathPermission()V
    .locals 5

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private checkWriteSecurePermission()V
    .locals 4

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: attempt to change application privacy revoke state from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private clearPassPackages(I)V
    .locals 4

    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportXSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3e7

    if-eqz p1, :cond_0

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    iget-object v3, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :goto_0
    return-void
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 8

    const v0, 0x0

    return v0
.end method

.method private enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    .locals 5

    return-void
.end method

.method private enforcePlatformSignature([Landroid/content/pm/Signature;)V
    .locals 5

    return-void
.end method

.method private getAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->changeUserState(Lcom/miui/server/SecurityManagerService$UserState;)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlSettingInit:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    :cond_0
    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlEnabled:Z

    return v1
.end method

.method private getAccessControlLockConvenient(Lcom/miui/server/SecurityManagerService$UserState;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->changeUserState(Lcom/miui/server/SecurityManagerService$UserState;)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlSettingInit:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    :cond_0
    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockConvenient:Z

    return v1
.end method

.method private getAccessControlLockMode(Lcom/miui/server/SecurityManagerService$UserState;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->changeUserState(Lcom/miui/server/SecurityManagerService$UserState;)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlSettingInit:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    :cond_0
    iget v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockMode:I

    return v1
.end method

.method public static getAppRunningControlService()Lcom/miui/server/AppRunningControlService;
    .locals 1

    sget-object v0, Lcom/miui/server/SecurityManagerService;->mAppRunningControlService:Lcom/miui/server/AppRunningControlService;

    return-object v0
.end method

.method private getApplicationAccessControlEnabledLocked(Ljava/lang/String;I)Z
    .locals 3

    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    iget-boolean v2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    return v2
.end method

.method private getApplicationMaskNotificationEnabledLocked(Ljava/lang/String;I)Z
    .locals 3

    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    iget-boolean v2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->maskNotification:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    return v2
.end method

.method private declared-synchronized getBootTimeFromMap(Ljava/lang/String;)J
    .locals 2

    monitor-enter p0

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

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;
    .locals 2
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

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SecurityManagerService$PackageSetting;

    if-nez v0, :cond_0

    new-instance v1, Lcom/miui/server/SecurityManagerService$PackageSetting;

    invoke-direct {v1, p0, p2}, Lcom/miui/server/SecurityManagerService$PackageSetting;-><init>(Lcom/miui/server/SecurityManagerService;Ljava/lang/String;)V

    move-object v0, v1

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;
    .locals 3

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SecurityManagerService$UserState;

    if-nez v0, :cond_0

    new-instance v1, Lcom/miui/server/SecurityManagerService$UserState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/server/SecurityManagerService$UserState;-><init>(Lcom/miui/server/SecurityManagerService$1;)V

    iput p1, v1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mUserStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-object v0
.end method

.method private getUserStateOrNullUnLocked(I)Lcom/miui/server/SecurityManagerService$UserState;
    .locals 2

    invoke-static {p1}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p1

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mUserStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/server/SecurityManagerService$UserState;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlLockModeLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlLockConvenientLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlSettingInit:Z

    return-void
.end method

.method private initForKK()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAom:Landroid/app/AppOpsManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SecurityManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/server/SecuritySmsHandler;

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/miui/server/SecuritySmsHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    :cond_0
    return-void
.end method

.method private isOldmanMode()Z
    .locals 2

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

    :cond_0
    invoke-direct {p0, v2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v3

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

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    return v6

    :cond_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private minWakeUpTime(J)V
    .locals 10

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x12c

    add-long/2addr v2, p1

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

    invoke-direct {p0, v5}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v8, v6, p1

    if-ltz v8, :cond_2

    cmp-long v8, v6, v0

    if-ltz v8, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-nez v8, :cond_2

    :cond_0
    cmp-long v8, v6, v2

    if-ltz v8, :cond_1

    move-wide v8, v6

    goto :goto_1

    :cond_1
    move-wide v8, v2

    :goto_1
    move-wide v0, v8

    :cond_2
    goto :goto_0

    :cond_3
    iput-wide v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeTime:J

    return-void
.end method

.method private moveIconInner(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lmiui/os/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lmiui/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lmiui/content/res/ThemeNativeUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lmiui/content/res/ThemeNativeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/content/res/IconCustomizer;->ensureMiuiVersionFlagExist(Landroid/content/Context;)V

    invoke-static {p1}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    :cond_1
    return v0
.end method

.method private native nativeIsReleased()Z
.end method

.method private native nativeKillPackageProcesses(ILjava/lang/String;)V
.end method

.method private declared-synchronized putBootTimeToMap(Ljava/lang/String;J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private readPackagesSettings(Ljava/io/FileInputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "packages"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "updateVersion"

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "1.0"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput-boolean v3, p0, Lcom/miui/server/SecurityManagerService;->mIsUpdated:Z

    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    :cond_2
    if-ne v2, v4, :cond_4

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ne v7, v4, :cond_4

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "package"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "name"

    invoke-interface {v0, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/miui/server/SecurityManagerService$PackageSetting;

    invoke-direct {v8, p0, v7}, Lcom/miui/server/SecurityManagerService$PackageSetting;-><init>(Lcom/miui/server/SecurityManagerService;Ljava/lang/String;)V

    const/4 v9, 0x0

    const-string/jumbo v10, "u"

    invoke-interface {v0, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :cond_3
    const-string v11, "accessControl"

    invoke-interface {v0, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v8, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    const-string v11, "childrenControl"

    invoke-interface {v0, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v8, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    const-string/jumbo v11, "maskNotification"

    invoke-interface {v0, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v8, Lcom/miui/server/SecurityManagerService$PackageSetting;->maskNotification:Z

    const-string v11, "isPrivacyApp"

    invoke-interface {v0, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v8, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, v9}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v11

    iget-object v12, v11, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v12, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-ne v2, v3, :cond_2

    :cond_5
    return-void
.end method

.method private readSettings()V
    .locals 4

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v1}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    move-object v0, v1

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->readPackagesSettings(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    const-string v2, "SecurityManagerService"

    const-string v3, "Error reading package settings"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    :cond_2
    :goto_3
    throw v1
.end method

.method private readWakeUpTime()V
    .locals 3

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v1}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    move-object v0, v1

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->readWakeUpTime(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    :cond_2
    :goto_3
    throw v1
.end method

.method private readWakeUpTime(Ljava/io/FileInputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "classnames"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    :cond_1
    if-ne v2, v4, :cond_2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v4, :cond_2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "classname"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "name"

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/Long;

    const-string/jumbo v8, "time"

    invoke-interface {v0, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {p0, v6, v7, v8}, Lcom/miui/server/SecurityManagerService;->putBootTimeToMap(Ljava/lang/String;J)V

    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-ne v2, v3, :cond_1

    :cond_3
    return-void
.end method

.method private removeAccessControlPassLocked(Lcom/miui/server/SecurityManagerService$UserState;Ljava/lang/String;)V
    .locals 1

    const-string v0, "*"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private removePackage(Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private saveIconInner(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->allowSaveIconCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lmiui/content/res/ThemeRuntimeManager;->createTempIconFile(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/server/SecurityManagerService;->moveIconInner(Ljava/lang/String;)Z

    move-result v2

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private scheduleWriteSettings()V
    .locals 4

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private setTimeBoot()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/miui/server/SecurityManagerService;->minWakeUpTime(J)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->sucheduleWriteBootTime()V

    return-void

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

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private sucheduleWriteWakeUpTime()V
    .locals 2

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private updateAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_lock_enabled"

    iget v2, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlEnabled:Z

    return-void
.end method

.method private updateAccessControlLockConvenientLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_lock_convenient"

    iget v2, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockConvenient:Z

    return-void
.end method

.method private updateAccessControlLockModeLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_lock_mode"

    iget v2, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockMode:I

    return-void
.end method

.method private updateAccessMiuiOptUri(Lcom/miui/server/SecurityManagerService$UserState;)V
    .locals 10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_1

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v5, v1, v6

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const-string v7, "installExistingPackageAsUser"

    new-array v8, v0, [Ljava/lang/Object;

    const-string v9, "com.google.android.packageinstaller"

    aput-object v9, v8, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v3

    const/16 v3, 0x4000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v6

    invoke-static {v5, v7, v1, v8}, Lcom/miui/server/SecurityManagerService;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const-string v5, "installExistingPackageAsUser"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "com.google.android.packageinstaller"

    aput-object v6, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v5, v0, v2}, Lcom/miui/server/SecurityManagerService;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "SecurityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call installExistingPackageAsUser error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->checkPkgInstallerOptMode(Lcom/android/server/pm/PackageManagerService;)V

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->revokeAllPermssions(Lcom/android/server/pm/PackageManagerService;)V

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantMiuiPackageInstallerPermssions(Lcom/android/server/pm/PackageManagerService;)V

    :cond_2
    return-void
.end method

.method private updateXSpaceSettings()V
    .locals 9

    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportXSpace()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/server/SecurityManagerService;->mIsUpdated:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    const/16 v1, 0x3e7

    invoke-direct {p0, v1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lmiui/securityspace/XSpaceUserHandle;->isAppInXSpace(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/server/SecurityManagerService$PackageSetting;

    new-instance v7, Lcom/miui/server/SecurityManagerService$PackageSetting;

    invoke-direct {v7, p0, v5}, Lcom/miui/server/SecurityManagerService$PackageSetting;-><init>(Lcom/miui/server/SecurityManagerService;Ljava/lang/String;)V

    iget-boolean v8, v6, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    iput-boolean v8, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    iget-boolean v8, v6, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    iput-boolean v8, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    monitor-enter p0

    :try_start_0
    iget-object v8, v1, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :goto_1
    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    :cond_2
    return-void
.end method

.method private writeSettings()V
    .locals 10

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/server/SecurityManagerService$UserState;

    new-instance v6, Lcom/miui/server/SecurityManagerService$UserState;

    invoke-direct {v6, v0}, Lcom/miui/server/SecurityManagerService$UserState;-><init>(Lcom/miui/server/SecurityManagerService$1;)V

    iget v7, v5, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    iput v7, v6, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    iget-object v7, v6, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    new-instance v8, Ljava/util/HashMap;

    iget-object v9, v5, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v1, v3

    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v4, "utf-8"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v4, "packages"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "updateVersion"

    const-string v5, "1.0"

    invoke-interface {v3, v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/server/SecurityManagerService$UserState;

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

    const-string/jumbo v8, "package"

    invoke-interface {v3, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "name"

    iget-object v9, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-interface {v3, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "accessControl"

    iget-boolean v9, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "childrenControl"

    iget-boolean v9, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "maskNotification"

    iget-boolean v9, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->maskNotification:Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "isPrivacyApp"

    iget-boolean v9, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "u"

    iget v9, v5, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "package"

    invoke-interface {v3, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string/jumbo v4, "packages"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "SecurityManagerService"

    const-string v3, "Error writing package settings file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_3
    :goto_3
    return-void
.end method

.method private writeWakeUpTime()V
    .locals 9

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v3, "utf-8"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "classnames"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    const-string v5, "classname"

    invoke-interface {v2, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "name"

    invoke-interface {v2, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "time"

    invoke-direct {p0, v4}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "classname"

    invoke-interface {v2, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    goto :goto_0

    :cond_1
    const-string v3, "classnames"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public activityResume(Landroid/content/Intent;)I
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x0

    if-nez v2, :cond_0

    return v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    return v0

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    monitor-enter p0

    :try_start_0
    invoke-direct {v1, v6}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/miui/server/SecurityManagerService;->getAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v8

    if-nez v8, :cond_3

    monitor-exit p0

    return v0

    :cond_3
    iget-object v9, v1, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v9, v4, v6}, Lcom/android/server/pm/PackageManagerServiceCompat;->getPackageUid(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)I

    move-result v9

    if-eq v5, v9, :cond_4

    monitor-exit p0

    return v0

    :cond_4
    const/4 v0, 0x1

    invoke-direct {v1, v7}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockMode(Lcom/miui/server/SecurityManagerService$UserState;)I

    move-result v10

    iget-object v11, v7, Lcom/miui/server/SecurityManagerService$UserState;->mLastResumePackage:Ljava/lang/String;

    iput-object v4, v7, Lcom/miui/server/SecurityManagerService$UserState;->mLastResumePackage:Ljava/lang/String;

    iget-object v12, v7, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    const/4 v13, 0x2

    if-ne v10, v13, :cond_5

    if-eqz v11, :cond_5

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    iget-object v14, v7, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    move-object/from16 v16, v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v14, v16

    invoke-virtual {v14, v11, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v13, v7, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {v1, v13, v4}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v13

    iget-boolean v14, v13, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    if-nez v14, :cond_7

    if-nez v10, :cond_6

    invoke-direct {v1, v6}, Lcom/miui/server/SecurityManagerService;->clearPassPackages(I)V

    :cond_6
    monitor-exit p0

    return v0

    :cond_7
    const/4 v14, 0x2

    or-int/2addr v0, v14

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    if-ne v10, v14, :cond_9

    iget-object v14, v7, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-virtual {v14, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    if-eqz v14, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sub-long v17, v15, v17

    const-wide/32 v19, 0xea60

    cmp-long v17, v17, v19

    if-gez v17, :cond_8

    or-int/lit8 v0, v0, 0x4

    monitor-exit p0

    return v0

    :cond_8
    invoke-virtual {v12, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    or-int/lit8 v0, v0, 0x4

    if-nez v10, :cond_a

    invoke-direct {v1, v6}, Lcom/miui/server/SecurityManagerService;->clearPassPackages(I)V

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    monitor-exit p0

    return v0

    :cond_b
    :goto_0
    if-nez v10, :cond_c

    invoke-direct {v1, v6}, Lcom/miui/server/SecurityManagerService;->clearPassPackages(I)V

    :cond_c
    iget-object v14, v7, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlCanceled:Landroid/util/ArraySet;

    invoke-virtual {v14, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    or-int/lit8 v0, v0, 0x8

    monitor-exit p0

    return v0

    :cond_d
    const/4 v14, 0x1

    if-ne v10, v14, :cond_e

    invoke-direct {v1, v7}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockConvenient(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-direct {v1, v7}, Lcom/miui/server/SecurityManagerService;->isPackageAccessControlPass(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v15

    if-nez v15, :cond_f

    :cond_e
    iget-object v15, v1, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v15, v2}, Lcom/miui/server/AccessController;->skipActivity(Landroid/content/Intent;)Z

    move-result v15

    if-nez v15, :cond_f

    iget-object v15, v1, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v15, v14, v4, v2}, Lcom/miui/server/AccessController;->filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z

    move-result v14

    if-eqz v14, :cond_10

    :cond_f
    or-int/lit8 v0, v0, 0x4

    :cond_10
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addAccessControlPass(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/server/SecurityManagerService;->addAccessControlPassForUser(Ljava/lang/String;I)V

    return-void
.end method

.method public addAccessControlPassForUser(Ljava/lang/String;I)V
    .locals 5

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockMode(Lcom/miui/server/SecurityManagerService$UserState;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v2, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addMiuiFirewallSharedUid(I)Z
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    invoke-static {}, Lcom/android/server/MiuiNetworkManagementService;->getInstance()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/MiuiNetworkManagementService;->addMiuiFirewallSharedUid(I)Z

    move-result v0

    return v0
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/server/SecurityManagerService;->checkAccessControlPassLocked(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecurityManagerService;->checkAccessControlPassLocked(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    invoke-static {p3}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p3

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/server/AccessController;->checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, v1, p2, p3}, Lcom/miui/server/AccessController;->filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, v3}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p4}, Lmiui/security/WakePathChecker;->checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1

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

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/server/AccessController;->filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkSmsBlocked(Landroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0, p1}, Lcom/miui/server/SecuritySmsHandler;->checkSmsBlocked(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump SecurityManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiui/security/WakePathChecker;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public finishAccessControl(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlCanceled:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p2, v1, Landroid/os/Message;->arg1:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAccessControlPasswordType(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    invoke-static {p1}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p1

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, p1}, Lcom/miui/server/AccessController;->getAccessControlPasswordType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllPrivacyApps(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

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

    :try_start_1
    iget-object v6, v1, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v6, v5}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v6

    iget-boolean v7, v6, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z

    if-eqz v7, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_2
    const-string v7, "SecurityManagerService"

    const-string v8, "getAllPrivacyApps error"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getAppPermissionControlOpen(I)I
    .locals 2

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateOrNullUnLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/miui/server/SecurityManagerService$UserState;->access$2000(Lcom/miui/server/SecurityManagerService$UserState;)I

    move-result v1

    return v1

    :cond_1
    return v1
.end method

.method public getAppRunningControlIBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAppRunningControlBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getApplicationAccessControlEnabled(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/miui/server/SecurityManagerService;->getApplicationAccessControlEnabledLocked(Ljava/lang/String;I)Z

    move-result v1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->getApplicationAccessControlEnabledLocked(Ljava/lang/String;I)Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getApplicationChildrenControlEnabled(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v2, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v2

    iget-boolean v3, v2, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    monitor-exit p0

    return v2

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->getApplicationMaskNotificationEnabledLocked(Ljava/lang/String;I)Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentUserId()I
    .locals 1

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public getGameMode(I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result v0

    move p1, v0

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mIsGameMode:Z

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGoogleBaseService()Lmiui/security/ISecurityCallback;
    .locals 1

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

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    const-string v4, ""

    return-object v4

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    const-string v2, ""

    return-object v2

    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSecondSpaceId()I
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "second_user_id"

    const/16 v4, -0x2710

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getStickWindowName(Ljava/lang/String;)Z
    .locals 2

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

    iget v0, p0, Lcom/miui/server/SecurityManagerService;->mSysAppCracked:I

    return v0
.end method

.method public getTopActivity()Landroid/os/IBinder;
    .locals 6

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getTopRunningActivityInfo()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.packageinstaller"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.android.packageinstaller.InstallAppProgress"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.android.packageinstaller.InstallSuccess"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const-string/jumbo v5, "token"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    return-object v5

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;
    .locals 1

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/security/WakePathChecker;->getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getWakePathComponents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 2

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceCompat;->getWakePathComponents(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public getWakeUpTime(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.miui.permission.MANAGE_BOOT_TIME"

    const-string v2, "SecurityManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    const-string v0, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/server/pm/PackageManagerServicePermissionProxy;->grantInstallPermission(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not support permssion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public grantRuntimePermission(Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2, p1, v0}, Lcom/android/server/pm/PackageManagerServiceCompat;->getPackageUid(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_0

    if-eq v2, v1, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v0}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    if-eq v1, v3, :cond_3

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/SecurityException;

    const-string v5, "grantRuntimePermission Permission DENIED"

    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    invoke-static {p1, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantRuntimePermission(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public haveAccessControlPassword(I)Z
    .locals 1

    invoke-static {p1}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p1

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, p1}, Lcom/miui/server/AccessController;->haveAccessControlPassword(I)Z

    move-result v0

    return v0
.end method

.method public isAllowStartService(Landroid/content/Intent;I)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public isAppHide()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/pm/PackageHideManager;->getInstance(Z)Landroid/content/pm/PackageHideManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageHideManager;->isAppHide()Z

    move-result v0

    return v0
.end method

.method public isAppPrivacyEnabled(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "privacy_status_"

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

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "packageName can not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isFunctionOpen()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/pm/PackageHideManager;->getInstance(Z)Landroid/content/pm/PackageHideManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageHideManager;->isFunctionOpen()Z

    move-result v0

    return v0
.end method

.method public isPrivacyApp(Ljava/lang/String;I)Z
    .locals 4

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    iget-boolean v2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return v2

    :catch_0
    move-exception v1

    const-string v2, "SecurityManagerService"

    const-string v3, "isPrivacyApp error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public isRestrictedAppNet(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/server/RestrictAppNetManager;->isRestrictedAppNet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidDevice()Z
    .locals 1

    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    return v0
.end method

.method public killNativePackageProcesses(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->nativeKillPackageProcesses(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public moveTaskToStack(IIZ)I
    .locals 6

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gb_boosting"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_0
    :goto_0
    invoke-static {p1, p2, p3}, Landroid/util/MiuiMultiWindowUtils;->moveTaskToStack(IIZ)I

    move-result v0

    return v0
.end method

.method public needFinishAccessControl(Landroid/os/IBinder;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getTaskIntentForToken(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5, v1}, Lcom/miui/server/AccessController;->filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public notifyAppsPreInstalled()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mRegistrantLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    invoke-virtual {v2}, Landroid/os/Registrant;->clear()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->removeCleared()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public offerGoogleBaseCallBack(Lmiui/security/ISecurityCallback;)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    iput-object p1, p0, Lcom/miui/server/SecurityManagerService;->sGoogleBaseService:Lmiui/security/ISecurityCallback;

    :try_start_0
    invoke-interface {p1}, Lmiui/security/ISecurityCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/miui/server/SecurityManagerService$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/server/SecurityManagerService$2;-><init>(Lcom/miui/server/SecurityManagerService;Lmiui/security/ISecurityCallback;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SecurityManagerService"

    const-string/jumbo v2, "offerGoogleBaseCallBack"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public pushUpdatePkgsData(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/security/WakePathChecker;->pushUpdatePkgsData(Ljava/util/List;Z)V

    return-void
.end method

.method public pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/security/WakePathChecker;->pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V

    return-void
.end method

.method public pushWakePathData(ILandroid/content/pm/ParceledListSlice;I)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lmiui/security/WakePathChecker;->pushWakePathRuleInfos(ILjava/util/List;I)V

    return-void
.end method

.method public pushWakePathWhiteList(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/security/WakePathChecker;->pushWakePathWhiteList(Ljava/util/List;I)V

    return-void
.end method

.method public putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v1, p2}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    nop

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v2

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_2
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    goto :goto_3

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_1
    :goto_3
    const/4 v2, 0x0

    return v2

    :goto_4
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_5
    throw v2
.end method

.method public readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v3, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_3

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    throw v3

    :cond_1
    :goto_3
    return-object v2
.end method

.method public registerForAppsPreInstalled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mRegistrantLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/WakePathChecker;->registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V

    return-void
.end method

.method public removeAccessControlPass(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/server/SecurityManagerService;->removeAccessControlPassAsUser(Ljava/lang/String;I)V

    return-void
.end method

.method public removeAccessControlPassAsUser(Ljava/lang/String;I)V
    .locals 13

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-ne p2, v6, :cond_0

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getTopRunningActivityInfo()Ljava/util/HashMap;

    move-result-object v5

    :cond_0
    monitor-enter p0

    if-ne p2, v6, :cond_4

    :try_start_0
    iget-object v7, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    nop

    :goto_0
    if-ge v2, v7, :cond_1

    iget-object v8, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/server/SecurityManagerService$UserState;

    invoke-direct {p0, v8, p1}, Lcom/miui/server/SecurityManagerService;->removeAccessControlPassLocked(Lcom/miui/server/SecurityManagerService$UserState;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getCurrentUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/miui/server/SecurityManagerService;->getAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v9

    if-nez v9, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    if-eqz v5, :cond_3

    const-string/jumbo v10, "packageName"

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v0, v10

    const-string/jumbo v10, "token"

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/IBinder;

    move-object v1, v10

    const-string/jumbo v10, "userId"

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    move-object v3, v10

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {p0, v0, v10, v11}, Lcom/miui/server/SecurityManagerService;->checkAccessControlPassLocked(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v10

    move v2, v10

    move v4, v2

    :cond_3
    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_4

    :cond_4
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/miui/server/SecurityManagerService;->removeAccessControlPassLocked(Lcom/miui/server/SecurityManagerService$UserState;Ljava/lang/String;)V

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v6, :cond_6

    if-eqz v5, :cond_6

    if-nez v4, :cond_5

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object v8, v0

    invoke-static/range {v7 .. v12}, Lmiui/security/SecurityManager;->getCheckAccessIntent(ZLjava/lang/String;Landroid/content/Intent;IZI)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v6, "miui.KEYGUARD_LOCKED"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v7, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object v9, v1

    move-object v11, v2

    invoke-static/range {v7 .. v12}, Lmiui/security/SecurityManagerCompat;->startActvityAsUser(Landroid/content/Context;Landroid/app/IApplicationThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v6, "SecurityManagerService"

    const-string/jumbo v7, "removeAccessControlPassAsUser startActvityAsUser error "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    goto :goto_3

    :cond_5
    iget-boolean v2, p0, Lcom/miui/server/SecurityManagerService;->mFingerprintNotify:Z

    if-eqz v2, :cond_6

    const-string v2, "com.miui.securitycenter"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "miui.intent.action.APP_LOCK_CLEAR_STATE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.miui.securitycenter"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6
    :goto_3
    return-void

    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public removeWakePathData(I)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/WakePathChecker;->removeWakePathData(I)V

    return-void
.end method

.method public resizeTask(ILandroid/graphics/Rect;I)I
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/util/MiuiMultiWindowUtils;->resizeTask(ILandroid/graphics/Rect;I)I

    move-result v0

    return v0
.end method

.method public saveIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->saveIconInner(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method public setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    invoke-static {p3}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p3

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/server/AccessController;->setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setAppHide(Z)Z
    .locals 2

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

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/server/SecurityManagerService$UserState;->access$2002(Lcom/miui/server/SecurityManagerService$UserState;I)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAppPrivacyStatus(Ljava/lang/String;Z)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWriteSecurePermission()V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "privacy_status_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "packageName can not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setApplicationAccessControlEnabled(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/server/SecurityManagerService;->setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V

    return-void
.end method

.method public setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    iput-boolean p2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v2, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v2

    iput-boolean p2, v2, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setApplicationMaskNotificationEnabledForUser(Ljava/lang/String;ZI)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    iput-boolean p2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->maskNotification:Z

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCoreRuntimePermissionEnabled(ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->setCoreRuntimePermissionEnabled(ZII)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "setCoreRuntimePermissionEnabled Permission DENIED"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCurrentNetworkState(I)Z
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    invoke-static {}, Lcom/android/server/MiuiNetworkManagementService;->getInstance()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/MiuiNetworkManagementService;->setCurrentNetworkState(I)Z

    move-result v0

    return v0
.end method

.method public setGameBoosterIBinder(Landroid/os/IBinder;IZ)V
    .locals 4

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result v0

    move p2, v0

    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-direct {v1, p0, v0, p1}, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;-><init>(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-static {v1}, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->access$1900(Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;)Landroid/os/IBinder;

    move-result-object v1

    if-eq p1, v1, :cond_1

    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-static {v1}, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->access$1900(Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    new-instance v1, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-direct {v1, p0, v0, p1}, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;-><init>(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_0

    :cond_1
    iput-boolean p3, v0, Lcom/miui/server/SecurityManagerService$UserState;->mIsGameMode:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "SecurityManagerService"

    const-string/jumbo v3, "setGameBoosterIBinder"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    monitor-exit p0

    return-void

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

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "List is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMiuiFirewallRule(Ljava/lang/String;III)Z
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    invoke-static {}, Lcom/android/server/MiuiNetworkManagementService;->getInstance()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/MiuiNetworkManagementService;->setMiuiFirewallRule(Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setPrivacyApp(Ljava/lang/String;IZ)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    iput-boolean p3, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStickWindowName(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gamebox_stick"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setTrackWakePathCallListLogEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/WakePathChecker;->setTrackWakePathCallListLogEnabled(Z)V

    return-void
.end method

.method public setWakeUpTime(Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.miui.permission.MANAGE_BOOT_TIME"

    const-string v2, "SecurityManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecurityManagerService;->putBootTimeToMap(Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->sucheduleWriteWakeUpTime()V

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->setTimeBoot()V

    return-void
.end method

.method public startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/server/SecuritySmsHandler;->startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public stopInterceptSmsBySender()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0}, Lcom/miui/server/SecuritySmsHandler;->stopInterceptSmsBySender()Z

    move-result v0

    return v0
.end method

.method public updateLauncherPackageNames()V
    .locals 2

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lmiui/security/WakePathChecker;->init(Landroid/content/Context;)V

    return-void
.end method

.method public watchGreenGuardProcess()V
    .locals 1

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/GreenGuardManagerService;->startWatchGreenguardProcess(Landroid/content/Context;)V

    return-void
.end method

.method public writeAppHideConfig(Z)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    const/4 v0, 0x0

    return v0
.end method
