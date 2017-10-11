module PagesHelper

  def twitter_parser tweet

    tweet_array = tweet.split(':')
    newtweet = tweet_array[1..99].join(':')

    regex = %r{
      \b
      (
        (?: [a-z][\w-]+:
         (?: /{1,3} | [a-z0-9%] ) |
          www\d{0,3}[.] |
          [a-z0-9.\-]+[.][a-z]{2,4}/
        )
        (?:
         [^\s()<>]+ | \(([^\s()<>]+|(\([^\s()<>]+\)))*\)
        )+
        (?:
          \(([^\s()<>]+|(\([^\s()<>]+\)))*\) |
          [^\s`!()\[\]{};:'".,<>?«»“”‘’]
        )
      )
    }ix

    newtweet.gsub(regex) do |url|
      "<a href='#{url}' target='_blank'>LINK</a>"
    end.html_safe

  end
end
