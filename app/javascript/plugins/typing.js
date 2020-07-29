// values to keep track of the number of letters typed, which quote to use. etc. Don't change these values.
var i = 0,
    a = 0,
    isBackspacing = false,
    isParagraph = false;

// Typerwrite text content. Use a pipe to indicate the start of the second line "|".
var textArray = [
  " Emancipate yourselves from mental slavery. None but ourselves can free our minds.|Bob Marley",
  "Don't criticize what you can't understand|Bob Dylan",
  "I get by with a little help from my friends.|John Lennon",
  "And when the night is cloudy, there is still a light, that shines on me, shine until tomorrow, let it be.|Paul McCartney",
  "You may say I'm a dreamer.. but I'm not the only one; I hope someday you'll join us and the world will live as one.|John Lennon",
  "They will not control us, we will be victorious.|Muse",
  "Lose your dreams.. and you will lose your mind.|The Rolling Stones",
  "Being drunk is a good disguise. I drink so I can talk to assholes. This includes me.|Jim Morrison",
  "We co-create our own fate; Man from stars, man from ape; Everything's connected|Tim Booth",
  "The truth begins again.. the truth is not that comfortable, no..|Moby",
  "I'm very emotional; I think I may go mad in several years' time.|Freddie Mercury",
  "Come closer and see. See into the dark, just follow your eyes!|The Cure",
  "I'm like a patient trying to find levitation|Damian Marley"
];

// Speed (in milliseconds) of typing.
var speedForward = 150, //Typing Speed
    speedWait = 2000, // Wait between typing and backspacing
    speedBetweenLines = 1000, //Wait between first and second lines
    speedBackspace = 42; //Backspace Speed

//Run the loop
typeWriter("output", textArray);

function typeWriter(id, ar) {
  var element = $("#" + id),
      aString = ar[a],
      eHeader = element.children("h1"), //Header element
      eParagraph = element.children("p"); //Subheader element

  // Determine if animation should be typing or backspacing
  if (!isBackspacing) {

    // If full string hasn't yet been typed out, continue typing
    if (i < aString.length) {

      // If character about to be typed is a pipe, switch to second line and continue.
      if (aString.charAt(i) == "|") {
        isParagraph = true;
        eHeader.removeClass("cursor");
        eParagraph.addClass("cursor");
        i++;
        setTimeout(function(){ typeWriter(id, ar); }, speedBetweenLines);

      // If character isn't a pipe, continue typing.
      } else {
        // Type header or subheader depending on whether pipe has been detected
        if (!isParagraph) {
          eHeader.text(eHeader.text() + aString.charAt(i));
        } else {
          eParagraph.text(eParagraph.text() + aString.charAt(i));
        }
        i++;
        setTimeout(function(){ typeWriter(id, ar); }, speedForward);
      }

    // If full string has been typed, switch to backspace mode.
    } else if (i == aString.length) {

      isBackspacing = true;
      setTimeout(function(){ typeWriter(id, ar); }, speedWait);

    }

  // If backspacing is enabled
  } else {

    // If either the header or the paragraph still has text, continue backspacing
    if (eHeader.text().length > 0 || eParagraph.text().length > 0) {

      // If paragraph still has text, continue erasing, otherwise switch to the header.
      if (eParagraph.text().length > 0) {
        eParagraph.text(eParagraph.text().substring(0, eParagraph.text().length - 1));
      } else if (eHeader.text().length > 0) {
        eParagraph.removeClass("cursor");
        eHeader.addClass("cursor");
        eHeader.text(eHeader.text().substring(0, eHeader.text().length - 1));
      }
      setTimeout(function(){ typeWriter(id, ar); }, speedBackspace);

    // If neither head or paragraph still has text, switch to next quote in array and start typing.
    } else {

      isBackspacing = false;
      i = 0;
      isParagraph = false;
      a = (a + 1) % ar.length; //Moves to next position in array, always looping back to 0
      setTimeout(function(){ typeWriter(id, ar); }, 50);

    }
  }
}
