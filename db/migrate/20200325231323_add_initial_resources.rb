class AddInitialResources < ActiveRecord::Migration[6.0]
  def change
    other = Category.find_by(slug: 'other')

    resources = Resource.create!([
      {
        name: 'World Health Organization: Novel coronavirus (2019-nCoV)',
        rich_description: '<p>Basically the "what, when, where, how" of what the World Health Organization knows about the novel coronavirus (nCoV).</p>',
        video_id: 'mOV1aBVYKGA',
        start_time: nil,
        date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
        category: other,
        kind: 'youtube_video'
      },
      {
        name: 'How To See Germs Spread',
        rich_description: '<p>Mark Rober (former NASA engineer) shares some science around how germs spread. Consider sharing this with anyone who doubts the science behind social distancing. Mark: "The road ahead will be a bit bumpy, but we totally got this fellow Earthlings :)</p>',
        video_id: 'I5-dI74zxPg',
        start_time: nil,
        date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
        category: other,
        kind: 'youtube_video'
      },
      {
        name: '"Get prepared as soon as you can", says Italian doctor',
        rich_description: 'We are expecting a surge in the coming days and hope it will not reach the intensity of Lombardy... my suggestion is you get prepared as soon as you can.',
        video_id: '61-gFtHJOd8',
        start_time: nil,
        date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
        category: other,
        kind: 'youtube_video'
      },
      {
        name: 'Why outbreaks like coronavirus spread exponentially, and how to “flatten the curve”',
        url: 'https://www.washingtonpost.com/graphics/2020/world/corona-simulator/',
        thumbnail: 'https://i.imgur.com/EARMU7X.png',
        rich_description: 'The early trickle of new coronavirus infections has turned into a steady current. By creating simple simulations, we can see how to slow it down.',
        date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
        category: other,
        kind: 'article'
      },
      {
        name: 'The Korean clusters',
        url: 'https://graphics.reuters.com/CHINA-HEALTH-SOUTHKOREA-CLUSTERS/0100B5G33SB/index.html',
        thumbnail: 'https://i.imgur.com/qU2f8Ej.png',
        rich_description: 'How coronavirus cases exploded in South Korean churches and hospitals. A analysis of early spread of the virus in South Korean.',
        date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
        category: other,
        kind: 'article'
      },
      {
        name: 'Why outbreaks like coronavirus spread exponentially, and how to “flatten the curve”',
        url: 'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public',
        thumbnail: 'https://i.imgur.com/xyHuO3Z.png',
        rich_description: 'Tips from the World Health Organization on how to handle the coronavirus. Stay aware of the latest information on the COVID-19 outbreak, available on the WHO website and through your national and local public health authority.',
        date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
        category: other,
        kind: 'article'
      },
      {
        name: 'World Health Organization (WHO) - How to protect yourself',
        url: 'https://youtu.be/1APwq1df6Mw',
        thumbnail: 'https://i.imgur.com/xyHuO3Z.png',
        rich_description: 'It is spread from person to person mainly through the droplets produced when an infected person speaks, coughs or sneezes. Watch this short animation to learn more about COVID-19 and how to protect yourself against it.',
        date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
        category: other,
        video_id: '1APwq1df6Mw',
        kind: 'youtube_video'
      },
      {
        name: 'Worldometer - Global Coronavirus Stats (Live)',
        url: 'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public',
        thumbnail: 'https://i.imgur.com/xyHuO3Z.png',
        rich_description: 'Live statistics and coronavirus news tracking the number of confirmed cases, recovered patients, and death toll by country due to the COVID 19 coronavirus.',
        date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
        category: other,
        kind: 'website'
      },
      {
        name: 'BC COVID-19 Self-Assessment Tool',
        url: 'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public',
        thumbnail: 'https://i.imgur.com/xyHuO3Z.png',
        rich_description: 'B.C. Ministry of Health in partnership with Thrive Health has created the COVID-19 Self-Assessment Tool for you. This tool will determine whether you may need further assessment or testing for COVID-19.',
        date: DateTime.new(2020, 3, 23, 8, 0, 0, '-07:00'),
        category: other,
        kind: 'website'
      },
    ])
  end
end
