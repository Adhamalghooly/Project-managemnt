.class public Landroidx/core/graphics/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field public mParams:[F

.field public mType:C


# direct methods
.method constructor <init>(C[F)V
    .registers 3
    .param p1, "type"    # C
    .param p2, "params"    # [F

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-char p1, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 352
    iput-object p2, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 353
    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/PathParser$PathDataNode;)V
    .registers 5
    .param p1, "n"    # Landroidx/core/graphics/PathParser$PathDataNode;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iget-char v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-char v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 357
    iget-object v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/PathParser;->copyOfRange([FII)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 358
    return-void
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .registers 30
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "current"    # [F
    .param p2, "previousCmd"    # C
    .param p3, "cmd"    # C
    .param p4, "val"    # [F

    .line 396
    move-object/from16 v10, p0

    move-object/from16 v11, p4

    const/4 v0, 0x2

    .line 397
    .local v0, "incr":I
    const/4 v12, 0x0

    aget v1, p1, v12

    .line 398
    .local v1, "currentX":F
    const/4 v13, 0x1

    aget v2, p1, v13

    .line 399
    .local v2, "currentY":F
    const/4 v14, 0x2

    aget v3, p1, v14

    .line 400
    .local v3, "ctrlPointX":F
    const/4 v15, 0x3

    aget v4, p1, v15

    .line 401
    .local v4, "ctrlPointY":F
    const/16 v16, 0x4

    aget v5, p1, v16

    .line 402
    .local v5, "currentSegmentStartX":F
    const/16 v17, 0x5

    aget v6, p1, v17

    .line 406
    .local v6, "currentSegmentStartY":F
    sparse-switch p3, :sswitch_data_3ea

    move/from16 v18, v0

    goto :goto_3f

    .line 409
    :sswitch_1f
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    .line 413
    move v1, v5

    .line 414
    move v2, v6

    .line 415
    move v3, v5

    .line 416
    move v4, v6

    .line 417
    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 418
    move/from16 v18, v0

    goto :goto_3f

    .line 441
    :sswitch_2c
    const/4 v0, 0x4

    .line 442
    move/from16 v18, v0

    goto :goto_3f

    .line 425
    :sswitch_30
    const/4 v0, 0x2

    .line 426
    move/from16 v18, v0

    goto :goto_3f

    .line 431
    :sswitch_34
    const/4 v0, 0x1

    .line 432
    move/from16 v18, v0

    goto :goto_3f

    .line 435
    :sswitch_38
    const/4 v0, 0x6

    .line 436
    move/from16 v18, v0

    goto :goto_3f

    .line 445
    :sswitch_3c
    const/4 v0, 0x7

    move/from16 v18, v0

    .line 449
    .end local v0    # "incr":I
    .local v18, "incr":I
    :goto_3f
    const/4 v0, 0x0

    move/from16 v9, p2

    move v8, v0

    move v7, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move v6, v2

    .end local v1    # "currentX":F
    .end local v2    # "currentY":F
    .end local v3    # "ctrlPointX":F
    .end local v4    # "ctrlPointY":F
    .end local v5    # "currentSegmentStartX":F
    .end local p2    # "previousCmd":C
    .local v6, "currentY":F
    .local v7, "currentX":F
    .local v8, "k":I
    .local v9, "previousCmd":C
    .local v19, "ctrlPointX":F
    .local v20, "ctrlPointY":F
    .local v21, "currentSegmentStartX":F
    .local v22, "currentSegmentStartY":F
    :goto_4d
    array-length v0, v11

    if-ge v8, v0, :cond_3d6

    .line 450
    const/16 v0, 0x54

    const/16 v1, 0x53

    const/16 v2, 0x51

    const/16 v3, 0x43

    const/16 v4, 0x74

    const/16 v5, 0x73

    const/16 v15, 0x71

    const/16 v14, 0x63

    const/high16 v23, 0x40000000    # 2.0f

    const/4 v13, 0x0

    sparse-switch p3, :sswitch_data_43c

    move v12, v6

    move v14, v7

    move/from16 v24, v8

    move v15, v9

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .end local v9    # "previousCmd":C
    .local v12, "currentY":F
    .local v14, "currentX":F
    .local v15, "previousCmd":C
    .local v24, "k":I
    goto/16 :goto_3cc

    .line 498
    .end local v12    # "currentY":F
    .end local v14    # "currentX":F
    .end local v15    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .restart local v9    # "previousCmd":C
    :sswitch_6d
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    invoke-virtual {v10, v13, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 499
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v6, v0

    .line 500
    move/from16 v24, v8

    move v15, v9

    goto/16 :goto_3cc

    .line 570
    :sswitch_7e
    const/4 v1, 0x0

    .line 571
    .local v1, "reflectiveCtrlPointX":F
    const/4 v3, 0x0

    .line 572
    .local v3, "reflectiveCtrlPointY":F
    if-eq v9, v15, :cond_88

    if-eq v9, v4, :cond_88

    if-eq v9, v2, :cond_88

    if-ne v9, v0, :cond_8c

    .line 574
    :cond_88
    sub-float v1, v7, v19

    .line 575
    sub-float v3, v6, v20

    .line 577
    :cond_8c
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-int/lit8 v2, v8, 0x1

    aget v2, v11, v2

    invoke-virtual {v10, v1, v3, v0, v2}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 579
    add-float v0, v7, v1

    .line 580
    .end local v19    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    add-float v2, v6, v3

    .line 581
    .end local v20    # "ctrlPointY":F
    .local v2, "ctrlPointY":F
    add-int/lit8 v4, v8, 0x0

    aget v4, v11, v4

    add-float/2addr v7, v4

    .line 582
    add-int/lit8 v4, v8, 0x1

    aget v4, v11, v4

    add-float/2addr v6, v4

    .line 583
    move/from16 v19, v0

    move/from16 v20, v2

    move/from16 v24, v8

    move v15, v9

    goto/16 :goto_3cc

    .line 524
    .end local v0    # "ctrlPointX":F
    .end local v1    # "reflectiveCtrlPointX":F
    .end local v2    # "ctrlPointY":F
    .end local v3    # "reflectiveCtrlPointY":F
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_ae
    const/4 v0, 0x0

    .line 525
    .local v0, "reflectiveCtrlPointX":F
    const/4 v2, 0x0

    .line 526
    .local v2, "reflectiveCtrlPointY":F
    if-eq v9, v14, :cond_bc

    if-eq v9, v5, :cond_bc

    if-eq v9, v3, :cond_bc

    if-ne v9, v1, :cond_b9

    goto :goto_bc

    :cond_b9
    move v13, v0

    move v14, v2

    goto :goto_c2

    .line 528
    :cond_bc
    :goto_bc
    sub-float v0, v7, v19

    .line 529
    sub-float v2, v6, v20

    move v13, v0

    move v14, v2

    .line 531
    .end local v0    # "reflectiveCtrlPointX":F
    .end local v2    # "reflectiveCtrlPointY":F
    .local v13, "reflectiveCtrlPointX":F
    .local v14, "reflectiveCtrlPointY":F
    :goto_c2
    add-int/lit8 v0, v8, 0x0

    aget v3, v11, v0

    add-int/lit8 v0, v8, 0x1

    aget v4, v11, v0

    add-int/lit8 v0, v8, 0x2

    aget v5, v11, v0

    add-int/lit8 v0, v8, 0x3

    aget v15, v11, v0

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v12, v6

    .end local v6    # "currentY":F
    .restart local v12    # "currentY":F
    move v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 535
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v0, v7

    .line 536
    .end local v19    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    add-int/lit8 v1, v8, 0x1

    aget v1, v11, v1

    add-float v6, v12, v1

    .line 537
    .end local v20    # "ctrlPointY":F
    .local v6, "ctrlPointY":F
    add-int/lit8 v1, v8, 0x2

    aget v1, v11, v1

    add-float/2addr v7, v1

    .line 538
    add-int/lit8 v1, v8, 0x3

    aget v1, v11, v1

    add-float/2addr v1, v12

    .line 539
    .end local v12    # "currentY":F
    .local v1, "currentY":F
    move/from16 v19, v0

    move/from16 v20, v6

    move/from16 v24, v8

    move v15, v9

    move v6, v1

    goto/16 :goto_3cc

    .line 556
    .end local v0    # "ctrlPointX":F
    .end local v1    # "currentY":F
    .end local v13    # "reflectiveCtrlPointX":F
    .end local v14    # "reflectiveCtrlPointY":F
    .local v6, "currentY":F
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_fa
    move v12, v6

    .end local v6    # "currentY":F
    .restart local v12    # "currentY":F
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-int/lit8 v1, v8, 0x1

    aget v1, v11, v1

    add-int/lit8 v2, v8, 0x2

    aget v2, v11, v2

    add-int/lit8 v3, v8, 0x3

    aget v3, v11, v3

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 557
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v0, v7

    .line 558
    .end local v19    # "ctrlPointX":F
    .restart local v0    # "ctrlPointX":F
    add-int/lit8 v1, v8, 0x1

    aget v1, v11, v1

    add-float v6, v12, v1

    .line 559
    .end local v20    # "ctrlPointY":F
    .local v6, "ctrlPointY":F
    add-int/lit8 v1, v8, 0x2

    aget v1, v11, v1

    add-float/2addr v7, v1

    .line 560
    add-int/lit8 v1, v8, 0x3

    aget v1, v11, v1

    add-float/2addr v1, v12

    .line 561
    .end local v12    # "currentY":F
    .restart local v1    # "currentY":F
    move/from16 v19, v0

    move/from16 v20, v6

    move/from16 v24, v8

    move v15, v9

    move v6, v1

    goto/16 :goto_3cc

    .line 452
    .end local v0    # "ctrlPointX":F
    .end local v1    # "currentY":F
    .local v6, "currentY":F
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_12d
    move v12, v6

    .end local v6    # "currentY":F
    .restart local v12    # "currentY":F
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v7, v0

    .line 453
    add-int/lit8 v0, v8, 0x1

    aget v0, v11, v0

    add-float v6, v12, v0

    .line 454
    .end local v12    # "currentY":F
    .restart local v6    # "currentY":F
    if-lez v8, :cond_14b

    .line 458
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-int/lit8 v1, v8, 0x1

    aget v1, v11, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    move/from16 v24, v8

    move v15, v9

    goto/16 :goto_3cc

    .line 460
    :cond_14b
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-int/lit8 v1, v8, 0x1

    aget v1, v11, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 461
    move v0, v7

    .line 462
    .end local v21    # "currentSegmentStartX":F
    .local v0, "currentSegmentStartX":F
    move v1, v6

    .line 464
    .end local v22    # "currentSegmentStartY":F
    .local v1, "currentSegmentStartY":F
    move/from16 v21, v0

    move/from16 v22, v1

    move/from16 v24, v8

    move v15, v9

    goto/16 :goto_3cc

    .line 480
    .end local v0    # "currentSegmentStartX":F
    .end local v1    # "currentSegmentStartY":F
    .restart local v21    # "currentSegmentStartX":F
    .restart local v22    # "currentSegmentStartY":F
    :sswitch_161
    move v12, v6

    .end local v6    # "currentY":F
    .restart local v12    # "currentY":F
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-int/lit8 v1, v8, 0x1

    aget v1, v11, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 481
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v7, v0

    .line 482
    add-int/lit8 v0, v8, 0x1

    aget v0, v11, v0

    add-float v6, v12, v0

    .line 483
    .end local v12    # "currentY":F
    .restart local v6    # "currentY":F
    move/from16 v24, v8

    move v15, v9

    goto/16 :goto_3cc

    .line 490
    :sswitch_17d
    move v12, v6

    .end local v6    # "currentY":F
    .restart local v12    # "currentY":F
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    invoke-virtual {v10, v0, v13}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 491
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v7, v0

    .line 492
    move/from16 v24, v8

    move v15, v9

    goto/16 :goto_3cc

    .line 506
    .end local v12    # "currentY":F
    .restart local v6    # "currentY":F
    :sswitch_18f
    move v12, v6

    .end local v6    # "currentY":F
    .restart local v12    # "currentY":F
    add-int/lit8 v0, v8, 0x0

    aget v1, v11, v0

    add-int/lit8 v0, v8, 0x1

    aget v2, v11, v0

    add-int/lit8 v0, v8, 0x2

    aget v3, v11, v0

    add-int/lit8 v0, v8, 0x3

    aget v4, v11, v0

    add-int/lit8 v0, v8, 0x4

    aget v5, v11, v0

    add-int/lit8 v0, v8, 0x5

    aget v6, v11, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 509
    add-int/lit8 v0, v8, 0x2

    aget v0, v11, v0

    add-float/2addr v0, v7

    .line 510
    .end local v19    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    add-int/lit8 v1, v8, 0x3

    aget v1, v11, v1

    add-float v6, v12, v1

    .line 511
    .end local v20    # "ctrlPointY":F
    .local v6, "ctrlPointY":F
    add-int/lit8 v1, v8, 0x4

    aget v1, v11, v1

    add-float/2addr v7, v1

    .line 512
    add-int/lit8 v1, v8, 0x5

    aget v1, v11, v1

    add-float/2addr v1, v12

    .line 514
    .end local v12    # "currentY":F
    .local v1, "currentY":F
    move/from16 v19, v0

    move/from16 v20, v6

    move/from16 v24, v8

    move v15, v9

    move v6, v1

    goto/16 :goto_3cc

    .line 601
    .end local v0    # "ctrlPointX":F
    .end local v1    # "currentY":F
    .local v6, "currentY":F
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_1cc
    move v12, v6

    .end local v6    # "currentY":F
    .restart local v12    # "currentY":F
    add-int/lit8 v0, v8, 0x5

    aget v0, v11, v0

    add-float v3, v0, v7

    add-int/lit8 v0, v8, 0x6

    aget v0, v11, v0

    add-float v4, v0, v12

    add-int/lit8 v0, v8, 0x0

    aget v5, v11, v0

    add-int/lit8 v0, v8, 0x1

    aget v6, v11, v0

    add-int/lit8 v0, v8, 0x2

    aget v14, v11, v0

    add-int/lit8 v0, v8, 0x3

    aget v0, v11, v0

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_1ef

    const/4 v15, 0x1

    goto :goto_1f0

    :cond_1ef
    const/4 v15, 0x0

    :goto_1f0
    add-int/lit8 v0, v8, 0x4

    aget v0, v11, v0

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_1fa

    const/4 v13, 0x1

    goto :goto_1fb

    :cond_1fa
    const/4 v13, 0x0

    :goto_1fb
    move-object/from16 v0, p0

    move v1, v7

    move v2, v12

    move v10, v7

    .end local v7    # "currentX":F
    .local v10, "currentX":F
    move v7, v14

    move/from16 v24, v8

    .end local v8    # "k":I
    .restart local v24    # "k":I
    move v8, v15

    move v14, v9

    .end local v9    # "previousCmd":C
    .local v14, "previousCmd":C
    move v9, v13

    invoke-static/range {v0 .. v9}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 611
    add-int/lit8 v8, v24, 0x5

    aget v0, v11, v8

    add-float v7, v10, v0

    .line 612
    .end local v10    # "currentX":F
    .restart local v7    # "currentX":F
    add-int/lit8 v8, v24, 0x6

    aget v0, v11, v8

    add-float v6, v12, v0

    .line 613
    .end local v12    # "currentY":F
    .restart local v6    # "currentY":F
    move v0, v7

    .line 614
    .end local v19    # "ctrlPointX":F
    .restart local v0    # "ctrlPointX":F
    move v1, v6

    .line 615
    .end local v20    # "ctrlPointY":F
    .local v1, "ctrlPointY":F
    move-object/from16 v10, p0

    move/from16 v19, v0

    move/from16 v20, v1

    move v15, v14

    goto/16 :goto_3cc

    .line 502
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v14    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v8    # "k":I
    .restart local v9    # "previousCmd":C
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_220
    move v12, v6

    move v10, v7

    move/from16 v24, v8

    move v14, v9

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .end local v9    # "previousCmd":C
    .restart local v10    # "currentX":F
    .restart local v12    # "currentY":F
    .restart local v14    # "previousCmd":C
    .restart local v24    # "k":I
    add-int/lit8 v8, v24, 0x0

    aget v0, v11, v8

    move v9, v10

    move-object/from16 v10, p0

    .end local v10    # "currentX":F
    .local v9, "currentX":F
    invoke-virtual {v10, v9, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 503
    add-int/lit8 v8, v24, 0x0

    aget v0, v11, v8

    .line 504
    .end local v12    # "currentY":F
    .local v0, "currentY":F
    move v6, v0

    move v7, v9

    move v15, v14

    goto/16 :goto_3cc

    .line 585
    .end local v0    # "currentY":F
    .end local v14    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .local v9, "previousCmd":C
    :sswitch_238
    move v12, v6

    move/from16 v24, v8

    move v14, v9

    move v9, v7

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .local v9, "currentX":F
    .restart local v12    # "currentY":F
    .restart local v14    # "previousCmd":C
    .restart local v24    # "k":I
    move v1, v9

    .line 586
    .local v1, "reflectiveCtrlPointX":F
    move v3, v12

    .line 587
    .restart local v3    # "reflectiveCtrlPointY":F
    if-eq v14, v15, :cond_247

    if-eq v14, v4, :cond_247

    if-eq v14, v2, :cond_247

    if-ne v14, v0, :cond_24f

    .line 589
    :cond_247
    mul-float v7, v9, v23

    sub-float v1, v7, v19

    .line 590
    mul-float v6, v12, v23

    sub-float v3, v6, v20

    .line 592
    :cond_24f
    add-int/lit8 v8, v24, 0x0

    aget v0, v11, v8

    add-int/lit8 v8, v24, 0x1

    aget v2, v11, v8

    invoke-virtual {v10, v1, v3, v0, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 594
    move v0, v1

    .line 595
    .end local v19    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    move v2, v3

    .line 596
    .end local v20    # "ctrlPointY":F
    .local v2, "ctrlPointY":F
    add-int/lit8 v8, v24, 0x0

    aget v4, v11, v8

    .line 597
    .end local v9    # "currentX":F
    .local v4, "currentX":F
    add-int/lit8 v8, v24, 0x1

    aget v5, v11, v8

    .line 598
    .end local v12    # "currentY":F
    .local v5, "currentY":F
    move/from16 v19, v0

    move/from16 v20, v2

    move v7, v4

    move v6, v5

    move v15, v14

    goto/16 :goto_3cc

    .line 541
    .end local v0    # "ctrlPointX":F
    .end local v1    # "reflectiveCtrlPointX":F
    .end local v2    # "ctrlPointY":F
    .end local v3    # "reflectiveCtrlPointY":F
    .end local v4    # "currentX":F
    .end local v5    # "currentY":F
    .end local v14    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .local v9, "previousCmd":C
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_26d
    move v12, v6

    move/from16 v24, v8

    move v15, v9

    move v9, v7

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .local v9, "currentX":F
    .restart local v12    # "currentY":F
    .restart local v15    # "previousCmd":C
    .restart local v24    # "k":I
    move v0, v9

    .line 542
    .local v0, "reflectiveCtrlPointX":F
    move v2, v12

    .line 543
    .local v2, "reflectiveCtrlPointY":F
    if-eq v15, v14, :cond_280

    if-eq v15, v5, :cond_280

    if-eq v15, v3, :cond_280

    if-ne v15, v1, :cond_27d

    goto :goto_280

    :cond_27d
    move v7, v0

    move v8, v2

    goto :goto_28a

    .line 545
    :cond_280
    :goto_280
    mul-float v7, v9, v23

    sub-float v0, v7, v19

    .line 546
    mul-float v6, v12, v23

    sub-float v2, v6, v20

    move v7, v0

    move v8, v2

    .line 548
    .end local v0    # "reflectiveCtrlPointX":F
    .end local v2    # "reflectiveCtrlPointY":F
    .local v7, "reflectiveCtrlPointX":F
    .local v8, "reflectiveCtrlPointY":F
    :goto_28a
    add-int/lit8 v0, v24, 0x0

    aget v3, v11, v0

    add-int/lit8 v0, v24, 0x1

    aget v4, v11, v0

    add-int/lit8 v0, v24, 0x2

    aget v5, v11, v0

    add-int/lit8 v0, v24, 0x3

    aget v6, v11, v0

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 550
    add-int/lit8 v0, v24, 0x0

    aget v0, v11, v0

    .line 551
    .end local v19    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    add-int/lit8 v1, v24, 0x1

    aget v1, v11, v1

    .line 552
    .end local v20    # "ctrlPointY":F
    .local v1, "ctrlPointY":F
    add-int/lit8 v2, v24, 0x2

    aget v2, v11, v2

    .line 553
    .end local v9    # "currentX":F
    .local v2, "currentX":F
    add-int/lit8 v3, v24, 0x3

    aget v3, v11, v3

    .line 554
    .end local v12    # "currentY":F
    .local v3, "currentY":F
    move/from16 v19, v0

    move/from16 v20, v1

    move v7, v2

    move v6, v3

    goto/16 :goto_3cc

    .line 563
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v2    # "currentX":F
    .end local v3    # "currentY":F
    .end local v15    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "currentY":F
    .local v7, "currentX":F
    .local v8, "k":I
    .local v9, "previousCmd":C
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_2b9
    move v12, v6

    move/from16 v24, v8

    move v15, v9

    move v9, v7

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .local v9, "currentX":F
    .restart local v12    # "currentY":F
    .restart local v15    # "previousCmd":C
    .restart local v24    # "k":I
    add-int/lit8 v8, v24, 0x0

    aget v0, v11, v8

    add-int/lit8 v8, v24, 0x1

    aget v1, v11, v8

    add-int/lit8 v8, v24, 0x2

    aget v2, v11, v8

    add-int/lit8 v8, v24, 0x3

    aget v3, v11, v8

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 564
    add-int/lit8 v8, v24, 0x0

    aget v0, v11, v8

    .line 565
    .end local v19    # "ctrlPointX":F
    .restart local v0    # "ctrlPointX":F
    add-int/lit8 v8, v24, 0x1

    aget v1, v11, v8

    .line 566
    .end local v20    # "ctrlPointY":F
    .restart local v1    # "ctrlPointY":F
    add-int/lit8 v8, v24, 0x2

    aget v2, v11, v8

    .line 567
    .end local v9    # "currentX":F
    .restart local v2    # "currentX":F
    add-int/lit8 v8, v24, 0x3

    aget v3, v11, v8

    .line 568
    .end local v12    # "currentY":F
    .restart local v3    # "currentY":F
    move/from16 v19, v0

    move/from16 v20, v1

    move v7, v2

    move v6, v3

    goto/16 :goto_3cc

    .line 466
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v2    # "currentX":F
    .end local v3    # "currentY":F
    .end local v15    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .local v9, "previousCmd":C
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_2e9
    move v12, v6

    move/from16 v24, v8

    move v15, v9

    move v9, v7

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .local v9, "currentX":F
    .restart local v12    # "currentY":F
    .restart local v15    # "previousCmd":C
    .restart local v24    # "k":I
    add-int/lit8 v8, v24, 0x0

    aget v0, v11, v8

    .line 467
    .end local v9    # "currentX":F
    .local v0, "currentX":F
    add-int/lit8 v8, v24, 0x1

    aget v1, v11, v8

    .line 468
    .end local v12    # "currentY":F
    .local v1, "currentY":F
    if-lez v24, :cond_307

    .line 472
    add-int/lit8 v8, v24, 0x0

    aget v2, v11, v8

    add-int/lit8 v8, v24, 0x1

    aget v3, v11, v8

    invoke-virtual {v10, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move v7, v0

    move v6, v1

    goto/16 :goto_3cc

    .line 474
    :cond_307
    add-int/lit8 v8, v24, 0x0

    aget v2, v11, v8

    add-int/lit8 v8, v24, 0x1

    aget v3, v11, v8

    invoke-virtual {v10, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 475
    move v2, v0

    .line 476
    .end local v21    # "currentSegmentStartX":F
    .local v2, "currentSegmentStartX":F
    move v3, v1

    .line 478
    .end local v22    # "currentSegmentStartY":F
    .local v3, "currentSegmentStartY":F
    move v7, v0

    move v6, v1

    move/from16 v21, v2

    move/from16 v22, v3

    goto/16 :goto_3cc

    .line 485
    .end local v0    # "currentX":F
    .end local v1    # "currentY":F
    .end local v2    # "currentSegmentStartX":F
    .end local v3    # "currentSegmentStartY":F
    .end local v15    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .local v9, "previousCmd":C
    .restart local v21    # "currentSegmentStartX":F
    .restart local v22    # "currentSegmentStartY":F
    :sswitch_31c
    move v12, v6

    move/from16 v24, v8

    move v15, v9

    move v9, v7

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .local v9, "currentX":F
    .restart local v12    # "currentY":F
    .restart local v15    # "previousCmd":C
    .restart local v24    # "k":I
    add-int/lit8 v8, v24, 0x0

    aget v0, v11, v8

    add-int/lit8 v8, v24, 0x1

    aget v1, v11, v8

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 486
    add-int/lit8 v8, v24, 0x0

    aget v0, v11, v8

    .line 487
    .end local v9    # "currentX":F
    .restart local v0    # "currentX":F
    add-int/lit8 v8, v24, 0x1

    aget v1, v11, v8

    .line 488
    .end local v12    # "currentY":F
    .restart local v1    # "currentY":F
    move v7, v0

    move v6, v1

    goto/16 :goto_3cc

    .line 494
    .end local v0    # "currentX":F
    .end local v1    # "currentY":F
    .end local v15    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .local v9, "previousCmd":C
    :sswitch_338
    move v12, v6

    move/from16 v24, v8

    move v15, v9

    move v9, v7

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .local v9, "currentX":F
    .restart local v12    # "currentY":F
    .restart local v15    # "previousCmd":C
    .restart local v24    # "k":I
    add-int/lit8 v8, v24, 0x0

    aget v0, v11, v8

    invoke-virtual {v10, v0, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 495
    add-int/lit8 v8, v24, 0x0

    aget v0, v11, v8

    .line 496
    .end local v9    # "currentX":F
    .restart local v0    # "currentX":F
    move v7, v0

    goto/16 :goto_3cc

    .line 516
    .end local v0    # "currentX":F
    .end local v12    # "currentY":F
    .end local v15    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .local v9, "previousCmd":C
    :sswitch_34b
    move v12, v6

    move/from16 v24, v8

    move v15, v9

    move v9, v7

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .local v9, "currentX":F
    .restart local v12    # "currentY":F
    .restart local v15    # "previousCmd":C
    .restart local v24    # "k":I
    add-int/lit8 v8, v24, 0x0

    aget v1, v11, v8

    add-int/lit8 v8, v24, 0x1

    aget v2, v11, v8

    add-int/lit8 v8, v24, 0x2

    aget v3, v11, v8

    add-int/lit8 v8, v24, 0x3

    aget v4, v11, v8

    add-int/lit8 v8, v24, 0x4

    aget v5, v11, v8

    add-int/lit8 v8, v24, 0x5

    aget v6, v11, v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 518
    add-int/lit8 v8, v24, 0x4

    aget v0, v11, v8

    .line 519
    .end local v9    # "currentX":F
    .restart local v0    # "currentX":F
    add-int/lit8 v8, v24, 0x5

    aget v1, v11, v8

    .line 520
    .end local v12    # "currentY":F
    .restart local v1    # "currentY":F
    add-int/lit8 v8, v24, 0x2

    aget v2, v11, v8

    .line 521
    .end local v19    # "ctrlPointX":F
    .local v2, "ctrlPointX":F
    add-int/lit8 v8, v24, 0x3

    aget v3, v11, v8

    .line 522
    .end local v20    # "ctrlPointY":F
    .local v3, "ctrlPointY":F
    move v7, v0

    move v6, v1

    move/from16 v19, v2

    move/from16 v20, v3

    goto :goto_3cc

    .line 617
    .end local v0    # "currentX":F
    .end local v1    # "currentY":F
    .end local v2    # "ctrlPointX":F
    .end local v3    # "ctrlPointY":F
    .end local v15    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .local v9, "previousCmd":C
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_384
    move v12, v6

    move/from16 v24, v8

    move v15, v9

    move v9, v7

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .local v9, "currentX":F
    .restart local v12    # "currentY":F
    .restart local v15    # "previousCmd":C
    .restart local v24    # "k":I
    add-int/lit8 v8, v24, 0x5

    aget v3, v11, v8

    add-int/lit8 v8, v24, 0x6

    aget v4, v11, v8

    add-int/lit8 v8, v24, 0x0

    aget v5, v11, v8

    add-int/lit8 v8, v24, 0x1

    aget v6, v11, v8

    add-int/lit8 v8, v24, 0x2

    aget v7, v11, v8

    add-int/lit8 v8, v24, 0x3

    aget v0, v11, v8

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_3a7

    const/4 v8, 0x1

    goto :goto_3a8

    :cond_3a7
    const/4 v8, 0x0

    :goto_3a8
    add-int/lit8 v0, v24, 0x4

    aget v0, v11, v0

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_3b2

    const/4 v13, 0x1

    goto :goto_3b3

    :cond_3b2
    const/4 v13, 0x0

    :goto_3b3
    move-object/from16 v0, p0

    move v1, v9

    move v2, v12

    move v14, v9

    .end local v9    # "currentX":F
    .local v14, "currentX":F
    move v9, v13

    invoke-static/range {v0 .. v9}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 627
    add-int/lit8 v8, v24, 0x5

    aget v0, v11, v8

    .line 628
    .end local v14    # "currentX":F
    .restart local v0    # "currentX":F
    add-int/lit8 v8, v24, 0x6

    aget v1, v11, v8

    .line 629
    .end local v12    # "currentY":F
    .restart local v1    # "currentY":F
    move v2, v0

    .line 630
    .end local v19    # "ctrlPointX":F
    .restart local v2    # "ctrlPointX":F
    move v3, v1

    move v7, v0

    move v6, v1

    move/from16 v19, v2

    move/from16 v20, v3

    .line 633
    .end local v0    # "currentX":F
    .end local v1    # "currentY":F
    .end local v2    # "ctrlPointX":F
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v19    # "ctrlPointX":F
    :goto_3cc
    move/from16 v9, p3

    .line 449
    .end local v15    # "previousCmd":C
    .local v9, "previousCmd":C
    add-int v8, v24, v18

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x3

    .end local v24    # "k":I
    .restart local v8    # "k":I
    goto/16 :goto_4d

    :cond_3d6
    move v12, v6

    move v14, v7

    .line 635
    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .restart local v12    # "currentY":F
    .restart local v14    # "currentX":F
    const/4 v0, 0x0

    aput v14, p1, v0

    .line 636
    const/4 v0, 0x1

    aput v12, p1, v0

    .line 637
    const/4 v0, 0x2

    aput v19, p1, v0

    .line 638
    const/4 v0, 0x3

    aput v20, p1, v0

    .line 639
    aput v21, p1, v16

    .line 640
    aput v22, p1, v17

    .line 641
    return-void

    nop

    :sswitch_data_3ea
    .sparse-switch
        0x41 -> :sswitch_3c
        0x43 -> :sswitch_38
        0x48 -> :sswitch_34
        0x4c -> :sswitch_30
        0x4d -> :sswitch_30
        0x51 -> :sswitch_2c
        0x53 -> :sswitch_2c
        0x54 -> :sswitch_30
        0x56 -> :sswitch_34
        0x5a -> :sswitch_1f
        0x61 -> :sswitch_3c
        0x63 -> :sswitch_38
        0x68 -> :sswitch_34
        0x6c -> :sswitch_30
        0x6d -> :sswitch_30
        0x71 -> :sswitch_2c
        0x73 -> :sswitch_2c
        0x74 -> :sswitch_30
        0x76 -> :sswitch_34
        0x7a -> :sswitch_1f
    .end sparse-switch

    :sswitch_data_43c
    .sparse-switch
        0x41 -> :sswitch_384
        0x43 -> :sswitch_34b
        0x48 -> :sswitch_338
        0x4c -> :sswitch_31c
        0x4d -> :sswitch_2e9
        0x51 -> :sswitch_2b9
        0x53 -> :sswitch_26d
        0x54 -> :sswitch_238
        0x56 -> :sswitch_220
        0x61 -> :sswitch_1cc
        0x63 -> :sswitch_18f
        0x68 -> :sswitch_17d
        0x6c -> :sswitch_161
        0x6d -> :sswitch_12d
        0x71 -> :sswitch_fa
        0x73 -> :sswitch_ae
        0x74 -> :sswitch_7e
        0x76 -> :sswitch_6d
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .registers 81
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "cx"    # D
    .param p3, "cy"    # D
    .param p5, "a"    # D
    .param p7, "b"    # D
    .param p9, "e1x"    # D
    .param p11, "e1y"    # D
    .param p13, "theta"    # D
    .param p15, "start"    # D
    .param p17, "sweep"    # D

    .line 748
    move-wide/from16 v0, p5

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v4, p17, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 750
    .local v4, "numSegments":I
    move-wide/from16 v5, p15

    .line 751
    .local v5, "eta1":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 752
    .local v7, "cosTheta":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .line 753
    .local v9, "sinTheta":D
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 754
    .local v11, "cosEta1":D
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 755
    .local v13, "sinEta1":D
    neg-double v2, v0

    mul-double v2, v2, v7

    mul-double v2, v2, v13

    mul-double v17, p7, v9

    mul-double v17, v17, v11

    sub-double v2, v2, v17

    .line 756
    .local v2, "ep1x":D
    move-wide/from16 v17, v2

    .end local v2    # "ep1x":D
    .local v17, "ep1x":D
    neg-double v2, v0

    mul-double v2, v2, v9

    mul-double v2, v2, v13

    mul-double v19, p7, v7

    mul-double v19, v19, v11

    add-double v2, v2, v19

    .line 758
    .local v2, "ep1y":D
    move-wide/from16 v19, v2

    .end local v2    # "ep1y":D
    .local v19, "ep1y":D
    int-to-double v2, v4

    div-double v2, p17, v2

    .line 759
    .local v2, "anglePerSegment":D
    const/16 v21, 0x0

    move-wide/from16 v23, v5

    move/from16 v15, v21

    move-wide/from16 v5, p9

    move-wide/from16 v21, v17

    move-wide/from16 v17, p11

    .end local p9    # "e1x":D
    .end local p11    # "e1y":D
    .local v5, "e1x":D
    .local v15, "i":I
    .local v17, "e1y":D
    .local v21, "ep1x":D
    .local v23, "eta1":D
    :goto_50
    if-ge v15, v4, :cond_115

    .line 760
    add-double v27, v23, v2

    .line 761
    .local v27, "eta2":D
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    .line 762
    .local v29, "sinEta2":D
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    .line 763
    .local v31, "cosEta2":D
    mul-double v33, v0, v7

    mul-double v33, v33, v31

    add-double v33, p1, v33

    mul-double v35, p7, v9

    mul-double v35, v35, v29

    move-wide/from16 v37, v2

    .end local v2    # "anglePerSegment":D
    .local v37, "anglePerSegment":D
    sub-double v2, v33, v35

    .line 764
    .local v2, "e2x":D
    mul-double v33, v0, v9

    mul-double v33, v33, v31

    add-double v33, p3, v33

    mul-double v35, p7, v7

    mul-double v35, v35, v29

    move-wide/from16 v39, v11

    .end local v11    # "cosEta1":D
    .local v39, "cosEta1":D
    add-double v11, v33, v35

    .line 765
    .local v11, "e2y":D
    move-wide/from16 v33, v13

    .end local v13    # "sinEta1":D
    .local v33, "sinEta1":D
    neg-double v13, v0

    mul-double v13, v13, v7

    mul-double v13, v13, v29

    mul-double v35, p7, v9

    mul-double v35, v35, v31

    sub-double v13, v13, v35

    .line 766
    .local v13, "ep2x":D
    move-wide/from16 p9, v11

    .end local v11    # "e2y":D
    .local p9, "e2y":D
    neg-double v11, v0

    mul-double v11, v11, v9

    mul-double v11, v11, v29

    mul-double v35, p7, v7

    mul-double v35, v35, v31

    add-double v11, v11, v35

    .line 767
    .local v11, "ep2y":D
    sub-double v35, v27, v23

    const-wide/high16 v41, 0x4000000000000000L    # 2.0

    div-double v35, v35, v41

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->tan(D)D

    move-result-wide v35

    .line 768
    .local v35, "tanDiff2":D
    sub-double v41, v27, v23

    .line 769
    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->sin(D)D

    move-result-wide v41

    const-wide/high16 v43, 0x4008000000000000L    # 3.0

    mul-double v45, v35, v43

    mul-double v45, v45, v35

    const-wide/high16 v25, 0x4010000000000000L    # 4.0

    add-double v45, v45, v25

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v45

    const-wide/high16 v47, 0x3ff0000000000000L    # 1.0

    sub-double v45, v45, v47

    mul-double v41, v41, v45

    div-double v41, v41, v43

    .line 770
    .local v41, "alpha":D
    mul-double v43, v41, v21

    add-double v0, v5, v43

    .line 771
    .local v0, "q1x":D
    mul-double v43, v41, v19

    move/from16 v16, v4

    move-wide/from16 p11, v5

    .end local v4    # "numSegments":I
    .end local v5    # "e1x":D
    .local v16, "numSegments":I
    .local p11, "e1x":D
    add-double v4, v17, v43

    .line 772
    .local v4, "q1y":D
    mul-double v43, v41, v13

    move-wide/from16 v45, v7

    .end local v7    # "cosTheta":D
    .local v45, "cosTheta":D
    sub-double v6, v2, v43

    .line 773
    .local v6, "q2x":D
    mul-double v43, v41, v11

    move-wide/from16 v47, v9

    move-wide/from16 v8, p9

    move-wide/from16 p9, v11

    .end local v9    # "sinTheta":D
    .end local v11    # "ep2y":D
    .local v8, "e2y":D
    .local v47, "sinTheta":D
    .local p9, "ep2y":D
    sub-double v10, v8, v43

    .line 776
    .local v10, "q2y":D
    const/4 v12, 0x0

    move/from16 v43, v15

    move-object/from16 v15, p0

    .end local v15    # "i":I
    .local v43, "i":I
    invoke-virtual {v15, v12, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 778
    double-to-float v12, v0

    move-wide/from16 v56, v0

    .end local v0    # "q1x":D
    .local v56, "q1x":D
    double-to-float v0, v4

    double-to-float v1, v6

    move-wide/from16 v58, v4

    .end local v4    # "q1y":D
    .local v58, "q1y":D
    double-to-float v4, v10

    double-to-float v5, v2

    move-wide/from16 v60, v6

    .end local v6    # "q2x":D
    .local v60, "q2x":D
    double-to-float v6, v8

    move-object/from16 v49, p0

    move/from16 v50, v12

    move/from16 v51, v0

    move/from16 v52, v1

    move/from16 v53, v4

    move/from16 v54, v5

    move/from16 v55, v6

    invoke-virtual/range {v49 .. v55}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 784
    move-wide/from16 v23, v27

    .line 785
    move-wide v5, v2

    .line 786
    .end local p11    # "e1x":D
    .restart local v5    # "e1x":D
    move-wide/from16 v17, v8

    .line 787
    move-wide/from16 v21, v13

    .line 788
    move-wide/from16 v19, p9

    .line 759
    .end local v2    # "e2x":D
    .end local v8    # "e2y":D
    .end local v10    # "q2y":D
    .end local v13    # "ep2x":D
    .end local v27    # "eta2":D
    .end local v29    # "sinEta2":D
    .end local v31    # "cosEta2":D
    .end local v35    # "tanDiff2":D
    .end local v41    # "alpha":D
    .end local v56    # "q1x":D
    .end local v58    # "q1y":D
    .end local v60    # "q2x":D
    .end local p9    # "ep2y":D
    add-int/lit8 v0, v43, 0x1

    move v15, v0

    move/from16 v4, v16

    move-wide/from16 v13, v33

    move-wide/from16 v2, v37

    move-wide/from16 v11, v39

    move-wide/from16 v7, v45

    move-wide/from16 v9, v47

    move-wide/from16 v0, p5

    .end local v43    # "i":I
    .local v0, "i":I
    goto/16 :goto_50

    .line 790
    .end local v0    # "i":I
    .end local v16    # "numSegments":I
    .end local v33    # "sinEta1":D
    .end local v37    # "anglePerSegment":D
    .end local v39    # "cosEta1":D
    .end local v45    # "cosTheta":D
    .end local v47    # "sinTheta":D
    .local v2, "anglePerSegment":D
    .local v4, "numSegments":I
    .restart local v7    # "cosTheta":D
    .restart local v9    # "sinTheta":D
    .local v11, "cosEta1":D
    .local v13, "sinEta1":D
    :cond_115
    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .registers 83
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "a"    # F
    .param p6, "b"    # F
    .param p7, "theta"    # F
    .param p8, "isMoreThanHalf"    # Z
    .param p9, "isPositiveArc"    # Z

    .line 655
    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v9, p9

    move/from16 v8, p7

    float-to-double v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v35

    .line 657
    .local v35, "thetaD":D
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->cos(D)D

    move-result-wide v37

    .line 658
    .local v37, "cosTheta":D
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sin(D)D

    move-result-wide v39

    .line 661
    .local v39, "sinTheta":D
    float-to-double v0, v10

    mul-double v0, v0, v37

    float-to-double v2, v11

    mul-double v2, v2, v39

    add-double/2addr v0, v2

    float-to-double v2, v14

    div-double v41, v0, v2

    .line 662
    .local v41, "x0p":D
    neg-float v0, v10

    float-to-double v0, v0

    mul-double v0, v0, v39

    float-to-double v2, v11

    mul-double v2, v2, v37

    add-double/2addr v0, v2

    float-to-double v2, v15

    div-double v43, v0, v2

    .line 663
    .local v43, "y0p":D
    float-to-double v0, v12

    mul-double v0, v0, v37

    float-to-double v2, v13

    mul-double v2, v2, v39

    add-double/2addr v0, v2

    float-to-double v2, v14

    div-double v45, v0, v2

    .line 664
    .local v45, "x1p":D
    neg-float v0, v12

    float-to-double v0, v0

    mul-double v0, v0, v39

    float-to-double v2, v13

    mul-double v2, v2, v37

    add-double/2addr v0, v2

    float-to-double v2, v15

    div-double v47, v0, v2

    .line 667
    .local v47, "y1p":D
    sub-double v49, v41, v45

    .line 668
    .local v49, "dx":D
    sub-double v51, v43, v47

    .line 669
    .local v51, "dy":D
    add-double v0, v41, v45

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v53, v0, v2

    .line 670
    .local v53, "xm":D
    add-double v0, v43, v47

    div-double v55, v0, v2

    .line 672
    .local v55, "ym":D
    mul-double v0, v49, v49

    mul-double v2, v51, v51

    add-double v6, v0, v2

    .line 673
    .local v6, "dsq":D
    const-string v0, "PathParser"

    const-wide/16 v1, 0x0

    cmpl-double v3, v6, v1

    if-nez v3, :cond_69

    .line 674
    const-string v1, " Points are coincident"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return-void

    .line 677
    :cond_69
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, v6

    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    sub-double v57, v3, v16

    .line 678
    .local v57, "disc":D
    cmpg-double v3, v57, v1

    if-gez v3, :cond_b6

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Points are too far apart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v0, v2

    double-to-float v5, v0

    .line 681
    .local v5, "adjust":F
    mul-float v16, v14, v5

    mul-float v17, v15, v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v18, v5

    .end local v5    # "adjust":F
    .local v18, "adjust":F
    move/from16 v5, v16

    move-wide/from16 v59, v6

    .end local v6    # "dsq":D
    .local v59, "dsq":D
    move/from16 v6, v17

    move/from16 v7, p7

    move/from16 v8, p8

    move v12, v9

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 683
    return-void

    .line 685
    .end local v18    # "adjust":F
    .end local v59    # "dsq":D
    .restart local v6    # "dsq":D
    :cond_b6
    move-wide/from16 v59, v6

    move v12, v9

    .end local v6    # "dsq":D
    .restart local v59    # "dsq":D
    invoke-static/range {v57 .. v58}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 686
    .local v3, "s":D
    mul-double v5, v3, v49

    .line 687
    .local v5, "sdx":D
    mul-double v7, v3, v51

    .line 690
    .local v7, "sdy":D
    move/from16 v0, p8

    if-ne v0, v12, :cond_ca

    .line 691
    sub-double v16, v53, v7

    .line 692
    .local v16, "cx":D
    add-double v18, v55, v5

    .local v18, "cy":D
    goto :goto_ce

    .line 694
    .end local v16    # "cx":D
    .end local v18    # "cy":D
    :cond_ca
    add-double v16, v53, v7

    .line 695
    .restart local v16    # "cx":D
    sub-double v18, v55, v5

    .line 698
    .restart local v18    # "cy":D
    :goto_ce
    sub-double v1, v43, v18

    move-wide/from16 v61, v3

    .end local v3    # "s":D
    .local v61, "s":D
    sub-double v3, v41, v16

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 700
    .local v1, "eta0":D
    sub-double v3, v47, v18

    move-wide/from16 v63, v5

    .end local v5    # "sdx":D
    .local v63, "sdx":D
    sub-double v5, v45, v16

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    .line 702
    .local v3, "eta1":D
    sub-double v5, v3, v1

    .line 703
    .local v5, "sweep":D
    const-wide/16 v20, 0x0

    cmpl-double v9, v5, v20

    if-ltz v9, :cond_ec

    const/4 v9, 0x1

    goto :goto_ed

    :cond_ec
    const/4 v9, 0x0

    :goto_ed
    if-eq v12, v9, :cond_ff

    .line 704
    const-wide v22, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/16 v20, 0x0

    cmpl-double v9, v5, v20

    if-lez v9, :cond_fd

    .line 705
    sub-double v5, v5, v22

    goto :goto_ff

    .line 707
    :cond_fd
    add-double v5, v5, v22

    .line 711
    :cond_ff
    :goto_ff
    move-wide/from16 v65, v3

    .end local v3    # "eta1":D
    .local v65, "eta1":D
    float-to-double v3, v14

    mul-double v16, v16, v3

    .line 712
    float-to-double v3, v15

    mul-double v3, v3, v18

    .line 713
    .end local v18    # "cy":D
    .local v3, "cy":D
    move-wide/from16 v67, v16

    .line 714
    .local v67, "tcx":D
    mul-double v18, v16, v37

    mul-double v20, v3, v39

    sub-double v69, v18, v20

    .end local v16    # "cx":D
    .local v69, "cx":D
    move-wide/from16 v17, v69

    .line 715
    mul-double v19, v67, v39

    mul-double v21, v3, v37

    add-double v3, v19, v21

    move-wide/from16 v19, v3

    .line 717
    move-wide/from16 v71, v3

    .end local v3    # "cy":D
    .local v71, "cy":D
    float-to-double v3, v14

    move-wide/from16 v21, v3

    float-to-double v3, v15

    move-wide/from16 v23, v3

    float-to-double v3, v10

    move-wide/from16 v25, v3

    float-to-double v3, v11

    move-wide/from16 v27, v3

    move-object/from16 v16, p0

    move-wide/from16 v29, v35

    move-wide/from16 v31, v1

    move-wide/from16 v33, v5

    invoke-static/range {v16 .. v34}, Landroidx/core/graphics/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    .line 718
    return-void
.end method

.method public static nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .registers 7
    .param p0, "node"    # [Landroidx/core/graphics/PathParser$PathDataNode;
    .param p1, "path"    # Landroid/graphics/Path;

    .line 367
    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 368
    .local v0, "current":[F
    const/16 v1, 0x6d

    .line 369
    .local v1, "previousCommand":C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    array-length v3, p0

    if-ge v2, v3, :cond_1b

    .line 370
    aget-object v3, p0, v2

    iget-char v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    aget-object v4, p0, v2

    iget-object v4, v4, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    invoke-static {p1, v0, v1, v3, v4}, Landroidx/core/graphics/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    .line 371
    aget-object v3, p0, v2

    iget-char v1, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 373
    .end local v2    # "i":I
    :cond_1b
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Landroidx/core/graphics/PathParser$PathDataNode;Landroidx/core/graphics/PathParser$PathDataNode;F)V
    .registers 8
    .param p1, "nodeFrom"    # Landroidx/core/graphics/PathParser$PathDataNode;
    .param p2, "nodeTo"    # Landroidx/core/graphics/PathParser$PathDataNode;
    .param p3, "fraction"    # F

    .line 386
    iget-char v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-char v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 387
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1f

    .line 388
    iget-object v2, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    aget v1, v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float v1, v1, v3

    iget-object v3, p2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v0

    mul-float v3, v3, p3

    add-float/2addr v1, v3

    aput v1, v2, v0

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 391
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method
