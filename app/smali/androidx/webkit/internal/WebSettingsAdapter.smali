.class public Landroidx/webkit/internal/WebSettingsAdapter;
.super Ljava/lang/Object;
.source "WebSettingsAdapter.java"


# instance fields
.field private final mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;


# direct methods
.method public constructor <init>(Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;)V
    .registers 2
    .param p1, "boundaryInterface"    # Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 38
    return-void
.end method


# virtual methods
.method public getAttributionRegistrationBehavior()I
    .registers 2

    .line 183
    iget-object v0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getAttributionBehavior()I

    move-result v0

    return v0
.end method

.method public getDisabledActionModeMenuItems()I
    .registers 2

    .line 79
    iget-object v0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getDisabledActionModeMenuItems()I

    move-result v0

    return v0
.end method

.method public getEnterpriseAuthenticationAppLinkPolicyEnabled()Z
    .registers 2

    .line 137
    iget-object v0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getEnterpriseAuthenticationAppLinkPolicyEnabled()Z

    move-result v0

    return v0
.end method

.method public getForceDark()I
    .registers 2

    .line 93
    iget-object v0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getForceDark()I

    move-result v0

    return v0
.end method

.method public getForceDarkStrategy()I
    .registers 2

    .line 107
    iget-object v0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getForceDarkBehavior()I

    move-result v0

    return v0
.end method

.method public getOffscreenPreRaster()Z
    .registers 2

    .line 51
    iget-object v0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getOffscreenPreRaster()Z

    move-result v0

    return v0
.end method

.method public getRequestedWithHeaderOriginAllowList()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getRequestedWithHeaderOriginAllowList()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSafeBrowsingEnabled()Z
    .registers 2

    .line 65
    iget-object v0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getSafeBrowsingEnabled()Z

    move-result v0

    return v0
.end method

.method public getUserAgentMetadata()Landroidx/webkit/UserAgentMetadata;
    .registers 2

    .line 164
    iget-object v0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 165
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getUserAgentMetadataMap()Ljava/util/Map;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroidx/webkit/internal/UserAgentMetadataInternal;->getUserAgentMetadataFromMap(Ljava/util/Map;)Landroidx/webkit/UserAgentMetadata;

    move-result-object v0

    return-object v0
.end method

.method public isAlgorithmicDarkeningAllowed()Z
    .registers 2

    .line 121
    iget-object v0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->isAlgorithmicDarkeningAllowed()Z

    move-result v0

    return v0
.end method

.method public setAlgorithmicDarkeningAllowed(Z)V
    .registers 3
    .param p1, "allow"    # Z

    .line 114
    iget-object v0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setAlgorithmicDarkeningAllowed(Z)V

    .line 115
    return-void
.end method

.method public setAttributionRegistrationBehavior(I)V
    .registers 3
    .param p1, "behavior"    # I

    .line 191
    iget-object v0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setAttributionBehavior(I)V

    .line 192
    return-void
.end method

.method public setDisabledActionModeMenuItems(I)V
    .registers 3
    .param p1, "menuItems"    # I

    .line 72
    iget-object v0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setDisabledActionModeMenuItems(I)V

    .line 73
    return-void
.end method

.method public setEnterpriseAuthenticationAppLinkPolicyEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 129
    iget-object v0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setEnterpriseAuthenticationAppLinkPolicyEnabled(Z)V

    .line 130
    return-void
.end method

.method public setForceDark(I)V
    .registers 3
    .param p1, "forceDarkMode"    # I

    .line 86
    iget-object v0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setForceDark(I)V

    .line 87
    return-void
.end method

.method public setForceDarkStrategy(I)V
    .registers 3
    .param p1, "forceDarkStrategy"    # I

    .line 100
    iget-object v0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setForceDarkBehavior(I)V

    .line 101
    return-void
.end method

.method public setOffscreenPreRaster(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 44
    iget-object v0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setOffscreenPreRaster(Z)V

    .line 45
    return-void
.end method

.method public setRequestedWithHeaderOriginAllowList(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 155
    .local p1, "allowList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setRequestedWithHeaderOriginAllowList(Ljava/util/Set;)V

    .line 156
    return-void
.end method

.method public setSafeBrowsingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 58
    iget-object v0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setSafeBrowsingEnabled(Z)V

    .line 59
    return-void
.end method

.method public setUserAgentMetadata(Landroidx/webkit/UserAgentMetadata;)V
    .registers 4
    .param p1, "uaMetadata"    # Landroidx/webkit/UserAgentMetadata;

    .line 174
    iget-object v0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 175
    invoke-static {p1}, Landroidx/webkit/internal/UserAgentMetadataInternal;->convertUserAgentMetadataToMap(Landroidx/webkit/UserAgentMetadata;)Ljava/util/Map;

    move-result-object v1

    .line 174
    invoke-interface {v0, v1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setUserAgentMetadataFromMap(Ljava/util/Map;)V

    .line 176
    return-void
.end method
