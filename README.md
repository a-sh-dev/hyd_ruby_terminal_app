# "How You Doin? 🙂" Terminal Application

GitHub repo:

`https://github.com/a-sh-dev/----TO BE UPDATED!!!`

--- place final product screenshot here

## Installation & Setup





## About

### Purpose

***How You Doin?*** (HYD) is a terminal app that aims to provide entertainment to the user, in the form of jokes (dad jokes to be specific 🙂) and also positive encouragements as a relief or comfort when they are feeling unwell emotionally.   

The app also features to record a log of how the user is doing (feeling) when and after using it to track their mental wellbeing.

HYD is inspired by Joey's famous pickup line from the sitcom *Friends*. Although he says it flirtatiously and cheekily, it never fails to make the other party laugh every time he says it. It will be ambitious to guarantee users to laugh after using the app (especially with dad jokes!), but hopefully, HYD can provide relief, comfort, or at least a smile and make the user feel better.

The tone of the app is positive, chill and friendly. The chosen words throughout the app will be sensitive and considerate. For example, not using the word 'quit' to end the program, preventing any harmful negative thoughts for the worse-case scenario.

### General Features

#### Record a log of *<u>how user is doing (feeling)</u>* before and after using the app

- Log is created and saved under a user's unique name/nickname to prevent potential duplicates and also to provide privacy
- Log entry details include date, day and time of use
- The last 7 entries of the log is displayed after the '*entertainment*' part and just before quitting the app
  - The log entries are for display only and immutable
- Log keeps track on the user's feeling category before and after using the app and the app will respond to the user accordingly before it quits
  - Two categories at the start of the app (before):
    - *Alert/Concern*: sad / stress / angry
    - *Normal*: bored / just ok / happy
  - Feeling categories at the end of the app (after):
    - *Alert/Concern*: worse
    - Same-same (is considered as alert/concern category based on the first entry) 
    - *Normal*: better
- When the user's feeling is in *Alert/Concern* category, after the log is displayed, a mental health facts and advice will be displayed before exiting the app, then a helpline number is also displayed.
  - The mental health facts and advice will be catered according to the specific user's feeling: sad / stress / angry

#### Entertainment

##### *"How about a laugh?"* 

- Randomise dad jokes
  - The user can randomise as many times they want
  - Content can be spoken out (speech/speak features)
  - User has the option to switch to the other entertainment
  - Ideal back-end features:

    - Possibility to deactivate the jokes that appear too much and then be re-activated at specific period of time, to reduce too much repetition
    - Possibility for external contents update 

##### *"How about an encouragement?"*

- Same features as above

### User Experience – How to Use

##### Control Flowchart

![HYD control flowchart](/Users/a-sh/Desktop/_CODE/Assignments/T1A3 - Terminal App/public/docs/hyd_app_flow.png)



##### Pseudocode

At the start of the app, a welcome and general app info (what it is and how to use it) is displayed.

The user is asked to enter a unique name or nickname to be used to login next time and to access their log (at this point, password is not available yet).

- If name exists, the user is asked to choose 

User then is welcomed with their name and asked, "*How you doin (feeling), today?"*

Other than to provide relief and entertainment to the user, the app also functions to track the user's feeling. There are two entry points for keeping track, below is the first entry, and when they decide to 'call it a day' (end the app), the last one is prompted to update their feeling.

There are two categories of feelings that the user can choose (the two category names are not visible to the user, only for back-end purpose):

- *Alert/Concern* category:
  - Sad
  - Stress
  - Angry
- *Normal* category:
  - Bored
  - Just OK
  - Happy

The main Entertainment info and options are displayed:

- ***How about a laugh?***
  - When chosen, a male speech/speak function can be enabled to read out the joke
  - A dad joke is displayed, and if it is a dad joke question, the answer is revealed after a few seconds 
  - Every joke will prompt a response:
    - 🙁  😐  😆
  - Subsequenty, three options are available:
    - More laugh
    - How about an encouragement?
    - Call it a day
- ***How about an encouragement?***
  - Generally the same as above, except a female speech/speak function can be enabled to read out the encouragement
  - Under the three available options, the second option will be How about a laugh?

When the user calls it a day, the last entry point is prompted to update how their feeling, after displaying *"So, user_name... How you doing (feeling) now?"*

- *Alert/Concern* category:
  - Worse
- Same-same
- *Normal* category:
  - Better

The last 7 entries of the log is displayed according to the date, day, time and their feelings before and after. The user can navigate to the next screen to move on.

If the user's current feeling is in the *alert/concern* category, a mental health facts and advice is displayed.

- The information is displayed to cater for the user's initial entry: sad / stress / angry
- A helpline number is also displayed

A thank you for using the app is displayed with short copyright and credit info. The app will automatically exit in a few seconds.

### Enhancements

#### Ruby Gems Files

- Easy navigation - up and down arrow navigations *(TTY prompt)*
- ASCII art generator for each page *(Artii)*
- Tables implementations for displaying log entries *(Terminal-table)*
- Colors *(Rainbow)*
- Animated feature to show automatic display or closing?

### Limitations

- At later version

### Credits

Dad jokes materials are based on

Encouragements materials are based on

Mental health facts and advice materials are based on

## Testing



## Project Development Documentation





---

**As part of Coder Academy FX21-01 T1A3 Assignment**

*Crafted with ❤  by a-sh   –  Angie SH (a.k.a Angeline S Hentri)*
