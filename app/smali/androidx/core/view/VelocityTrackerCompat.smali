.class public final Landroidx/core/view/VelocityTrackerCompat;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/VelocityTrackerCompat$Api34Impl;,
        Landroidx/core/view/VelocityTrackerCompat$VelocityTrackableMotionEventAxis;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAxisVelocity(Landroid/view/VelocityTracker;I)F
    .registers 4
    .param p0, "tracker"    # Landroid/view/VelocityTracker;
    .param p1, "axis"    # I

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_b

    .line 108
    invoke-static {p0, p1}, Landroidx/core/view/VelocityTrackerCompat$Api34Impl;->getAxisVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0

    .line 110
    :cond_b
    if-nez p1, :cond_12

    .line 111
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    return v0

    .line 113
    :cond_12
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    .line 114
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    return v0

    .line 116
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public static getAxisVelocity(Landroid/view/VelocityTracker;II)F
    .registers 5
    .param p0, "tracker"    # Landroid/view/VelocityTracker;
    .param p1, "axis"    # I
    .param p2, "pointerId"    # I

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_b

    .line 149
    invoke-static {p0, p1, p2}, Landroidx/core/view/VelocityTrackerCompat$Api34Impl;->getAxisVelocity(Landroid/view/VelocityTracker;II)F

    move-result v0

    return v0

    .line 151
    :cond_b
    if-nez p1, :cond_12

    .line 152
    invoke-virtual {p0, p2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    return v0

    .line 154
    :cond_12
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    .line 155
    invoke-virtual {p0, p2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    return v0

    .line 157
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public static getXVelocity(Landroid/view/VelocityTracker;I)F
    .registers 3
    .param p0, "tracker"    # Landroid/view/VelocityTracker;
    .param p1, "pointerId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    return v0
.end method

.method public static getYVelocity(Landroid/view/VelocityTracker;I)F
    .registers 3
    .param p0, "tracker"    # Landroid/view/VelocityTracker;
    .param p1, "pointerId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    return v0
.end method

.method public static isAxisSupported(Landroid/view/VelocityTracker;I)Z
    .registers 4
    .param p0, "tracker"    # Landroid/view/VelocityTracker;
    .param p1, "axis"    # I

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_b

    .line 88
    invoke-static {p0, p1}, Landroidx/core/view/VelocityTrackerCompat$Api34Impl;->isAxisSupported(Landroid/view/VelocityTracker;I)Z

    move-result v0

    return v0

    .line 90
    :cond_b
    const/4 v0, 0x1

    if-eqz p1, :cond_12

    if-ne p1, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :cond_12
    :goto_12
    return v0
.end method
