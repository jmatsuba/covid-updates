namespace :data do
  desc "Real Data"
  task real: :environment do
    puts "adding data"

    Resource.create(
      name: 'March 24, 2020 (Live)',
      description: 'Prime Minister Justin Trudeau is addressing the country as a small number of MPs return to Ottawa today to vote on measures to spend billions on aid for families and businesses struggling to cope as the coronavirus outbreak hammers the economy.',
      video_id: 'MyHRODOzBb4',
      start_time: 0,
      date: DateTime.new(2020, 3, 24, 8, 0, 0, '-07:00'),
      category_id: 1,
      kind: 'youtube_video'
    )

    puts "done"
  end

end
