.class public Landroid/media/audiofx/BassBoost;
.super Landroid/media/audiofx/AudioEffect;
.source "BassBoost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/BassBoost$1;,
        Landroid/media/audiofx/BassBoost$Settings;,
        Landroid/media/audiofx/BassBoost$BaseParameterListener;,
        Landroid/media/audiofx/BassBoost$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final PARAM_STRENGTH:I = 0x1

.field public static final PARAM_STRENGTH_SUPPORTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BassBoost"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/BassBoost$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mStrengthSupported:Z


# direct methods
.method public constructor <init>(II)V
    .locals 6
    .parameter "priority"
    .parameter "audioSession"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    sget-object v1, Landroid/media/audiofx/BassBoost;->EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

    sget-object v2, Landroid/media/audiofx/BassBoost;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v1, v2, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 69
    iput-boolean v3, p0, Landroid/media/audiofx/BassBoost;->mStrengthSupported:Z

    .line 74
    iput-object v5, p0, Landroid/media/audiofx/BassBoost;->mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    .line 79
    iput-object v5, p0, Landroid/media/audiofx/BassBoost;->mBaseParamListener:Landroid/media/audiofx/BassBoost$BaseParameterListener;

    .line 84
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/audiofx/BassBoost;->mParamListenerLock:Ljava/lang/Object;

    .line 106
    new-array v0, v4, [I

    .line 107
    .local v0, value:[I
    invoke-virtual {p0, v3, v0}, Landroid/media/audiofx/BassBoost;->getParameter(I[I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    .line 108
    aget v1, v0, v3

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Landroid/media/audiofx/BassBoost;->mStrengthSupported:Z

    .line 109
    return-void

    :cond_0
    move v1, v3

    .line 108
    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/audiofx/BassBoost;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/media/audiofx/BassBoost;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/BassBoost;)Landroid/media/audiofx/BassBoost$OnParameterChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/media/audiofx/BassBoost;->mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    return-object v0
.end method


# virtual methods
.method public getProperties()Landroid/media/audiofx/BassBoost$Settings;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 274
    new-instance v0, Landroid/media/audiofx/BassBoost$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/BassBoost$Settings;-><init>()V

    .line 275
    .local v0, settings:Landroid/media/audiofx/BassBoost$Settings;
    new-array v1, v2, [S

    .line 276
    .local v1, value:[S
    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/BassBoost;->getParameter(I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    .line 277
    const/4 v2, 0x0

    aget-short v2, v1, v2

    iput-short v2, v0, Landroid/media/audiofx/BassBoost$Settings;->strength:S

    .line 278
    return-object v0
.end method

.method public getRoundedStrength()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 146
    new-array v0, v1, [S

    .line 147
    .local v0, value:[S
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/BassBoost;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    .line 148
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getStrengthSupported()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Landroid/media/audiofx/BassBoost;->mStrengthSupported:Z

    return v0
.end method

.method public setParameterListener(Landroid/media/audiofx/BassBoost$OnParameterChangeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 206
    iget-object v0, p0, Landroid/media/audiofx/BassBoost;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/BassBoost;->mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    if-nez v1, :cond_0

    .line 208
    iput-object p1, p0, Landroid/media/audiofx/BassBoost;->mParamListener:Landroid/media/audiofx/BassBoost$OnParameterChangeListener;

    .line 209
    new-instance v1, Landroid/media/audiofx/BassBoost$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/audiofx/BassBoost$BaseParameterListener;-><init>(Landroid/media/audiofx/BassBoost;Landroid/media/audiofx/BassBoost$1;)V

    iput-object v1, p0, Landroid/media/audiofx/BassBoost;->mBaseParamListener:Landroid/media/audiofx/BassBoost$BaseParameterListener;

    .line 210
    iget-object v1, p0, Landroid/media/audiofx/BassBoost;->mBaseParamListener:Landroid/media/audiofx/BassBoost$BaseParameterListener;

    invoke-super {p0, v1}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 212
    :cond_0
    monitor-exit v0

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setProperties(Landroid/media/audiofx/BassBoost$Settings;)V
    .locals 2
    .parameter "settings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 291
    const/4 v0, 0x1

    iget-short v1, p1, Landroid/media/audiofx/BassBoost$Settings;->strength:S

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/BassBoost;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    .line 292
    return-void
.end method

.method public setStrength(S)V
    .locals 1
    .parameter "strength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/BassBoost;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/BassBoost;->checkStatus(I)V

    .line 134
    return-void
.end method
