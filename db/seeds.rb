# frozen_string_literal: true

print 'Seeding db...'
##
# Users
#

users = User.create!([
  { email: 'feedback@covid-updates.ca', password: 'changeme' }
])

##
# Categories
#
national = Category.create!(name: 'National', kind: 'daily_update', priority: 1, slug: 'canada')
ab = Category.create!(name: 'Alberta', kind: 'daily_update', priority: 2, slug: 'alberta')
bc = Category.create!(name: 'British Columbia', kind: 'daily_update', priority: 3, slug: 'british-columbia')
on = Category.create!(name: 'Ontario', kind: 'daily_update', priority: 1, slug: 'ontario')

about = Category.create!(name: 'About', kind: 'general', priority: 1, slug: 'about')
spread = Category.create!(name: 'Spread', kind: 'general', priority: 2, slug: 'spread')
tools = Category.create!(name: 'Tools', kind: 'general', priority: 3, slug: 'tools')
other = Category.create!(name: 'Other', kind: 'general', priority: 3, slug: 'other')

##
# Resources
#
print '..'
resources = Resource.create!([
  {
    name: 'March 23, 2020',
    description: "Prime Minister Justin Trudeau warned of potential COVID-19 enforcement measures as individuals continue to engage in 'extremely concerning' activities.",
    video_id: 'hcPXrMpROsg',
    start_time: 915,
    date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
    category: national,
    kind: 'youtube_video'
  }, {
    name: 'March 22, 2020',
    description: "Prime Minister Justin Trudeau says the $82-billion financial package announced earlier this week is just 'a very first step' as health-care officials warn social distancing could last months.",
    video_id: '9QoBoeC6SAg',
    start_time: 921,
    date: DateTime.new(2020, 3, 22, 8, 0, 0, '-07:00'),
    category: national,
    kind: 'youtube_video'
  }, {
    name: 'March 21, 2020',
    description: "Prime Minister Justin Trudeau says the government is doing all it can to help bring home Canadians, but conceded it won't be able to help everyone.",
    video_id: 'L8zLeb2t4v8',
    start_time: nil,
    date: DateTime.new(2020, 3, 21, 8, 0, 0, '-07:00'),
    category: national,
    kind: 'youtube_video'
  }, {
    name: 'March 20, 2020',
    description: 'Canada will turn back asylum-seekers attempting to enter the country outside of official border points, announced Prime Minister Justin Trudeau. It part of a set of extreme new measures meant to stop the spreadv of COVID-19.',
    video_id: 'om2fbGu8giw',
    start_time: 887,
    date: DateTime.new(2020, 3, 20, 8, 0, 0, '-07:00'),
    category: national,
    kind: 'youtube_video'
  }
  ])

print 'done'
