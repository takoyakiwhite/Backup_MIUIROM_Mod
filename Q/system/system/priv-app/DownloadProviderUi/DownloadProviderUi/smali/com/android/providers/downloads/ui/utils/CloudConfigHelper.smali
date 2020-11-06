.class public final Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;
.super Ljava/lang/Object;
.source "CloudConfigHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/utils/CloudConfigHelper$SingleInstance;
    }
.end annotation


# static fields
.field private static final CLOUD_DEBUG:Z


# instance fields
.field private mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

.field private mConfigChangedLockObj:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private updateDelay:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x5265c00

    .line 54
    iput-wide v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->updateDelay:J

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mConfigChangedLockObj:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;Lcom/android/providers/downloads/ui/api/cloudControl/CloudConfigurationResponse;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->saveCloudConfig(Lcom/android/providers/downloads/ui/api/cloudControl/CloudConfigurationResponse;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;)Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;)Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mConfigChangedLockObj:Ljava/lang/Object;

    return-object p0
.end method

.method public static getInstance()Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;
    .locals 1

    .line 70
    invoke-static {}, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper$SingleInstance;->access$000()Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;

    move-result-object v0

    return-object v0
.end method

.method private loadConfigFromSdcard()V
    .locals 1

    .line 233
    new-instance v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper$3;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper$3;-><init>(Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;)V

    invoke-static {v0}, Lcom/michael/corelib/coreutils/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    return-void
.end method

