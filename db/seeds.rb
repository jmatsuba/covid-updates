# frozen_string_literal: true

User.destroy_all
Category.destroy_all
Resource.destroy_all

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



##
# Resources
#
print '..'
resources = Resource.create!([
  {
    name: 'March 23, 2020',
    rich_description: "Prime Minister Justin Trudeau warned of potential COVID-19 enforcement measures as individuals continue to engage in 'extremely concerning' activities.",
    video_id: 'hcPXrMpROsg',
    start_time: 915,
    date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
    category: national,
    kind: 'youtube_video',
    status: 'approved'
  }, {
    name: 'March 22, 2020',
    rich_description: "Prime Minister Justin Trudeau says the $82-billion financial package announced earlier this week is just 'a very first step' as health-care officials warn social distancing could last months.",
    video_id: '9QoBoeC6SAg',
    start_time: 921,
    date: DateTime.new(2020, 3, 22, 8, 0, 0, '-07:00'),
    category: national,
    kind: 'youtube_video',
    status: 'approved'
  }, {
    name: 'March 21, 2020',
    rich_description: "Prime Minister Justin Trudeau says the government is doing all it can to help bring home Canadians, but conceded it won't be able to help everyone.",
    video_id: 'L8zLeb2t4v8',
    start_time: nil,
    date: DateTime.new(2020, 3, 21, 8, 0, 0, '-07:00'),
    category: national,
    kind: 'youtube_video',
    status: 'approved'
  },
  {
    name: 'March 20, 2020',
    rich_description: 'Canada will turn back asylum-seekers attempting to enter the country outside of official border points, announced Prime Minister Justin Trudeau. It part of a set of extreme new measures meant to stop the spreadv of COVID-19.',
    video_id: 'om2fbGu8giw',
    start_time: 887,
    date: DateTime.new(2020, 3, 20, 8, 0, 0, '-07:00'),
    category: national,
    kind: 'youtube_video',
    status: 'approved'
  },
  {
    name: 'March 23, 2020',
    rich_description: '<strong>Total Cases:</strong> 301 <br>
    <strong>New Cases:</strong> 42 <br>',
    video_id: '5eNZMiFX9Pc',
    start_time: nil,
    date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
    category: ab,
    kind: 'youtube_video',
    status: 'approved'
  },
  {
    name: 'March 21, 2020',
    rich_description: '<strong>Total Cases:</strong> 226 <br>
    <strong>New Cases:</strong> 31 <br>',
    video_id: 'sV5QnlvFfXY',
    start_time: nil,
    date: DateTime.new(2020, 3, 21, 8, 0, 0, '-07:00'),
    category: ab,
    kind: 'youtube_video',
    status: 'approved'
  },
  {
    name: 'March 20, 2020',
    rich_description: '<strong>Total Cases:</strong> 195 <br>
    <strong>New Cases:</strong> 49 <br>',
    video_id: 's6SkgYaQkOc',
    start_time: nil,
    date: DateTime.new(2020, 3, 20, 8, 0, 0, '-07:00'),
    category: ab,
    kind: 'youtube_video',
    status: 'approved'
  },
  {
    name: 'March 19, 2020',
    rich_description: '<strong>Total Cases:</strong> 146 <br>
    <strong>New Cases:</strong> 27 <br>',
    video_id: 'alzOXftShR0',
    start_time: nil,
    date: DateTime.new(2020, 3, 19, 8, 0, 0, '-07:00'),
    category: ab,
    kind: 'youtube_video',
    status: 'approved'
  },
  {
    name: 'March 23, 2020',
    rich_description: '
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
    kind: 'youtube_video',
    status: 'approved'
  },
  {
    name: 'March 21, 2020',
    rich_description: '
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
    kind: 'youtube_video',
    status: 'approved'
  },
  {
    name: 'March 20, 2020',
    rich_description: '
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
    kind: 'youtube_video',
    status: 'approved'
  },
  {
    name: 'March 19, 2020',
    rich_description: '
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
    kind: 'youtube_video',
    status: 'approved'
  },
  {
    name: 'March 23, 2020',
    rich_description: '
    ',
    video_id: 'g_fNMmWpdlM',
    start_time: 2521,
    date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
    category: on,
    kind: 'youtube_video',
    status: 'approved'
  },
  {
    name: 'March 21, 2020',
    rich_description: '
    ',
    video_id: 'ARBgnsoRQNY',
    start_time: nil,
    date: DateTime.new(2020, 3, 21, 8, 0, 0, '-07:00'),
    category: on,
    kind: 'youtube_video',
    status: 'approved'
  },
  {
    name: 'March 20, 2020',
    rich_description: '
    ',
    video_id: '10b5fzKqfdM',
    start_time: nil,
    date: DateTime.new(2020, 3, 20, 8, 0, 0, '-07:00'),
    category: on,
    kind: 'youtube_video',
    status: 'approved'
  },
  {
    name: 'March 19, 2020',
    rich_description: '
    ',
    video_id: 'NdHmGP96ow4',
    start_time: nil,
    date: DateTime.new(2020, 3, 19, 8, 0, 0, '-07:00'),
    category: on,
    kind: 'youtube_video',
    status: 'approved'
  }
])



