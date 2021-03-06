DROP TYPE IF EXISTS exercise_target;

CREATE TYPE exercise_target AS ENUM (
  'Upperbody',
  'Lowerbody',
  'Back',
  'Core',
  'Warmup',
  'Postural',
  'Accessory'
  
);

CREATE TABLE exercises (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    exercise_name TEXT NOT NULL,
    target exercise_target NOT NULL,
    exercise_priority INTEGER NOT NULL,
    equipment_value INTEGER NOT NULL,
    exercise_description TEXT NOT NULL,
    instructions TEXT NOT NULL,
    link TEXT NOT NULL,
    lose_weight BOOLEAN NOT NULL,
    gain_muscle BOOLEAN NOT NULL,
    gain_strength BOOLEAN NOT NULL,
    endurance BOOLEAN NOT NULL
);