.method private saveCloudConfig(Lcom/android/providers/downloads/ui/api/cloudControl/CloudConfigurationResponse;)V
    .locals 5

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[GlobalApplication::updateCloudConfigration]] response = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/providers/downloads/ui/api/cloudControl/CloudConfigurationResponse;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    if-eqz p1, :cond_b

    .line 142
    iget-object v0, p1, Lcom/android/providers/downloads/ui/api/cloudControl/CloudConfigurationResponse;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p1, Lcom/android/providers/downloads/ui/api/cloudControl/CloudConfigurationResponse;->data:Ljava/lang/String;

    const-string v2, "{}"

    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 144
    iget-object v0, p1, Lcom/android/providers/downloads/ui/api/cloudControl/CloudConfigurationResponse;->data:Ljava/lang/String;

    const-class v3, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    invoke-static {v0, v3}, Lcom/michael/corelib/internet/core/util/JsonUtils;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-nez v0, :cond_1

    const-string p0, "[[GlobalApplication::fetchOrUpdateConfigration]] parse failed"

    .line 146
    invoke-static {p0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    return-void

    .line 149
    :cond_1
    sget-boolean v3, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "[[GlobalApplication::fetchOrUpdateConfigration]] onSuccess"

    .line 150
    invoke-static {v3}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 152
    :cond_2
    invoke-static {}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->getInstance()Lcom/android/providers/downloads/ui/utils/PreferenceUtil;

    move-result-object v3

    iget-object v4, v0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->setCloudVersion(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->getInstance()Lcom/android/providers/downloads/ui/utils/PreferenceUtil;

    move-result-object v3

    iget-object v4, v0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->groupName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->setCloudGroupName(Ljava/lang/String;)V

    .line 155
    iget-object v3, p1, Lcom/android/providers/downloads/ui/api/cloudControl/CloudConfigurationResponse;->data:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/android/providers/downloads/ui/api/cloudControl/CloudConfigurationResponse;->data:Ljava/lang/String;

    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 157
    invoke-static {}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->getInstance()Lcom/android/providers/downloads/ui/utils/PreferenceUtil;

    move-result-object v1

    iget-object v3, p1, Lcom/android/providers/downloads/ui/api/cloudControl/CloudConfigurationResponse;->data:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->setCloudConfigrationInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 159
    :cond_3
    invoke-static {}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->getInstance()Lcom/android/providers/downloads/ui/utils/PreferenceUtil;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->setCloudConfigrationInfo(Ljava/lang/String;)V

    .line 162
    :goto_1
    iget-object v1, v0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->version:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/android/providers/downloads/ui/api/cloudControl/CloudConfigurationResponse;->data:Ljava/lang/String;

    .line 163
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/android/providers/downloads/ui/api/cloudControl/CloudConfigurationResponse;->data:Ljava/lang/String;

    .line 164
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 165
    invoke-static {}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->getInstance()Lcom/android/providers/downloads/ui/utils/PreferenceUtil;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->setLastCloudUpdateTime(J)V

    goto :goto_2

    .line 167
    :cond_4
    invoke-static {}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->getInstance()Lcom/android/providers/downloads/ui/utils/PreferenceUtil;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->setLastCloudUpdateTime(J)V

    .line 170
    :goto_2
    iget-wide v1, p1, Lcom/android/providers/downloads/ui/api/cloudControl/CloudConfigurationResponse;->nextUpdateTime:J

    iput-wide v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->updateDelay:J

    .line 171
    invoke-static {}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->getInstance()Lcom/android/providers/downloads/ui/utils/PreferenceUtil;

    move-result-object p1

    iget-wide v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->updateDelay:J

    invoke-virtual {p1, v1, v2}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->setCloudFetchDelay(J)V

    .line 173
    iget-object p1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz p1, :cond_8

    .line 174
    sget-boolean p1, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz p1, :cond_5

    const-string p1, "[[GlobalApplication::updateCloudConfigration]] onSuccess : has old Cloud Config, So update CLOUD_UPDATE"

    .line 175
    invoke-static {p1}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 177
    :cond_5
    iget-object p1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->version:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object p1, v2

    :goto_3
    if-eqz v0, :cond_7

    .line 178
    iget-object v2, v0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->version:Ljava/lang/String;

    .line 179
    :cond_7
    invoke-static {p1, v2, v1}, Lcom/android/providers/downloads/ui/statistics/AdStatistics;->reportCloudManageUpdate(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    .line 181
    :cond_8
    sget-boolean p1, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz p1, :cond_9

    const-string p1, "[[GlobalApplication::updateCloudConfigration]] onSuccess : has old Cloud Config, So update CLOUD_GET"

    .line 182
    invoke-static {p1}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    :cond_9
    if-eqz v0, :cond_a

    .line 186
    iget-object v2, v0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->version:Ljava/lang/String;

    .line 188
    :cond_a
    invoke-static {v2, v1}, Lcom/android/providers/downloads/ui/statistics/AdStatistics;->reportCloudManageGet(Ljava/lang/String;I)V

    .line 191
    :goto_4
    new-instance p1, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper$2;

    invoke-direct {v1, p0, v0}, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper$2;-><init>(Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    iget-object p1, v0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->sniffSuffixWords:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/providers/downloads/ui/utils/StringUtil;->updateSuffixPattern(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/android/providers/downloads/ui/setting/DPSharePreferenceInstance;->getInstance()Lcom/android/providers/downloads/ui/setting/DPSharePreferenceInstance;

    move-result-object p1

    iget-object v0, v0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->dataLimitConfig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/providers/downloads/ui/setting/DPSharePreferenceInstance;->setDataLimitConfig(Ljava/lang/String;)V

    .line 207
    :cond_b
    sget-boolean p1, Lcom/android/providers/downloads/ui/config/AppConfig;->DEBUG:Z

    if-eqz p1, :cond_c

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[[GlobalApplication::updateCloudConfigration]] onSuccess : current Response = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public fetchOrUpdateConfigration()V
    .locals 3

    .line 105
    sget-boolean v0, Lcom/android/providers/downloads/ui/config/AppConfig;->IS_CLOUD_CONFIG_FROM_SD:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/providers/downloads/ui/utils/BuildUtils;->isAlphaVersion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/providers/downloads/ui/utils/BuildUtils;->isDevVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->loadConfigFromSdcard()V

    return-void

    .line 111
    :cond_1
    new-instance v0, Lcom/android/providers/downloads/ui/api/cloudControl/CloudConfigurationRequest;

    invoke-direct {v0}, Lcom/android/providers/downloads/ui/api/cloudControl/CloudConfigurationRequest;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/michael/corelib/internet/InternetClient;->getInstance(Landroid/content/Context;)Lcom/michael/corelib/internet/InternetClient;

    move-result-object v1

    new-instance v2, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper$1;

    invoke-direct {v2, p0}, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper$1;-><init>(Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;)V

    invoke-virtual {v1, v0, v2}, Lcom/michael/corelib/internet/InternetClient;->postRequest(Lcom/michael/corelib/internet/core/RequestBase;Lcom/michael/corelib/internet/InternetClient$NetworkCallback;)V

    return-void
.end method

.method public getAdButtonType()I
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->adStyle:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    .line 492
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[CloudConfigHelper::adButtonType]] adButtonType : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-object v2, v2, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->adStyle:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 496
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdButtonType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-object v2, v2, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->adStyle:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 497
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-object p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->adStyle:[I

    aget p0, p0, v1

    return p0

    :cond_1
    return v1
.end method

.method public getAdSummaryType()I
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->adStyle:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 504
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[CloudConfigHelper::getAdSummaryType]] getAdSummaryType : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-object v2, v2, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->adStyle:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 508
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdSummaryType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-object v2, v2, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->adStyle:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 509
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-object p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->adStyle:[I

    aget p0, p0, v1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getAdType()Ljava/lang/String;
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    .line 415
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::Adtype]] Adtype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-object v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->adType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-object v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->adType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-object v0, v0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->adType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-object p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->adType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, "8"

    :goto_0
    return-object p0
.end method

.method public getAppSubjectType()I
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    .line 530
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::getAppSubjectType]] : getAppSubjectType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->appSubjectType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 534
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppSubjectType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->appSubjectType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 535
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->appSubjectType:I

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getCloudConfigVersion()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->version:Ljava/lang/String;

    .line 225
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-object p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->version:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getDetailAdType()I
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    .line 613
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::detailAdType]] detailAdType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->detailAdType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 616
    :cond_0
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->detailAdType:I

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getExtraAdCount()I
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    .line 572
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::getExtraAdCount]] getExtraAdCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-object v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->extraAdCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 575
    :cond_0
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-object p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->extraAdCount:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, ""

    .line 577
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "3"

    .line 581
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x3

    return p0
