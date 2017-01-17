defmodule TweetClient.Tweet do
   def send(str) do
      ExTwitter.configure(:process, [consumer_key: System.get_env("TWEET_CLIENT_CONSUMER_KEY"),
         consumer_secret: System.get_env("TWEET_CLIENT_CONSUMER_SECRET"),
         access_token: System.get_env("TWEET_CLIENT_ACCESS_TOKEN"),
          access_token_secret: System.get_env("TWEET_CLIENT_ACCESS_TOKEN_SECRET")])

        ExTwitter.update(str)

    end

    def send_random(file) do
       TweetClient.FileReader.get_strings_to_tweet(file)
       |> send
    end
end
