require_relative 'exercise_descriptions'
include ExerciseDescriptions

exercises = [
  [
    'Squat',
    SQUAT,
    'exercise_gifs/BBFullSquat.gif',
    'Barbell'
  ],
  [
    'Front Squat',
    FRONT_SQUAT,
    'exercise_gifs/BBFrontSquat.gif',
    'Barbell'
  ],
  [
    'Leg Press',
    LEG_PRESS,
    'exercise_gifs/LV45DegLegPress.gif',
    'Lever Machine',
  ],
  [
    'Leg Curl',
    LEG_CURL,
    'exercise_gifs/LVLyingLegCurl.gif',
    'Lever Machine'
  ],
  [
    "45\xC2\xB0 Calf Press",
    CALF_PRESS,
    'exercise_gifs/LV45DegCalfPress.gif',
    'Lever Machine'
  ],
  [
    'Standing Calf Raise',
    STANDING_CALF_RAISE,
    'exercise_gifs/LVStandingCalfRaise.gif',
    'Lever Machine'
  ],
  [
    'Straight Leg Deadlift',
    STRAIGHT_LEG_DEADLIFT,
    'exercise_gifs/BBStraightLegDeadlift.gif',
    'Barbell'
  ],
  [
    'Barbell Curl',
    BARBELL_CURL,
    'exercise_gifs/BBCurl.gif',
    'Barbell'
  ],
  [
    'Dumbbell Curl',
    DUMBBELL_CURL,
    'exercise_gifs/DBCurl.gif',
    'Dumbbell'
  ],
  [
    'Hammer Curl',
    HAMMER_CURL,
    'exercise_gifs/DBHammerCurl.gif',
    'Dumbbell'
  ],
  [
    'Seated Curl',
    SEATED_CURL,
    'exercise_gifs/DBSeatedCurl.gif',
    'Dumbbell'
  ],
  [
    'Cable Curl',
    CABLE_CURL,
    'exercise_gifs/CBCurl.gif',
    'Cable Machine'
  ],
  [
    'Close Grip Bench Press',
    CLOSE_GRIP_BENCH_PRESS,
    'exercise_gifs/BBCloseGripBenchPress.gif',
    'Barbell'
  ],
  [
    'Lying Tricep Extension',
    LYING_TRICEP_EXTENSION,
    'exercise_gifs/BBLyingTricepsExtension.gif',
    'Barbell'
  ],
  [
    'Cable Pushdown',
    CABLE_PUSHDOWN,
    'exercise_gifs/CBPushdown.gif',
    'Cable Machine'
  ],
  [
    'Tricep Dip',
    TRICEP_DIP,
    'exercise_gifs/BWTricepsDip.gif',
    'Calisthenics'
  ],
  [
    'One Arm Tricep Extension',
    ONE_ARM_TRICEP_EXTENSION,
    'exercise_gifs/DBSeatedTricepsExt.gif',
    'Dumbbell'
  ],
  [
    'Dumbbell Wrist Curl',
    DUMBBELL_WRIST_CURL,
    'exercise_gifs/DBWristCurl.gif',
    'Dumbbell'
  ],
  [
    'Military Press',
    MILITARY_PRESS,
    'exercise_gifs/BBMilitaryPress.gif',
    'Barbell'
  ],
  [
    'Arnold Press',
    ARNOLD_PRESS,
    'exercise_gifs/DBArnoldPress.gif',
    'Dumbbell'
  ],
  [
    'Dumbbell Shoulder Press',
    DUMBBELL_SHOULDER_PRESS,
    'exercise_gifs/DBShoulderPress.gif',
    'Dumbbell'
  ],
  [
    'Lateral Raise',
    LATERAL_RAISE,
    'exercise_gifs/DBLateralRaise.gif',
    'Dumbbell'
  ],
  [
    'Upright Row',
    UPRIGHT_ROW,
    'exercise_gifs/BBUprightRow.gif',
    'Barbell'
  ],
  [
    'Barbell Shrug',
    BARBELL_SHRUG,
    'exercise_gifs/BBShrug.gif',
    'Barbell'
  ],
  [
    'Dumbbell Shrug',
    DUMBBELL_SHRUG,
    'exercise_gifs/DBShrug.gif',
    'Dumbbell'
  ],
  [
    'Deadlift',
    DEADLIFT,
    'exercise_gifs/BBDeadlift.gif',
    'Barbell'
  ],
  [
    'Cable Pulldown',
    CABLE_PULLDOWN,
    'exercise_gifs/CBFrontPulldown.gif',
    'Cable Machine'
  ],
  [
    'Pull Up',
    PULL_UP,
    'exercise_gifs/PullUp.gif',
    'Calisthenics'
  ],
  [
    'Bent Over Row',
    BENT_OVER_ROW,
    'exercise_gifs/BBBentOverRow.gif',
    'Barbell'
  ],
  [
    'Seated Cable Row',
    SEATED_CABLE_ROW,
    'exercise_gifs/CBSeatedRow.gif',
    'Cable Machine'
  ],
  [
    'Good Morning',
    GOOD_MORNING,
    'exercise_gifs/BBGoodMorning.gif',
    'Barbell'
  ],
  [
    'Hyperextension',
    HYPEREXTENSION,
    'exercise_gifs/HyperExtension.gif',
    'Calisthenics'
  ],
  [
    'Barbell Bench Press',
    BARBELL_BENCH_PRESS,
    'exercise_gifs/BBBenchPress.gif',
    'Barbell'
  ],
  [
    'Barbell Incline Bench Press',
    BARBELL_INCLINE_BENCH_PRESS,
    'exercise_gifs/BBInclineBenchPress.gif',
    'Barbell'
  ],
  [
    'Barbell Decline Bench Press',
    BARBELL_DECLINE_BENCH_PRESS,
    'exercise_gifs/BBDeclineBenchPress.gif',
    'Barbell'
  ],
  [
    'Dumbbell Bench Press',
    DUMBBELL_BENCH_PRESS,
    'exercise_gifs/DBBenchPress.gif',
    'Dumbbell'
  ],
  [
    'Dumbbell Incline Bench Press',
    DUMBBELL_INCLINE_BENCH_PRESS,
    'exercise_gifs/DBInclineBenchPress.gif',
    'Dumbbell'
  ],
  [
    'Dumbbell Fly',
    DUMBBELL_FLY,
    'exercise_gifs/DBFly.gif',
    'Dumbbell'
  ],
  [
    'Chest Dip',
    CHEST_DIP,
    'exercise_gifs/BWChestDip.gif',
    'Calisthenics'
  ],
  [
    'Incline Crunch',
    INCLINE_CRUNCH,
    'exercise_gifs/BWInclineCrunch.gif',
    'Calisthenics'
  ],
  [
    'Cable Kneeling Crunch',
    CABLE_KNEELING_CRUNCH,
    'exercise_gifs/CBKneelingCrunch.gif',
    'Cable Machine'
  ],
  [
    'Leg Raise',
    LEG_RAISE,
    'exercise_gifs/LegRaise.gif',
    'Calisthenics'
  ],
  [
    'Overhead Squat',
    OVERHEAD_SQUAT,
    'exercise_gifs/OverheadSquat.gif',
    'Barbell'
  ],
  [
    'Muscle Up',
    MUSCLE_UP,
    'exercise_gifs/MuscleUp.gif',
    'Calisthenics'
  ]
]

source = 'exrx.net'

exercises.each do |exercise|
  name, description, gif_url, ex_type = exercise

  Exercise.find_or_create_by!(
    name: name,
    description: description,
    gif: gif_url,
    ex_type: ex_type,
    source: source,
    user: User.find_by(email: "default_user@test.com")
  )
end