.end method

.method public getExtraAdType()I
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    .line 556
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::getExtraAdType]] getExtraAdType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->extraAdType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 559
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getExtraAdType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->extraAdType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 560
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->extraAdType:I

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0
.end method

.method public getHomeAdRefreshType()I
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    .line 432
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::Adtype]] Adtype : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->refreshType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->refreshType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 436
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->refreshType:I

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getRankType()I
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    .line 480
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::RankType]] rankType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->rankType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 484
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRankType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->rankType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 485
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->rankType:I

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getSearchSuffixWords()[Ljava/lang/String;
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->sniffSuffixWords:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::SearchSuffixWords]] SearchSuffixWords : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-object v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->sniffSuffixWords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 400
    :cond_0
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-object p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->sniffSuffixWords:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, " \u8fc5\u96f7\u4e0b\u8f7d, thunder, magent, mp4, ftp, ed2k"

    :goto_0
    const-string v0, ","

    .line 402
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTestSpeedAdTypeAndPos()I
    .locals 2

    .line 665
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    .line 666
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::testSpeedAdTypeAndPos]] testSpeedAdTypeAndPos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->testSpeedAdTypeAndPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 669
    :cond_0
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->testSpeedAdTypeAndPos:I

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getVipComboOrder()[I
    .locals 2

    .line 331
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "[[CloudConfigHelper::getVipComboOrder]]"

    .line 332
    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_2

    .line 335
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_1

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::get vip combo]]  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-object v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->vipCombo:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 338
    :cond_1
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-object p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->vipCombo:[I

    return-object p0

    :cond_2
    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    .line 74
    iput-object p1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->getInstance()Lcom/android/providers/downloads/ui/utils/PreferenceUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->getCloudFetchDelay()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->updateDelay:J

    .line 76
    iget-wide v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->updateDelay:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x5265c00

    :goto_0
    iput-wide v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->updateDelay:J

    .line 80
    sget-boolean p1, Lcom/android/providers/downloads/ui/config/AppConfig;->IS_CLOUD_CONFIG_FROM_SD:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/providers/downloads/ui/utils/BuildUtils;->isAlphaVersion()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/providers/downloads/ui/utils/BuildUtils;->isDevVersion()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->loadConfigFromSdcard()V

    return-void

    .line 84
    :cond_2
    invoke-static {}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->getInstance()Lcom/android/providers/downloads/ui/utils/PreferenceUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->getCloudVersion()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 86
    invoke-static {}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->getInstance()Lcom/android/providers/downloads/ui/utils/PreferenceUtil;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->setCloudConfigrationInfo(Ljava/lang/String;)V

    .line 88
    :cond_3
    invoke-static {}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->getInstance()Lcom/android/providers/downloads/ui/utils/PreferenceUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->getCloudConfigrationInfo()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "{}"

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 91
    const-class v0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    invoke-static {p1, v0}, Lcom/michael/corelib/internet/core/util/JsonUtils;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iput-object p1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    .line 94
    :cond_4
    sget-boolean p1, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz p1, :cond_5

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CloudConfigHelper at init cloud info = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public isAutoOpenApp()Z
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    .line 603
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::isAutoOpenApp]] isAutoOpenApp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isAutoOpenApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 606
    :cond_0
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isAutoOpenApp:Z

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isDefAdType()Z
    .locals 1

    .line 427
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->getAdType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isNewAdApi()Z
    .locals 2

    .line 622
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    .line 623
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::isNewAdApi]] isNewAdApi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isNewAdApi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 626
    :cond_0
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isNewAdApi:Z

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isShouldShowAd()Z
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    .line 366
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::isShouldShowAd]] isShouldShowAd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isRecommenAdShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 369
    :cond_0
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isRecommenAdShow:Z

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isShouldShowAppSubject()Z
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    .line 520
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::isShouldShowAppSubject]] isShouldShowAppSubject : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isAppSubjectShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 523
    :cond_0
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isAppSubjectShow:Z

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isShouldShowExtraAd()Z
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    .line 542
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::isShouldShowExtraAd]] isShouldShowExtraAd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isExtraAdShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 545
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShouldShowExtraAd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isExtraAdShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 546
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isExtraAdShow:Z

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isShouldShowRankGuide()Z
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    .line 589
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::isShouldShowRankGuide]] isShouldShowRankGuide:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isRankGuideShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 592
    :cond_0
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isRankGuideShow:Z

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isShouldShowRecommendInfo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShouldShowTestSpeed()Z
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    .line 651
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::isTestSpeedShow]] isTestSpeedShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isTestSpeedShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 654
    :cond_0
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isTestSpeedShow:Z

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isShouldShowVideoEntrance()Z
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    .line 637
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::isShouldShowVideoEntrance]] isShouldShowVideoEntrance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isVideoEnterShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 640
    :cond_0
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isVideoEnterShow:Z

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isShowFinanceAd()Z
    .locals 2

    .line 689
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    .line 690
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::isFinanceAdShow]] isFinanceAdShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isFinanceAdShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 693
    :cond_0
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isFinanceAdShow:Z

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isShowTestSpeedAd()Z
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    .line 680
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::isTestSpeedAdShow]] isTestSpeedAdShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isTestSpeedAdShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 683
    :cond_0
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isTestSpeedAdShow:Z

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isSniffSupport(Ljava/lang/String;)Z
    .locals 3

    .line 312
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::isSniffSupport]] pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, v0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->sniffSupportList:Ljava/util/List;

    .line 318
    sget-boolean v1, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v1, :cond_1

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[CloudConfigHelper::sniffSupportList]] list : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-object p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->sniffSupportList:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 321
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isStableShowActivateNotify()Z
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_1

    .line 447
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::isStableShowActivateNotify]] isStableShowActivateNotify : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isStableShowActivateNotify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 451
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isStableShowActivateNotify: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isStableShowActivateNotify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 452
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->isStableShowActivateNotify:Z

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public shouldUpdateCloudConfig()Z
    .locals 4

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 214
    invoke-static {}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->getInstance()Lcom/android/providers/downloads/ui/utils/PreferenceUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/providers/downloads/ui/utils/PreferenceUtil;->getLastCloudUpdateTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 215
    iget-wide v2, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->updateDelay:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public sniffTermsPlan()I
    .locals 2

    .line 289
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "[[CloudConfigHelper::sniffTermsPlan]]"

    .line 290
    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_2

    .line 294
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_1

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::sniffTermsPlan]] plan : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->sniffTermsplan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 297
    :cond_1
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->sniffTermsplan:I

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public supportExlpore()Z
    .locals 2

    .line 267
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "[[CloudConfigHelper::supportExlpore]]"

    .line 268
    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    if-eqz v0, :cond_2

    .line 272
    sget-boolean v0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->CLOUD_DEBUG:Z

    if-eqz v0, :cond_1

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[CloudConfigHelper::supportExlpore]] Explore support : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean v1, v1, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->explore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/config/AppConfig;->LOGD(Ljava/lang/String;)V

    .line 275
    :cond_1
    iget-object p0, p0, Lcom/android/providers/downloads/ui/utils/CloudConfigHelper;->mCloudConfigrationData:Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;

    iget-boolean p0, p0, Lcom/android/providers/downloads/ui/api/item/CloudConfigrationData;->explore:Z

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public supportRank()Z
    .locals 2

    const/4 v0, 0x0

    return v0
.end method
