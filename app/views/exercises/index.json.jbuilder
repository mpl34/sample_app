json.array!(@exercises) do |exercise|
  json.extract! exercise, :name, :sets, :reps, :time, :rest, :side, :description, :text, :area, :equipment, :type, :string, :best_for, :eb_link, :eb_article, :abstract, :video_link, :image1, :string, :image2, :image3, :image4, :user_id
  json.url exercise_url(exercise, format: :json)
end