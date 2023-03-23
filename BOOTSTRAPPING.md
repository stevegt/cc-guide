# Bootstrapping Community Coordination (CC)

The CC platform is being created by the [Community Systems Working
Group](http://cswg.infrastructures.org/), a spinoff from the [Nation
of Makers](http://nationofmakers.us).  While we build the platform, we
have a chicken-and-egg problem; we need the platform to help
coordinate our efforts.  In order to bootstrap things until we can
become self-hosting, we are adopting some techniques from
[Agile](https://en.wikipedia.org/wiki/Agile_software_development) and
[mob programming](https://www.remotemobprogramming.org/) for
synchronous coordination, and github for async work.

For now, we're using [mob.sh](https://mob.sh/) to coordinate mobbing
and ease the use of git and github.  For consensus formation, we're
using [sibyl](https://github.com/t7a/sibyl), a [planning
poker](https://en.wikipedia.org/wiki/Planning_poker) tool.

### Bootstrapping: Installing mob.sh

To install mob.sh, follow the instructions provided in the [GitHub
repository](https://github.com/remotemobprogramming/mob).  There are
several installation methods avilable for various operating systems
and environments, and a plugin for vscode.

### Bootstrapping: Getting Started

XXX evaluate github desktop as an alternative for this section.
[https://desktop.github.com/](https://desktop.github.com/)

1. You will need a github account in order to participate in this
   project.  If you don't already have one, you can create one at
   [github.com](github.com).
2. You will need to add an ssh key to your github account in order to
   be able to clone and push changes to any repository on github.  If
   you haven't already done this, follow the instructions provided in
   the [GitHub
   documentation](https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account).
3. You will need to be added as a collaborator in the [repository for
   this guide](https://github.com/stevegt/cc-guide), and/or any other
   repo the group might be working on during a mobbing session.  XXX
   may want a monorepo instead of multiple repositories.
4. Clone the repository to your local machine.  You can do this by
   running the following command:

```
mkdir ~/src  # of course, you can use any directory you like, like ~/lab
cd ~/src
git clone git@github.com:stevegt/cc-guide.git
cd cc-guide
```

### Bootstrapping: Participating Synchronously

A synchronous mobbing session is held weekly.  To join, get on the
CSWG mailing list. XXX need join link -- or do we move to github
issues, discord, other?

Each mobbing session works on one or more github issues.  The group
selects the next issue to work on using planning poker -- see the
[Bootstrapping: Planning Poker](#Bootstrapping-Planning-Poker)
section.

To use mob.sh in a synchronous meeting:

1. Collaborate on the issue at hand; discuss ideas and share knowledge
   with the group. One group member will act as the driver (typist),
   while others provide advice, research, and guidance.
2. While not driving, help us find answers -- search the web, brainstorm
   with a machine learning tool such as https://chat.openai.com/chat,
   and tell us what you find.
3. When it's your turn to drive, run `mob start 10`. This creates a
   new "mob-session" branch in git on your local machine, and sets a
   timer for 10 minutes.
4. When the timer is up, save your progress and share with everyone
   else by running `mob next`. This command commits your changes to
   the mob-session branch and pushes them to the repository on
   github.
5. Repeat steps 1-4 for 50 minutes.
6. When the session is over, the facilitator will run `mob done`. This
   command merges the mob-session branch into the main branch, and
   deletes the mob-session branch.

To ensure successful mob programming sessions, follow these best practices:

- Encourage equal participation among team members by setting a timer
  and rotating control regularly.
- Maintain clear communication during mob sessions by discussing
  ideas, asking questions, and providing feedback.
- Avoid 'going rogue' in a session by being attentive to other's advice.
- Balance mob programming sessions with individual async work to allow
  team members time to process information and focus on specific
  tasks.  See [Bootstrapping: Participating
  Asynchronously](#Bootstrapping-Participating-Asynchronously) for
  more information.

### Bootstrapping: Planning Poker

There will be times during the mob session when there is not an
obvious consensus on a particular issue.  In these cases, we will use
sibyl to help us reach a decision.  Sibyl is a planning poker tool
that allows us to vote on issues using a simple interface.  It is
designed to be used in a synchronous meeting, and is not suitable for
asynchronous use.

To use sibyl:

1. The facilitator will use the
   [sybil-cli](https://github.com/stevegt/sibyl-cli) tool to raise a
   new question.  
2. The facilitator will share the URL with the group.
3. The group will vote on issues by clicking on the cards in the
   interface.
4. The results will be displayed when all members have voted.

### Bootstrapping: Participating Asynchronously

Allowing for independent asynchronous work outside of mobbing sessions
is important to encourage creativity and progress. While we're
bootstrapping, we will use github for async work.  This includes:

- Creating issues for discussion and tracking work
- Creating pull requests for code review and merging

