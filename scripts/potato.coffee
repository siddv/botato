# Description:
#   Tells jokes about a given subject
#
# Commands:
#   hubot tell me a <subject> joke - Tell a randomly selected joke about a given subject
#
# Author:
#   siddv

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

    subject = res.match[1]

    if jokes[subject]

      jokesLength = jokes[subject].length
      jokeIndex = Math.floor(Math.random() * jokesLength)

      res.reply jokes[subject][jokeIndex].q

      setTimeout ( ->
        res.send jokes[subject][jokeIndex].a
      ), 1000

    else

      res.reply "I don't know any #{subject} jokes."
