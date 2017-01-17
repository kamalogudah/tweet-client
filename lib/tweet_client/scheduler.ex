defmodule TweetClient.Scheduler do
  def schedule_file(schedule, file) do
     Quantum.add_job(schedule, fn -> IO.puts TweetClient.FileReader.get_strings_to_tweet(file) end)
  end
end 
