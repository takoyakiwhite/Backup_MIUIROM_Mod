.class Lcom/miui/server/SecurityManagerService$1;
.super Ljava/lang/Thread;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/SecurityManagerService;->checkSystemSelfProtection(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;

.field final synthetic val$onlyCore:Z


# direct methods
.method constructor <init>(Lcom/miui/server/SecurityManagerService;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/server/SecurityManagerService;

    .line 612
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    iput-boolean p2, p0, Lcom/miui/server/SecurityManagerService$1;->val$onlyCore:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    return-void
.end method
