class SleepCycle {
  String sleepCycleType;

  SleepCycle({
    required this.sleepCycleType,
  });

  static final availableTypes = [
    SleepCycle(sleepCycleType: 'Sleeping time'),
    SleepCycle(sleepCycleType: 'Wakeup time'),
  ];
}
