.class Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;
.super Ljava/lang/Object;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchInfo"
.end annotation


# instance fields
.field public mIsDefaultDataSwitchRequested:Z

.field public mIsOnDemandPsAttachRequested:Z

.field public mNetworkRequest:Landroid/net/NetworkRequest;

.field public mPhoneId:I

.field private mRetryCount:I

.field public mTag:J

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;ILandroid/net/NetworkRequest;ZZ)V
    .locals 2
    .param p2, "phoneId"    # I
    .param p3, "n"    # Landroid/net/NetworkRequest;
    .param p4, "flag"    # Z
    .param p5, "isAttachReq"    # Z

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mRetryCount:I

    .line 486
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mTag:J

    .line 489
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mPhoneId:I

    .line 490
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 491
    iput-boolean p4, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mIsDefaultDataSwitchRequested:Z

    .line 492
    iput-boolean p5, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mIsOnDemandPsAttachRequested:Z

    .line 493
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;IZ)V
    .locals 2
    .param p2, "phoneId"    # I
    .param p3, "flag"    # Z

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mRetryCount:I

    .line 486
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mTag:J

    .line 496
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mPhoneId:I

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 498
    iput-boolean p3, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mIsDefaultDataSwitchRequested:Z

    .line 499
    return-void
.end method


# virtual methods
.method public incRetryCount()V
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mRetryCount:I

    .line 504
    return-void
.end method

.method public isRetryPossible()Z
    .locals 2

    .prologue
    .line 507
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mRetryCount:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwitchInfo[phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", NetworkRequest ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDefaultSwitchRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mIsDefaultDataSwitchRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isOnDemandPsAttachRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mIsOnDemandPsAttachRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RetryCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mTag:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
