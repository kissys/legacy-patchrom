.class Lcom/android/server/sip/SipService$WifiScanProcess;
.super Ljava/lang/Object;
.source "SipService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiScanProcess"
.end annotation


# static fields
.field private static final INTERVAL:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "\\WIFI_SCAN/"


# instance fields
.field private mRunning:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipService;)V
    .locals 2
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/server/sip/SipService$WifiScanProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$WifiScanProcess;->mRunning:Z

    .line 674
    #getter for: Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/sip/SipService;->access$1100(Lcom/android/server/sip/SipService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/sip/SipService$WifiScanProcess;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 676
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/server/sip/SipService$WifiScanProcess;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    .line 682
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 668
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$WifiScanProcess;->mRunning:Z

    if-eqz v0, :cond_0

    .line 671
    :goto_0
    return-void

    .line 669
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$WifiScanProcess;->mRunning:Z

    .line 670
    iget-object v0, p0, Lcom/android/server/sip/SipService$WifiScanProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipService$WakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$1200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$WakeupTimer;

    move-result-object v0

    const v1, 0xea60

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sip/SipService$WakeupTimer;->set(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$WifiScanProcess;->mRunning:Z

    .line 686
    iget-object v0, p0, Lcom/android/server/sip/SipService$WifiScanProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipService$WakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$1200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$WakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipService$WakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 687
    return-void
.end method
