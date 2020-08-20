import 'package:flutter/material.dart';
import '../widgets/g1.dart';
import '../widgets/g2.dart';
import '../widgets/g3.dart';
import '../widgets/g4.dart';
import '../widgets/g5.dart';
import '../widgets/g6.dart';

final List<Widget> gridCards = [
  ContainersOnShip(),
  ContainersAtPort(),
  WarehouseAndRoad(),
  ContainersArrivedAndWaitingForOffloading(),
  ContainersOffloadedWaitingForEmptyReturn(),
  ContainersReturnedWaitingToReach(),
];
