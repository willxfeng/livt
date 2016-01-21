require_relative 'muscle_descriptions'
include MuscleDescriptions

muscles = [
  [
    'Abdominals',
    ABDOMINALS,
    'Abs',
    'https://www.freetrainers.com/redbody/eJzbY2hgaEAOiDcwNwUAhX0MOg==.png'
  ],
  [
    'Obliques',
    OBLIQUES,
    'Abs',
    'https://www.freetrainers.com/redbody/eJzbY2iAH-CSjzcwNwUAhV8MOg==.png'
  ],
  [
    'Biceps',
    BICEPS,
    'Arms',
    'https://www.freetrainers.com/redbody/eJzbY2gAAhCSFBBvYG4KAIV5DDo=.png'
  ],
  [
    'Forearms',
    FOREARMS,
    'Arms',
    'https://www.freetrainers.com/redbody/eJzbY2iAAMhsQiDewNwUAIVzDDo=.png'
  ],
  [
    'Triceps',
    TRICEPS,
    'Arms',
    'https://www.freetrainers.com/redbody/eJzbY2hADjA0iDcwNwUAhUkMOg==.png'
  ],
  [
    'Anterior Delts',
    ANTERIROR_DELTS,
    'Shoulders',
    'https://www.freetrainers.com/redbody/eJzbY2hgYADCpIJ4A3NTAIV7DDo=.png'
  ],
  [
    'Lateral Delts',
    LATERAL_DELTS,
    'Shoulders',
    'https://www.freetrainers.com/redbody/eJzbY2iAG-CTizcwNwUAhWMMOg==.png'
  ],
  [
    'Posterior Delts',
    POSTERIOR_DELTS,
    'Shoulders',
    'https://www.freetrainers.com/redbody/eJzbY2hAGGBTE29gbgoAhVsMOg==.png'
  ],
  [
    'Lower Back',
    LOWER_BACK,
    'Back',
    'https://www.freetrainers.com/redbody/eJzbY2gAAwgWMSDewNwUAIV1DDo=.png'
  ],
  [
    'Lats',
    LATS,
    'Back',
    'https://www.freetrainers.com/redbody/eJzbY2iAD-CWjTcwNwUAhWEMOg==.png'
  ],
  [
    'Traps',
    TRAPS,
    'Back',
    'https://www.freetrainers.com/redbody/eJzbY2hAOgDpiTcwNwUAhUsMOg==.png'
  ],
  [
    'Calves',
    CALVES,
    'Legs',
    'https://www.freetrainers.com/redbody/eJzbY2gAATCaWBBvYG4KAIV3DDo=.png'
  ],
  [
    'Hamstrings',
    HAMSTRINGS,
    'Legs',
    'https://www.freetrainers.com/redbody/eJzbY2iADjBFsIF4A3NTAIVtDDo=.png'
  ],
  [
    'Quads',
    QUADS,
    'Legs',
    'https://www.freetrainers.com/redbody/eJzbY2hADMBUFW9gbgoAhVkMOg==.png'
  ],
  [
    'Glutes',
    GLUTES,
    'Buttocks',
    'https://www.freetrainers.com/redbody/eJzbY2iADFB5-EC8gbkpAIVxDDo=.png'
  ],
  [
    'Pecs',
    PECS,
    'Chest',
    'https://www.freetrainers.com/redbody/eJzbY2hACGBXEW9gbgoAhV0MOg==.png'
  ]
]

source = 'freetrainers.com'

muscles.each do |muscle|
  name, description, muscle_group, image_url = muscle

  Muscle.find_or_create_by!(
    name: name,
    description: description,
    muscle_group: MuscleGroup.find_by(name: muscle_group),
    image_url: image_url,
    source: source
  )
end
