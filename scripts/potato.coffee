# Potato.coffee
#
# <botname> tell me a <joke type> joke
# e.g. : botato tell me a potato joke

module.exports = (robot) ->

  jokes = {
    potato: [
      {
        q: "What do you call a rotating potato?"
        a: "A Rotato."
      },
      {
        q: "What do you call a buoyant potato?"
        a: "A Floatato."
      },
      {
        q: "What do you call a philosophical potato?"
        a: "Plato."
      },
      {
        q: "What do you call a short potato?"
        a: "A Lowtato."
      },
      {
        q: "What do you call a wise potato?"
        a: "A Knowtato."
      },
      {
        q: "What do you call a potato wrapping up for warmth?"
        a: "A Jacket Potato."
      },
      {
        q: "What do you call a short potato?"
        a: "A Lowtato."
      },
      {
        q: "What do you call a wise potato?"
        a: "A Knowtato."
      },
    ]
  }

  robot.respond /tell me a (.*) joke/i, (res) ->

    jokeType = res.match[1]

    if jokes[jokeType]

      jokesLength = jokes[jokeType].length
      jokeIndex = Math.floor(Math.random() * jokesLength)

      res.reply jokes[jokeType][jokeIndex].q

      setTimeout ( ->
        res.send jokes[jokeType][jokeIndex].a
      ), 1000

    else

      res.reply "I don't know what a \"#{jokeType} joke\" is."
