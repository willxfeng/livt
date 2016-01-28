require_relative 'muscle_group_descriptions'
include MuscleGroupDescriptions

muscle_groups = [
  [
    'Abs',
    ABS,
    'https://www.freetrainers.com/redbody/eJzbY2hgaIAPGGJhgUC8gbkpAIWrDDw=.png'
  ],
  [
    'Arms',
    ARMS,
    'https://www.freetrainers.com/redbody/eJzbY2gAAsgkMcDQIN7A3BQAha8MPA==.png'
  ],
  [
    'Shoulders',
    SHOULDERS,
    'https://www.freetrainers.com/redbody/eJzbY2hgYADC2IAhGo0M4g3MTQGFsww8.png'
  ],
  [
    'Back',
    BACK,
    'https://www.freetrainers.com/redbody/eJzbY2gAAwgWgo8uhhCNNzA3BQCFyQw-.png'
  ],
  [
    'Legs',
    LEGS,
    'https://www.freetrainers.com/redbody/eJzbY2gAATAamWWAJIYuH29gbgoAhdUMPg==.png'
  ],
  [
    'Buttocks',
    BUTTOCKS,
    'https://www.freetrainers.com/redbody/eJzbY2iADAwNUPm4QbyBuSkAhZ0MOw==.png'
  ],
  [
    'Chest',
    CHEST,
    'https://www.freetrainers.com/redbody/eJzbY2hACGBXEW9gbgoAhV0MOg==.png'
  ],
  [
    'Hips',
    HIPS,
    'https://www.freetrainers.com/redbody/eJzbY2iADRga4BKHgXgDc1MAhZsMPA==.png'
  ]
]

source = 'freetrainers.com'

muscle_groups.each do |muscle_group|
  name, description, image_url = muscle_group

  MuscleGroup.find_or_create_by!(
    name: name,
    description: description,
    image: image_url,
    source: source
  )
end
