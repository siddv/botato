# Description:
#   Tells jokes about a given subject
#
# Commands:
#   hubot tell a <subject> joke - Tell a randomly selected joke about a given subject
#
# Author:
#   siddv

module.exports = (robot) ->

  tellJokePart = (jokePart, i, res) ->

    setTimeout ( ->
      res.send jokePart
    ), 1000 * i

  jokes = {
    potato: [
      [
        "What do you call a rotating potato?",
        "A Rotato."
      ],
      [
        "What do you call a buoyant potato?",
        "A Floatato."
      ],
      [
        "What do you call a philosophical potato?",
        "Plato."
      ],
      [
        "What do you call a short potato?",
        "A Lowtato."
      ],
      [
        "What do you call a wise potato?",
        "A Knowtato."
      ],
      [
        "What do you call a potato wrapping up for warmth?",
        "A Jacket Potato."
      ],
      [
        "What do you call a short potato?",
        "A Lowtato."
      ],
      [
        "What do you call a wise potato?",
        "A Knowtato."
      ],
    ]
  }


  robot.respond /tell a (.*) joke/i, (res) ->

    subject = res.match[1]

    if jokes[subject]

      jokesLength = jokes[subject].length
      jokeIndex = Math.floor(Math.random() * jokesLength)
      currentJoke = jokes[subject][jokeIndex]

      for jokePart, i in currentJoke

        tellJokePart jokePart, i, res

    else

      res.reply "I don't know any #{subject} jokes."
