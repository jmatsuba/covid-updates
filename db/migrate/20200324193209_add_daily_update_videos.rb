class AddDailyUpdateVideos < ActiveRecord::Migration[6.0]
  def change
    ab = Category.find_by(slug: 'alberta')
    bc = Category.find_by(slug: 'british-columbia')
    on = Category.find_by(slug: 'ontario')

    resources = Resource.create!([
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
  end
end
