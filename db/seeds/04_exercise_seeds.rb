require_relative 'exercise_descriptions'
include ExerciseDescriptions

exercises = [
  [
    'Squat',
    SQUAT,
    'BBFullSquat.gif',
    'Barbell',
    'Intermediate'
  ],
]

source = 'exrx.net'

exercises.each do |exercise|
  name, description, gif_url, ex_type, difficulty = exercise

  Exercise.find_or_create_by!(
    name: name,
    description: description,
    gif: gif_url,
    ex_type: ex_type,
    difficulty: difficulty,
    source: source
  )
end
