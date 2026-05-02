enum PhysicalActivityLevelEnum {
  sedentary('SEDENTARY'),
  lowActive('LOW_ACTIVE'),
  active('ACTIVE'),
  veryActive('VERY_ACTIVE');

  final String name;

  const PhysicalActivityLevelEnum(this.name);
}
