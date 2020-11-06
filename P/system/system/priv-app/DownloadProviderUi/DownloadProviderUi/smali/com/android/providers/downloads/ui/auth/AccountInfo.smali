.class public Lcom/android/providers/downloads/ui/auth/AccountInfo;
.super Ljava/lang/Object;
.source "AccountInfo.java"


# instance fields
.field private expire:Ljava/lang/String;

.field private fake:I

.field private figureurl1:Ljava/lang/String;

.field private figureurl2:Ljava/lang/String;

.field private figureurl3:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private isvip:I

.field private level:I

.field private msg:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private result:I

.field private uid:Ljava/lang/String;

.field private xl_type:I

.field private xlaccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpire()Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->expire:Ljava/lang/String;

    return-object p0
.end method

.method public getFake()I
    .locals 0

    .line 113
    iget p0, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->fake:I

    return p0
.end method

.method public getFigureurl1()Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->figureurl1:Ljava/lang/String;

    return-object p0
.end method

.method public getFigureurl2()Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->figureurl2:Ljava/lang/String;

    return-object p0
.end method

.method public getFigureurl3()Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->figureurl3:Ljava/lang/String;

    return-object p0
.end method

.method public getGender()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->gender:Ljava/lang/String;

    return-object p0
.end method

.method public getIsvip()I
    .locals 0

    .line 89
    iget p0, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->isvip:I

    return p0
.end method

.method public getLevel()I
    .locals 0

    .line 97
    iget p0, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->level:I

    return p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->nickname:Ljava/lang/String;

    return-object p0
.end method

.method public getResult()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->result:I

    return p0
.end method

.method public getUid()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->uid:Ljava/lang/String;

    return-object p0
.end method

.method public getXl_type()I
    .locals 0

    .line 121
    iget p0, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->xl_type:I

    return p0
.end method

.method public getXlaccount()Ljava/lang/String;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->xlaccount:Ljava/lang/String;

    return-object p0
.end method

.method public isAuto()Z
    .locals 1

    .line 145
    iget p0, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->xl_type:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFake()Z
    .locals 2

    const v0, 0x0

    return v0
.end method

.method public isVip()Z
    .locals 3

    const v0, 0x1

    return v0
.end method

.method public setExpire(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->expire:Ljava/lang/String;

    return-void
.end method

.method public setFake(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->fake:I

    return-void
.end method

.method public setFigureurl1(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->figureurl1:Ljava/lang/String;

    return-void
.end method

.method public setFigureurl2(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->figureurl2:Ljava/lang/String;

    return-void
.end method

.method public setFigureurl3(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->figureurl3:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->gender:Ljava/lang/String;

    return-void
.end method

.method public setIsvip(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->isvip:I

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->level:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->msg:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->result:I

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->uid:Ljava/lang/String;

    return-void
.end method

.method public setXl_type(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->xl_type:I

    return-void
.end method

.method public setXlaccount(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->xlaccount:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountInfo{result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nickname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gender=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->gender:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", figureurl1=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->figureurl1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", figureurl2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->figureurl2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", figureurl3=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->figureurl3:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isvip="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->isvip:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", level="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->level:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", expire=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->expire:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fake="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->fake:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", xl_type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->xl_type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", xlaccount=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/providers/downloads/ui/auth/AccountInfo;->xlaccount:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