basics = Category.create!(name: 'Basics', kind: 'general', priority: 1, slug: 'basics')
flatten = Category.create!(name: 'Flattening the Curve', kind: 'general', priority: 2, slug: 'flatten_the_curve')
tools = Category.create!(name: 'Tools', kind: 'general', priority: 3, slug: 'tools')
other = Category.create!(name: 'Other', kind: 'general', priority: 4, slug: 'other')

resources = Resource.create!([
  {
    name: 'World Health Organization: Novel coronavirus (2019-nCoV)',
    rich_description: '<p>Basically the "what, when, where, how" of what the World Health Organization knows about the novel coronavirus (nCoV).</p>',
    video_id: 'mOV1aBVYKGA',
    start_time: nil,
    date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
    category: basics,
    kind: 'youtube_video',
    priority: 1,
    status: 'approved'
  },
  {
    name: 'How To See Germs Spread',
    rich_description: '<p>Mark Rober (former NASA engineer) shares some science around how germs spread. Consider sharing this with anyone who doubts the science behind social distancing. Mark: "The road ahead will be a bit bumpy, but we totally got this fellow Earthlings :)</p>',
    video_id: 'I5-dI74zxPg',
    start_time: nil,
    date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
    category: flatten,
    kind: 'youtube_video',
    priority: 1,
    status: 'approved'
  },
  {
    name: '"Get prepared as soon as you can", says Italian doctor',
    rich_description: 'We are expecting a surge in the coming days and hope it will not reach the intensity of Lombardy... my suggestion is you get prepared as soon as you can.',
    video_id: '61-gFtHJOd8',
    start_time: nil,
    date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
    category: other,
    kind: 'youtube_video',
    priority: 1,
    status: 'approved'
  },
  {
    name: 'Why outbreaks like coronavirus spread exponentially, and how to “flatten the curve”',
    url: 'https://www.washingtonpost.com/graphics/2020/world/corona-simulator/',
    thumbnail: 'https://i.imgur.com/EARMU7X.png',
    rich_description: 'The early trickle of new coronavirus infections has turned into a steady current. By creating simple simulations, we can see how to slow it down.',
    date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
    category: flatten,
    kind: 'article',
    priority: 1,
    status: 'approved'
  },
  {
    name: 'The Korean clusters',
    url: 'https://graphics.reuters.com/CHINA-HEALTH-SOUTHKOREA-CLUSTERS/0100B5G33SB/index.html',
    thumbnail: 'https://i.imgur.com/qU2f8Ej.png',
    rich_description: 'How coronavirus cases exploded in South Korean churches and hospitals. A analysis of early spread of the virus in South Korean.',
    date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
    category: flatten,
    kind: 'article',
    priority: 1,
    status: 'approved'
  },
  {
    name: 'World Health Organization (WHO) - Advice for the public',
    url: 'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public',
    thumbnail: 'https://i.imgur.com/xyHuO3Z.png',
    rich_description: 'Tips from the World Health Organization on how to handle the coronavirus. Stay aware of the latest information on the COVID-19 outbreak, available on the WHO website and through your national and local public health authority.',
    date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
    category: basics,
    kind: 'article',
    priority: 1,
    status: 'approved'
  },
  {
    name: 'World Health Organization (WHO) - How to protect yourself',
    url: 'https://youtu.be/1APwq1df6Mw',
    thumbnail: 'https://i.imgur.com/xyHuO3Z.png',
    rich_description: 'It is spread from person to person mainly through the droplets produced when an infected person speaks, coughs or sneezes. Watch this short animation to learn more about COVID-19 and how to protect yourself against it.',
    date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
    category: basics,
    video_id: '1APwq1df6Mw',
    kind: 'youtube_video',
    priority: 1,
    status: 'approved'
  },
  {
    name: 'Worldometer - Global Coronavirus Stats (Live)',
    url: 'https://www.worldometers.info/coronavirus/',
    thumbnail: 'https://i.imgur.com/rXXvDlK.png',
    rich_description: 'Live statistics and coronavirus news tracking the number of confirmed cases, recovered patients, and death toll by country due to the COVID 19 coronavirus.',
    date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
    category: tools,
    kind: 'website',
    priority: 1,
    status: 'approved'
  },
  {
    name: 'BC COVID-19 Self-Assessment Tool',
    url: 'https://bc.thrive.health/',
    thumbnail: 'https://i.imgur.com/fjhKvRc.png',
    rich_description: 'B.C. Ministry of Health in partnership with Thrive Health has created the COVID-19 Self-Assessment Tool for you. This tool will determine whether you may need further assessment or testing for COVID-19.',
    date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
    category: tools,
    kind: 'website',
    priority: 1,
    status: 'approved'
  },
])

print 'done'
