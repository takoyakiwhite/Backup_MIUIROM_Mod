.class public Lcom/android/thememanager/f/q;
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localProperties:Lcom/android/thememanager/f/s;

.field private onlineProperties:Lcom/android/thememanager/f/t;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/android/thememanager/f/s;

    invoke-direct {v0}, Lcom/android/thememanager/f/s;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    .line 20
    new-instance v0, Lcom/android/thememanager/f/t;

    invoke-direct {v0}, Lcom/android/thememanager/f/t;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/f/q;->extraMeta:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addBuildInPreview(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/s;->addBuildInPreview(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public addBuildInThumbnail(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/s;->addBuildInThumbnail(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public addParentResources(Lcom/android/thememanager/f/n;)V
    .registers 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/s;->addParentResources(Lcom/android/thememanager/f/n;)V

    .line 335
    return-void
.end method

.method public addPreview(Lcom/android/thememanager/f/j;)V
    .registers 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->addPreview(Lcom/android/thememanager/f/j;)V

    .line 295
    return-void
.end method

.method public addSubResources(Lcom/android/thememanager/f/n;)V
    .registers 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/s;->addSubResources(Lcom/android/thememanager/f/n;)V

    .line 351
    return-void
.end method

.method public addThumbnail(Lcom/android/thememanager/f/j;)V
    .registers 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->addThumbnail(Lcom/android/thememanager/f/j;)V

    .line 271
    return-void
.end method

.method public clearBuildInPreviews()V
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->clearBuildInPreviews()V

    .line 211
    return-void
.end method

.method public clearBuildInPreviewsMap()V
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->clearBuildInPreviewsMap()V

    .line 259
    return-void
.end method

.method public clearBuildInThumbnails()V
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->clearBuildInThumbnails()V

    .line 195
    return-void
.end method

.method public clearBuildInThumbnailsMap()V
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->clearBuildInThumbnailsMap()V

    .line 235
    return-void
.end method

.method public clearExtraMeta()V
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/thememanager/f/q;->extraMeta:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 468
    return-void
.end method

.method public declared-synchronized clearLocalProperties()V
    .registers 2

    .prologue
    .line 25
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/thememanager/f/s;

    invoke-direct {v0}, Lcom/android/thememanager/f/s;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 26
    monitor-exit p0

    return-void

    .line 25
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearOnlineProperties()V
    .registers 2

    .prologue
    .line 29
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/thememanager/f/t;

    invoke-direct {v0}, Lcom/android/thememanager/f/t;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 30
    monitor-exit p0

    return-void

    .line 29
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearParentResources()V
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->clearParentResources()V

    .line 339
    return-void
.end method

.method public clearPreviews()V
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->clearPreviews()V

    .line 299
    return-void
.end method

.method public clearSubResources()V
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->clearSubResources()V

    .line 355
    return-void
.end method

.method public clearThumbnails()V
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->clearThumbnails()V

    .line 275
    return-void
.end method

.method public declared-synchronized clone()Lcom/android/thememanager/f/q;
    .registers 2

    .prologue
    .line 500
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/thememanager/f/q;

    invoke-direct {v0}, Lcom/android/thememanager/f/q;-><init>()V

    .line 501
    invoke-virtual {v0, p0}, Lcom/android/thememanager/f/q;->updateFrom(Lcom/android/thememanager/f/q;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 502
    monitor-exit p0

    return-object v0

    .line 500
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/android/thememanager/f/q;->clone()Lcom/android/thememanager/f/q;

    move-result-object v0

    return-object v0
.end method

.method public getAssemblyId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getAssemblyId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInPreviews()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->getBuildInPreviews()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInPreviews(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/s;->getBuildInPreviews(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInPreviews(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1, p2}, Lcom/android/thememanager/f/s;->getBuildInPreviews(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInPreviewsMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->getBuildInPreviewsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInThumbnails()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->getBuildInThumbnails()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInThumbnails(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/s;->getBuildInThumbnails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInThumbnails(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1, p2}, Lcom/android/thememanager/f/s;->getBuildInThumbnails(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInThumbnailsMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->getBuildInThumbnailsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getCategory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorRingId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getColorRingId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->getContentPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraMeta(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/thememanager/f/q;->extraMeta:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExtraMeta(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/thememanager/f/q;->extraMeta:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 459
    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    move-object v0, p2

    goto :goto_a
.end method

.method public getExtraMeta()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/thememanager/f/q;->extraMeta:Ljava/util/Map;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->getHash()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderDescPic()Lcom/android/thememanager/f/j;
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getHeaderDescPic()Lcom/android/thememanager/f/j;

    move-result-object v0

    return-object v0
.end method

.method public getIconCount()I
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getIconCount()I

    move-result v0

    return v0
.end method

.method public getLikeCount()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getInfo()Lcom/android/thememanager/f/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/thememanager/f/r;->getLikeCount()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLocalId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->getLocalId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalInfo()Lcom/android/thememanager/f/r;
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->getInfo()Lcom/android/thememanager/f/r;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPlatform()I
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->getInfo()Lcom/android/thememanager/f/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/thememanager/f/r;->getPlatform()I

    move-result v0

    return v0
.end method

.method public getMainDescPic()Lcom/android/thememanager/f/j;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getMainDescPic()Lcom/android/thememanager/f/j;

    move-result-object v0

    return-object v0
.end method

.method public getMetaPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->getMetaPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModifiedTime()J
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->getModifiedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOnlineId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnlineInfo()Lcom/android/thememanager/f/r;
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getInfo()Lcom/android/thememanager/f/r;

    move-result-object v0

    return-object v0
.end method

.method public getOnlinePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getOnlinePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginPrice()I
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getOriginPrice()I

    move-result v0

    return v0
.end method

.method public getParentResources()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/thememanager/f/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->getParentResources()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPreviews()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/thememanager/f/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getPreviews()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getProductId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductPrice()I
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getProductPrice()I

    move-result v0

    return v0
.end method

.method public getResourceStorageType()Lcom/android/thememanager/f/s$a;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->getResourceStorageType()Lcom/android/thememanager/f/s$a;

    move-result-object v0

    return-object v0
.end method

.method public getRightsPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->getRightsPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScore()F
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getScore()F

    move-result v0

    return v0
.end method

.method public getSubResources()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/thememanager/f/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->getSubResources()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/thememanager/f/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getThumbnails()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getInfo()Lcom/android/thememanager/f/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/thememanager/f/r;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 439
    if-nez v0, :cond_16

    .line 440
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->getInfo()Lcom/android/thememanager/f/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/thememanager/f/r;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 442
    :cond_16
    return-object v0
.end method

.method public getTrialButtonTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getTrialButtonTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrialDialogMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getTrialDialogMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrialDialogTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getTrialDialogTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrialTime()J
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getTrialTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasVideo()Z
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->hasVideo()Z

    move-result v0

    return v0
.end method

.method public isAuthorizedResource()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public isCanNotPlay()Z
    .registers 4

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/thememanager/f/q;->getLocalInfo()Lcom/android/thememanager/f/r;

    move-result-object v0

    const-string v1, "canNotPlay"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/android/thememanager/f/r;->getExtraMeta(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isLike()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getInfo()Lcom/android/thememanager/f/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/thememanager/f/r;->isLike()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isProductBought()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportHomeSearchBar()Z
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->isSupportHomeSearchBar()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized mergeLocalProperties(Lcom/android/thememanager/f/q;)V
    .registers 4

    .prologue
    .line 39
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    iget-object v1, p1, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, v1}, Lcom/android/thememanager/f/s;->updateFrom(Lcom/android/thememanager/f/s;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 40
    monitor-exit p0

    return-void

    .line 39
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mergeOnlineProperties(Lcom/android/thememanager/f/q;)V
    .registers 4

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    iget-object v1, p1, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, v1}, Lcom/android/thememanager/f/t;->updateFrom(Lcom/android/thememanager/f/t;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public putBuildInPreviews(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1, p2}, Lcom/android/thememanager/f/s;->putBuildInPreviews(Ljava/lang/String;Ljava/util/List;)V

    .line 255
    return-void
.end method

.method public putBuildInThumbnails(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1, p2}, Lcom/android/thememanager/f/s;->putBuildInThumbnails(Ljava/lang/String;Ljava/util/List;)V

    .line 231
    return-void
.end method

.method public putExtraMeta(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/thememanager/f/q;->extraMeta:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    return-void
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 33
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/thememanager/f/q;->clearLocalProperties()V

    .line 34
    invoke-virtual {p0}, Lcom/android/thememanager/f/q;->clearOnlineProperties()V

    .line 35
    invoke-virtual {p0}, Lcom/android/thememanager/f/q;->clearExtraMeta()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 36
    monitor-exit p0

    return-void

    .line 33
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAssemblyId(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->setAssemblyId(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public setBuildInPreviews(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/s;->setBuildInPreviews(Ljava/util/List;)V

    .line 203
    return-void
.end method

.method public setBuildInPreviewsMap(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/s;->setBuildInPreviewsMap(Ljava/util/Map;)V

    .line 243
    return-void
.end method

.method public setBuildInThumbnails(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/s;->setBuildInThumbnails(Ljava/util/List;)V

    .line 187
    return-void
.end method

.method public setBuildInThumbnailsMap(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/s;->setBuildInThumbnailsMap(Ljava/util/Map;)V

    .line 219
    return-void
.end method

.method public setCanNotPlay(Z)V
    .registers 5

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/android/thememanager/f/q;->getLocalInfo()Lcom/android/thememanager/f/r;

    move-result-object v0

    const-string v1, "canNotPlay"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/thememanager/f/r;->putExtraMeta(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->setCategory(Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method public setColorRingId(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->setColorRingId(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public setContentPath(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/s;->setContentPath(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public setDownloadPath(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->setDownloadPath(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public setExtraMeta(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/thememanager/f/q;->extraMeta:Ljava/util/Map;

    .line 451
    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/s;->setHash(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public setHeaderDescPic(Lcom/android/thememanager/f/j;)V
    .registers 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->setHeaderDescPic(Lcom/android/thememanager/f/j;)V

    .line 315
    return-void
.end method

.method public setIconCount(I)V
    .registers 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->setIconCount(I)V

    .line 323
    return-void
.end method

.method public setLike(Ljava/lang/Boolean;)V
    .registers 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getInfo()Lcom/android/thememanager/f/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/r;->setLike(Ljava/lang/Boolean;)V

    .line 488
    return-void
.end method

.method public setLikeCount(Ljava/lang/Integer;)V
    .registers 3

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0}, Lcom/android/thememanager/f/t;->getInfo()Lcom/android/thememanager/f/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/r;->setLikeCount(Ljava/lang/Integer;)V

    .line 496
    return-void
.end method

.method public setLocalId(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/s;->setLocalId(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public setLocalInfo(Lcom/android/thememanager/f/r;)V
    .registers 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/s;->setInfo(Lcom/android/thememanager/f/r;)V

    .line 427
    return-void
.end method

.method public setLocalPlatform(I)V
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0}, Lcom/android/thememanager/f/s;->getInfo()Lcom/android/thememanager/f/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/r;->setPlatform(I)V

    .line 163
    return-void
.end method

.method public setMainDescPic(Lcom/android/thememanager/f/j;)V
    .registers 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->setMainDescPic(Lcom/android/thememanager/f/j;)V

    .line 307
    return-void
.end method

.method public setMetaPath(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/s;->setMetaPath(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public setModifiedTime(J)V
    .registers 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1, p2}, Lcom/android/thememanager/f/s;->setModifiedTime(J)V

    .line 179
    return-void
.end method

.method public setOnlineId(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->setOnlineId(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public setOnlineInfo(Lcom/android/thememanager/f/r;)V
    .registers 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->setInfo(Lcom/android/thememanager/f/r;)V

    .line 435
    return-void
.end method

.method public setOnlinePath(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->setOnlinePath(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public setOriginPrice(I)V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->setOriginPrice(I)V

    .line 107
    return-void
.end method

.method public setParentResources(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/thememanager/f/n;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/s;->setParentResources(Ljava/util/List;)V

    .line 331
    return-void
.end method

.method public setPreviews(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/thememanager/f/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->setPreviews(Ljava/util/List;)V

    .line 283
    return-void
.end method

.method public setProductBought(Z)V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->setProductBought(Z)V

    .line 123
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->setProductId(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setProductPrice(I)V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->setProductPrice(I)V

    .line 99
    return-void
.end method

.method public setResourceStorageType(Lcom/android/thememanager/f/s$a;)V
    .registers 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/s;->setResourceStorageType(Lcom/android/thememanager/f/s$a;)V

    .line 363
    return-void
.end method

.method public setRightsPath(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/s;->setRightsPath(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public setScore(F)V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->setScore(F)V

    .line 115
    return-void
.end method

.method public setSubResources(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/thememanager/f/n;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/s;->setSubResources(Ljava/util/List;)V

    .line 347
    return-void
.end method

.method public setSupportHomeSearchBar(Z)V
    .registers 3

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/thememanager/f/q;->localProperties:Lcom/android/thememanager/f/s;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/s;->setSupportHomeSearchBar(Z)V

    .line 476
    return-void
.end method

.method public setThumbnails(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/thememanager/f/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->setThumbnails(Ljava/util/List;)V

    .line 267
    return-void
.end method

.method public setTrialButtonTitle(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->setTrialButtonTitle(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public setTrialDialogMessage(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->setTrialDialogMessage(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public setTrialDialogTitle(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/f/t;->setTrialDialogTitle(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public setTrialTime(J)V
    .registers 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1, p2}, Lcom/android/thememanager/f/t;->setTrialTime(J)V

    .line 155
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/thememanager/f/q;->onlineProperties:Lcom/android/thememanager/f/t;

    invoke-virtual {v0, p1, p2}, Lcom/android/thememanager/f/t;->setVideoUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public declared-synchronized updateFrom(Lcom/android/thememanager/f/q;)V
    .registers 4

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/thememanager/f/q;->mergeLocalProperties(Lcom/android/thememanager/f/q;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/thememanager/f/q;->mergeOnlineProperties(Lcom/android/thememanager/f/q;)V

    .line 49
    iget-object v0, p0, Lcom/android/thememanager/f/q;->extraMeta:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 50
    iget-object v0, p0, Lcom/android/thememanager/f/q;->extraMeta:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/thememanager/f/q;->extraMeta:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 51
    monitor-exit p0

    return-void

    .line 47
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
