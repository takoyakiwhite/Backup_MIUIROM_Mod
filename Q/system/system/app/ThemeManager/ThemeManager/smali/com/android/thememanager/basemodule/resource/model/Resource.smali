.class public Lcom/android/thememanager/basemodule/resource/model/Resource;
.super Ljava/lang/Object;
.source "Resource.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final STATUS_LOCAL:I = 0x1

.field public static final STATUS_OLD:I = 0x4

.field public static final STATUS_ONLINE:I = 0x2

.field private static final serialVersionUID:J = 0x7L


# instance fields
.field private extraMeta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

.field private onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-direct {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    .line 19
    new-instance v0, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-direct {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->extraMeta:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addBuildInPreview(Ljava/lang/String;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->addBuildInPreview(Ljava/lang/String;)V

    return-void
.end method

.method public addBuildInThumbnail(Ljava/lang/String;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->addBuildInThumbnail(Ljava/lang/String;)V

    return-void
.end method

.method public addParentResources(Lcom/android/thememanager/basemodule/resource/model/RelatedResource;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->addParentResources(Lcom/android/thememanager/basemodule/resource/model/RelatedResource;)V

    return-void
.end method

.method public addPreview(Lcom/android/thememanager/basemodule/resource/model/PathEntry;)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->addPreview(Lcom/android/thememanager/basemodule/resource/model/PathEntry;)V

    return-void
.end method

.method public addSubResources(Lcom/android/thememanager/basemodule/resource/model/RelatedResource;)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->addSubResources(Lcom/android/thememanager/basemodule/resource/model/RelatedResource;)V

    return-void
.end method

.method public addThumbnail(Lcom/android/thememanager/basemodule/resource/model/PathEntry;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->addThumbnail(Lcom/android/thememanager/basemodule/resource/model/PathEntry;)V

    return-void
.end method

.method public clearBuildInPreviews()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->clearBuildInPreviews()V

    return-void
.end method

.method public clearBuildInPreviewsMap()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->clearBuildInPreviewsMap()V

    return-void
.end method

.method public clearBuildInThumbnails()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->clearBuildInThumbnails()V

    return-void
.end method

.method public clearBuildInThumbnailsMap()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->clearBuildInThumbnailsMap()V

    return-void
.end method

.method public clearExtraMeta()V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->extraMeta:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public declared-synchronized clearLocalProperties()V
    .locals 1

    monitor-enter p0

    .line 24
    :try_start_0
    new-instance v0, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-direct {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearOnlineProperties()V
    .locals 1

    monitor-enter p0

    .line 28
    :try_start_0
    new-instance v0, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-direct {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearParentResources()V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->clearParentResources()V

    return-void
.end method

.method public clearPreviews()V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->clearPreviews()V

    return-void
.end method

.method public clearSubResources()V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->clearSubResources()V

    return-void
.end method

.method public clearThumbnails()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->clearThumbnails()V

    return-void
.end method

.method public declared-synchronized clone()Lcom/android/thememanager/basemodule/resource/model/Resource;
    .locals 1

    monitor-enter p0

    .line 507
    :try_start_0
    new-instance v0, Lcom/android/thememanager/basemodule/resource/model/Resource;

    invoke-direct {v0}, Lcom/android/thememanager/basemodule/resource/model/Resource;-><init>()V

    .line 508
    invoke-virtual {v0, p0}, Lcom/android/thememanager/basemodule/resource/model/Resource;->updateFrom(Lcom/android/thememanager/basemodule/resource/model/Resource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/android/thememanager/basemodule/resource/model/Resource;->clone()Lcom/android/thememanager/basemodule/resource/model/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getAssemblyId()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getAssemblyId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInPreviews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getBuildInPreviews()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInPreviews(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getBuildInPreviews(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBuildInPreviews(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1, p2}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getBuildInPreviews(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBuildInPreviewsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getBuildInPreviewsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInThumbnails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getBuildInThumbnails()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInThumbnails(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getBuildInThumbnails(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBuildInThumbnails(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1, p2}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getBuildInThumbnails(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBuildInThumbnailsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getBuildInThumbnailsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getCategory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorRingId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getColorRingId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentPath()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getContentPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraMeta(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->extraMeta:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getExtraMeta(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->extraMeta:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public getExtraMeta()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->extraMeta:Ljava/util/Map;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getHash()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderDescPic()Lcom/android/thememanager/basemodule/resource/model/PathEntry;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getHeaderDescPic()Lcom/android/thememanager/basemodule/resource/model/PathEntry;

    move-result-object v0

    return-object v0
.end method

.method public getIconCount()I
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getIconCount()I

    move-result v0

    return v0
.end method

.method public getLikeCount()Ljava/lang/Integer;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getInfo()Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;->getLikeCount()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getLocalId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalInfo()Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getInfo()Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPlatform()I
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getInfo()Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;->getPlatform()I

    move-result v0

    return v0
.end method

.method public getMainDescPic()Lcom/android/thememanager/basemodule/resource/model/PathEntry;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getMainDescPic()Lcom/android/thememanager/basemodule/resource/model/PathEntry;

    move-result-object v0

    return-object v0
.end method

.method public getMetaPath()Ljava/lang/String;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getMetaPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getModifiedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOnlineId()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnlineInfo()Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getInfo()Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getOnlinePath()Ljava/lang/String;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getOnlinePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginPrice()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getOriginPrice()I

    move-result v0

    return v0
.end method

.method public getParentResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/thememanager/basemodule/resource/model/RelatedResource;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getParentResources()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPreviews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/thememanager/basemodule/resource/model/PathEntry;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getPreviews()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getProductId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductPrice()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getProductPrice()I

    move-result v0

    return v0
.end method

.method public getResourceStorageType()Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties$ResourceStorageType;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getResourceStorageType()Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties$ResourceStorageType;

    move-result-object v0

    return-object v0
.end method

.method public getRightsPath()Ljava/lang/String;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getRightsPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScore()F
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getScore()F

    move-result v0

    return v0
.end method

.method public getSubResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/thememanager/basemodule/resource/model/RelatedResource;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getSubResources()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/thememanager/basemodule/resource/model/PathEntry;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getThumbnails()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getInfo()Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getInfo()Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTrialButtonTitle()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getTrialButtonTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrialDialogMessage()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getTrialDialogMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrialDialogTitle()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getTrialDialogTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrialTime()J
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getTrialTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasVideo()Z
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->hasVideo()Z

    move-result v0

    return v0
.end method

.method public isAuthorizedResource()Z
    .locals 8

    const/4 v0, 0x1

    return v0
.end method

.method public isCanNotPlay()Z
    .locals 3

    .line 405
    invoke-virtual {p0}, Lcom/android/thememanager/basemodule/resource/model/Resource;->getLocalInfo()Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;

    move-result-object v0

    const-string v1, "canNotPlay"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;->getExtraMeta(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isLike()Ljava/lang/Boolean;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getInfo()Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;->isLike()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOnShelf()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->isOnShelf()Z

    move-result v0

    return v0
.end method

.method public isProductBought()Z
    .locals 8

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportHomeSearchBar()Z
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->isSupportHomeSearchBar()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized mergeLocalProperties(Lcom/android/thememanager/basemodule/resource/model/Resource;)V
    .locals 1

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    iget-object p1, p1, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->updateFrom(Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized mergeOnlineProperties(Lcom/android/thememanager/basemodule/resource/model/Resource;)V
    .locals 1

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    iget-object p1, p1, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->updateFrom(Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public putBuildInPreviews(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1, p2}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->putBuildInPreviews(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public putBuildInThumbnails(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1, p2}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->putBuildInThumbnails(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public putExtraMeta(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->extraMeta:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/android/thememanager/basemodule/resource/model/Resource;->clearLocalProperties()V

    .line 33
    invoke-virtual {p0}, Lcom/android/thememanager/basemodule/resource/model/Resource;->clearOnlineProperties()V

    .line 34
    invoke-virtual {p0}, Lcom/android/thememanager/basemodule/resource/model/Resource;->clearExtraMeta()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAssemblyId(Ljava/lang/String;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setAssemblyId(Ljava/lang/String;)V

    return-void
.end method

.method public setBuildInPreviews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->setBuildInPreviews(Ljava/util/List;)V

    return-void
.end method

.method public setBuildInPreviewsMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->setBuildInPreviewsMap(Ljava/util/Map;)V

    return-void
.end method

.method public setBuildInThumbnails(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->setBuildInThumbnails(Ljava/util/List;)V

    return-void
.end method

.method public setBuildInThumbnailsMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->setBuildInThumbnailsMap(Ljava/util/Map;)V

    return-void
.end method

.method public setCanNotPlay(Z)V
    .locals 2

    .line 409
    invoke-virtual {p0}, Lcom/android/thememanager/basemodule/resource/model/Resource;->getLocalInfo()Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;

    move-result-object v0

    const-string v1, "canNotPlay"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;->putExtraMeta(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setCategory(Ljava/lang/String;)V

    return-void
.end method

.method public setColorRingId(Ljava/lang/String;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setColorRingId(Ljava/lang/String;)V

    return-void
.end method

.method public setContentPath(Ljava/lang/String;)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->setContentPath(Ljava/lang/String;)V

    return-void
.end method

.method public setDownloadPath(Ljava/lang/String;)V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setDownloadPath(Ljava/lang/String;)V

    return-void
.end method

.method public setExtraMeta(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 457
    iput-object p1, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->extraMeta:Ljava/util/Map;

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->setHash(Ljava/lang/String;)V

    return-void
.end method

.method public setHeaderDescPic(Lcom/android/thememanager/basemodule/resource/model/PathEntry;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setHeaderDescPic(Lcom/android/thememanager/basemodule/resource/model/PathEntry;)V

    return-void
.end method

.method public setIconCount(I)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setIconCount(I)V

    return-void
.end method

.method public setLike(Ljava/lang/Boolean;)V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getInfo()Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;->setLike(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setLikeCount(Ljava/lang/Integer;)V
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->getInfo()Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;->setLikeCount(Ljava/lang/Integer;)V

    return-void
.end method

.method public setLocalId(Ljava/lang/String;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->setLocalId(Ljava/lang/String;)V

    return-void
.end method

.method public setLocalInfo(Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;)V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->setInfo(Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;)V

    return-void
.end method

.method public setLocalPlatform(I)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->getInfo()Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;->setPlatform(I)V

    return-void
.end method

.method public setMainDescPic(Lcom/android/thememanager/basemodule/resource/model/PathEntry;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setMainDescPic(Lcom/android/thememanager/basemodule/resource/model/PathEntry;)V

    return-void
.end method

.method public setMetaPath(Ljava/lang/String;)V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->setMetaPath(Ljava/lang/String;)V

    return-void
.end method

.method public setModifiedTime(J)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1, p2}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->setModifiedTime(J)V

    return-void
.end method

.method public setOnShelf(Z)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setOnShelf(Z)V

    return-void
.end method

.method public setOnlineId(Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setOnlineId(Ljava/lang/String;)V

    return-void
.end method

.method public setOnlineInfo(Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;)V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setInfo(Lcom/android/thememanager/basemodule/resource/model/ResourceInfo;)V

    return-void
.end method

.method public setOnlinePath(Ljava/lang/String;)V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setOnlinePath(Ljava/lang/String;)V

    return-void
.end method

.method public setOriginPrice(I)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setOriginPrice(I)V

    return-void
.end method

.method public setParentResources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/thememanager/basemodule/resource/model/RelatedResource;",
            ">;)V"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->setParentResources(Ljava/util/List;)V

    return-void
.end method

.method public setPreviews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/thememanager/basemodule/resource/model/PathEntry;",
            ">;)V"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setPreviews(Ljava/util/List;)V

    return-void
.end method

.method public setProductBought(Z)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setProductBought(Z)V

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setProductId(Ljava/lang/String;)V

    return-void
.end method

.method public setProductPrice(I)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setProductPrice(I)V

    return-void
.end method

.method public setResourceStorageType(Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties$ResourceStorageType;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->setResourceStorageType(Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties$ResourceStorageType;)V

    return-void
.end method

.method public setRightsPath(Ljava/lang/String;)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->setRightsPath(Ljava/lang/String;)V

    return-void
.end method

.method public setScore(F)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setScore(F)V

    return-void
.end method

.method public setSubResources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/thememanager/basemodule/resource/model/RelatedResource;",
            ">;)V"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->setSubResources(Ljava/util/List;)V

    return-void
.end method

.method public setSupportHomeSearchBar(Z)V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->localProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceLocalProperties;->setSupportHomeSearchBar(Z)V

    return-void
.end method

.method public setThumbnails(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/thememanager/basemodule/resource/model/PathEntry;",
            ">;)V"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setThumbnails(Ljava/util/List;)V

    return-void
.end method

.method public setTrialButtonTitle(Ljava/lang/String;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setTrialButtonTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setTrialDialogMessage(Ljava/lang/String;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setTrialDialogMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setTrialDialogTitle(Ljava/lang/String;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setTrialDialogTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setTrialTime(J)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1, p2}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setTrialTime(J)V

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->onlineProperties:Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;

    invoke-virtual {v0, p1, p2}, Lcom/android/thememanager/basemodule/resource/model/ResourceOnlineProperties;->setVideoUrl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized updateFrom(Lcom/android/thememanager/basemodule/resource/model/Resource;)V
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/thememanager/basemodule/resource/model/Resource;->mergeLocalProperties(Lcom/android/thememanager/basemodule/resource/model/Resource;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/thememanager/basemodule/resource/model/Resource;->mergeOnlineProperties(Lcom/android/thememanager/basemodule/resource/model/Resource;)V

    .line 48
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->extraMeta:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 49
    iget-object v0, p0, Lcom/android/thememanager/basemodule/resource/model/Resource;->extraMeta:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/thememanager/basemodule/resource/model/Resource;->extraMeta:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
