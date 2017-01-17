defmodule TweetClient.Scheduler do
  def schedule_file(schedule, file) do
     Quantum.add_job(schedule, fn ->
     TweetClient.FileReader.get_strings_to_tweet(file)
     |> TweetClient.TweetServer.tweet end)
  end
end
