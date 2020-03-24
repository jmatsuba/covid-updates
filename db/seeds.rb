# frozen_string_literal: true

User.destroy_all
Category.destroy_all

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
on = Category.create!(name: 'Ontario', kind: 'daily_update', priority: 4, slug: 'ontario')

about = Category.create!(name: 'About', kind: 'general', priority: 1, slug: 'about')
spread = Category.create!(name: 'Spread', kind: 'general', priority: 2, slug: 'spread')
tools = Category.create!(name: 'Tools', kind: 'general', priority: 3, slug: 'tools')
other = Category.create!(name: 'Other', kind: 'general', priority: 4, slug: 'other')

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
  },
  {
    name: 'March 20, 2020',
    description: 'Canada will turn back asylum-seekers attempting to enter the country outside of official border points, announced Prime Minister Justin Trudeau. It part of a set of extreme new measures meant to stop the spreadv of COVID-19.',
    video_id: 'om2fbGu8giw',
    start_time: 887,
    date: DateTime.new(2020, 3, 20, 8, 0, 0, '-07:00'),
    category: national,
    kind: 'youtube_video'
  },
  {
    name: 'March 23, 2020',
    description: '<strong>Total Cases:</strong> 301 <br>
    <strong>New Cases:</strong> 42 <br>',
    video_id: '5eNZMiFX9Pc',
    start_time: nil,
    date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
    category: ab,
    kind: 'youtube_video'
  },
  {
    name: 'March 21, 2020',
    description: '<strong>Total Cases:</strong> 226 <br>
    <strong>New Cases:</strong> 31 <br>',
    video_id: 'sV5QnlvFfXY',
    start_time: nil,
    date: DateTime.new(2020, 3, 21, 8, 0, 0, '-07:00'),
    category: ab,
    kind: 'youtube_video'
  },
  {
    name: 'March 20, 2020',
    description: '<strong>Total Cases:</strong> 195 <br>
    <strong>New Cases:</strong> 49 <br>',
    video_id: 's6SkgYaQkOc',
    start_time: nil,
    date: DateTime.new(2020, 3, 20, 8, 0, 0, '-07:00'),
    category: ab,
    kind: 'youtube_video'
  },
  {
    name: 'March 19, 2020',
    description: '<strong>Total Cases:</strong> 146 <br>
    <strong>New Cases:</strong> 27 <br>',
    video_id: 'alzOXftShR0',
    start_time: nil,
    date: DateTime.new(2020, 3, 19, 8, 0, 0, '-07:00'),
    category: ab,
    kind: 'youtube_video'
  },
  {
    name: 'March 23, 2020',
    description: '
    Note: First 15 seconds has no audio<br><br>
    <strong>Total Cases:</strong> 472 <br>
    <strong>New Cases (48 hrs):</strong> 48 <br>
    <strong>Vancouver Coastal Health:</strong> 248 <br>
    <strong>Fraser Health:</strong> 150 <br>
    <strong>Vancouver Island:</strong> 39 <br>
    <strong>Interior Health:</strong> 30 <br>
    <strong>Northern Health:</strong> 5 <br>
    ',
    video_id: 'tSb19Trz-uQ',
    start_time: nil,
    date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
    category: bc,
    kind: 'youtube_video'
  },
  {
    name: 'March 21, 2020',
    description: '
    <strong>Total Cases:</strong> 424 <br>
    <strong>New Cases:</strong> 74 <br>
    <strong>Vancouver Coastal Health:</strong> 230 <br>
    <strong>Fraser Health:</strong> 126 <br>
    <strong>Vancouver Island:</strong> 37 <br>
    <strong>Interior Health:</strong> 27 <br>
    <strong>Northern Health:</strong> 4 <br>
    ',
    video_id: 'lJTIFJFFJpw',
    start_time: nil,
    date: DateTime.new(2020, 3, 21, 8, 0, 0, '-07:00'),
    category: bc,
    kind: 'youtube_video'
  },
  {
    name: 'March 20, 2020',
    description: '
    <strong>Total Cases:</strong> 348 <br>
    <strong>New Cases:</strong> 77 <br>
    <strong>Vancouver Coastal Health:</strong> 200 <br>
    <strong>Fraser Health:</strong> 95 <br>
    <strong>Vancouver Island:</strong> 30 <br>
    <strong>Interior Health:</strong> 19 <br>
    <strong>Northern Health:</strong> 4 <br>
    ',
    video_id: 'o6eVdtjWq8Y',
    start_time: nil,
    date: DateTime.new(2020, 3, 20, 8, 0, 0, '-07:00'),
    category: bc,
    kind: 'youtube_video'
  },
  {
    name: 'March 19, 2020',
    description: '
    <strong>Total Cases:</strong> 271 <br>
    <strong>New Cases:</strong> 40 <br>
    <strong>Vancouver Coastal Health:</strong> 152 <br>
    <strong>Fraser Health:</strong> 81 <br>
    <strong>Vancouver Island:</strong> 22 <br>
    <strong>Interior Health:</strong> 12 <br>
    <strong>Northern Health:</strong> 4 <br>
    ',
    video_id: 'grnm1mR-6Pk',
    start_time: nil,
    date: DateTime.new(2020, 3, 19, 8, 0, 0, '-07:00'),
    category: bc,
    kind: 'youtube_video'
  },
  {
    name: 'March 23, 2020',
    description: '
    ',
    video_id: 'g_fNMmWpdlM',
    start_time: 2521,
    date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
    category: on,
    kind: 'youtube_video'
  },
  {
    name: 'March 21, 2020',
    description: '
    ',
    video_id: 'ARBgnsoRQNY',
    start_time: nil,
    date: DateTime.new(2020, 3, 21, 8, 0, 0, '-07:00'),
    category: on,
    kind: 'youtube_video'
  },
  {
    name: 'March 20, 2020',
    description: '
    ',
    video_id: '10b5fzKqfdM',
    start_time: nil,
    date: DateTime.new(2020, 3, 20, 8, 0, 0, '-07:00'),
    category: on,
    kind: 'youtube_video'
  },
  {
    name: 'March 19, 2020',
    description: '
    ',
    video_id: 'NdHmGP96ow4',
    start_time: nil,
    date: DateTime.new(2020, 3, 19, 8, 0, 0, '-07:00'),
    category: on,
    kind: 'youtube_video'
  }
])

print 'done'
