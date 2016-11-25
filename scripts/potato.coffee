module.exports = (robot) ->

  robot.respond /tell me a (.*) joke/i, (res) ->
    jokeType = res.match[1]
    if jokeType is "potato"
      res.reply "What do you call a rotating potato? A Rotato."
    else
      res.reply "I DON'T KNOW WHAT YOU WANT FROM ME T.T. What's a #{jokeType} joke anyway?"
