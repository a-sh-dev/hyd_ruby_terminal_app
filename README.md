# *"How You Doin?"* Terminal Application

GitHub repo:

`https://github.com/a-sh-dev/hyd_terminal_app`

--- place final product screenshot here



## Installation & Setup





## About

### Purpose

**Defining the problem. **Not every day is filled with rainbows and birds chirping in your surroundings. People do have bad days, feel down, sad, discouraged or simply bored. When they are not feeling positive, *it is OK to be not OK*, it is part of being human that we have emotions. 

***How You Doin?*** (HYD) is a terminal app that aims to provide entertainment to the user, in the form of jokes (dad jokes to be specific 🙂) and also positive encouragements as a relief or comfort when they are feeling unwell emotionally.   

HYD is inspired by Joey's famous pickup line from the sitcom *Friends*. Although he says it flirtatiously and cheekily, it never fails to make the other party laugh or smile every time he says it. It will be ambitious to guarantee users to laugh after using the app (especially with dad jokes!), they may groan, but at least they *respond* to it! And hopefully, HYD can provide some sort of relief, comfort, or at least a smile and make the user feel better, and then motivates the user to *respond* to any negative feelings they are currently facing, positively. 

![Joey - How you doin?](./docs/hyd_joey.gif)

The app also features to record a log of how the user is doing (feeling) when and after using it, so they can track their own mental wellbeing. When needed, HYD also responds to the user by providing mental health facts and advice as their call to action. 

### Target Audience

Ideally anyone in their 20s to above, who can read English, who is bored or having a bad day, who needs relief and entertainment, who definitely appreciate dad jokes!

### Features

#### Feature 1: Record a log of *<u>how user is doing (feeling)</u>* before and after using the app

- Log is created and saved under a user's unique name/nickname to prevent potential duplicates and also to provide privacy
- Log entry details include date, day and time of use
- The last 7 entries of the log is displayed after the '*entertainment*' part and just before quitting the app
  - The log entries are for display only and are immutable once stored
- Log keeps track on the user's feeling category before and after using the app and the app will respond to the user accordingly before it quits
  - Two categories at the start of the app (before):
    - *Alert/Concern*: sad / stress / angry
    - *Normal*: bored / just ok / happy
  - Feeling categories at the end of the app (after):
    - *Alert/Concern*: worse
    - Same-same (is considered as alert/concern category based on the first entry) 
    - *Normal*: better
- When the user's feeling is in the *Alert/Concern* category, after the log is displayed, a mental health facts and advice will be displayed subsequently before exiting the app, including a helpline number
  - The mental health facts and advice will be catered according to the specific user's feeling: sad / stress / angry

#### Feature 2: Entertainment

##### Feature 2.1 – *"How about a laugh?"* 

- Randomise dad jokes
  - The user can generate jokes multiple times
  - Content can be spoken out (speech/speak features)
  - User has the option to switch to the other entertainment
  - Ideal back-end features:

    - Possibility to deactivate the jokes that appear too much and then be re-activated at specific period of time, to reduce repetition
    - Possibility for external contents update (API implementation)

##### Features 2.2 –*"How about an encouragement?"*

- Same features as above

### User Experience – How to Use

##### Control Flowchart

![HYD control flowchart](./docs/hyd_app_flow.png)

##### Pseudocode

At the start of the app, a welcome and general app info (what it is and how to use it) is displayed.

The user is asked to enter a unique name or nickname to be used to login next time and to access their log (at this point, password is not available yet).

- If name exists, the user is asked to choose 

User then is greeted with their name and asked, "*How you doin (feeling), today?"*

Other than to provide relief and entertainment to the user, the app also functions to track the user's feeling. There are two entry points for keeping track of 'today's entry', below is the first entry, and when they decide to 'call it a day' (end the app), the last one is prompted to update their feeling.

There are two categories of feelings that the user can choose (the two category names are not visible to the user, only for back-end purpose):

- *Alert/Concern* category:
  - Sad
  - Stress
  - Angry
- *Normal* category:
  - Bored
  - Just OK
  - Happy

The two main Entertainment info and options are displayed:

- ***How about a laugh?***
  - When chosen, a male speech/speak function can be enabled to read out the joke
  - A (randomised) dad joke is displayed, and if it is a dad joke question, the answer is revealed after a few seconds delay
  - Every joke will prompt a response:
    - 🙁  😐  😆
  - Subsequenty, three options are available:
    - More laugh
    - How about an encouragement?
    - Call it a day
- ***How about an encouragement?***
  - Generally the same as above, except a female speech/speak function can be enabled to read out the encouragement and also the exception of response prompting to every encouragement (with the smileys)
  - Subsequenty, three options are available:
    - More laugh
    - How about a laugh?
    - Call it a day

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

##### HYD Data Structure Flowchart

![HYD data structure flowchart](./docs/hyd_app_data_flow.png)

### User Interface, Interaction & Enhancements

The tone of the app is positive, chill and friendly. The chosen words throughout the app will be sensitive and considerate. For example, not using the word 'quit' to end the program, preventing any harmful negative thoughts for the worse-case scenario.

#### Ruby Gems Files Implementations 

1. Easy navigation - up and down arrow navigations *(TTY prompt)*
2. ASCII art generator for each page *(TTY font)*
3. Tables implementations for displaying log entries *(TTY Table)*
4. TTY Box
5. Speak/Speech
6. Colors *(Rainbow)*
7. JSON

### Limitations & Future Development Plan

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
