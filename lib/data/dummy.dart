import 'package:flutter/material.dart';
import '../widgets/grids/g1.dart';
import '../widgets/grids/g2.dart';
import '../widgets/grids/g3.dart';
import '../widgets/grids/g4.dart';
import '../widgets/grids/g5.dart';
import '../widgets/grids/g6.dart';

final List<Widget> gridCards = [
  ContainersOnShip(),
  ContainersAtPort(),
  WarehouseAndRoad(),
  ContainersArrivedAndWaitingForOffloading(),
  ContainersOffloadedWaitingForEmptyReturn(),
  ContainersReturnedWaitingToReach(),
];
