.class final Lcom/android/server/power/PowerManagerService$Injector$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService$Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    .line 114
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTurnOff:Z

    .line 115
    return-void
.end method