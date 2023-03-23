# Community Coordination Guide (CC) 

## Bootstrapping 

This guide and the CC platform are being created by the [Community
Systems Working Group](http://cswg.infrastructures.org/), a spinoff
from the [Nation of Makers](http://nationofmakers.us).  While we build
the platform, we have a chicken-and-egg problem; we need the platform
to help coordinate our efforts.  In order to bootstrap things until we
can become self-hosting, we are adopting some techniques from
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

## Self-hosting

The remainder of this document is forward-looking and describes how
things will work once we have a working platform.

## What is Community Coordination?

*Humans live, work, and govern in communities.*

Community Coordination (CC) is a process in the spirit of Lean and
Agile, supported by a software platform that reduces workload while
handling the administrivia of coordinating projects and events for a
group, community, or organization. Providing both synchronous and
asynchronous guidelines and tools, CC emphasizes accessibility,
collaboration, and adaptability, and is suitable for a wide range of
users, including those with technical and non-technical backgrounds.

It's become obvious during early discussion that we're likely working
on a decentralized platform that supercedes git, gdocs, scrum, and
several other commonly-used tools and methodologies. Existing
solutions either have a high learning curve, are narrowly targeted at
a specific use case, or are missing features that weren't feasible
when they were developed, such as AI-mediated conflict resolution
during merges.  

Git, for instance, was written to meet an emergency need of Linux
kernel developers nearly two decades ago, and github was later created
in order to work around some of git's shortcomings, such as lack of
integrated issues or in-band communication.  Git wasn't the first
decentralized version control system, and it won't be the last. It's
time to move on, but any replacement will need to be really, really
good in order to justify adoption.

See the [Bootstrapping](#Bootstrapping) section for how we're running
this project right now, and the remainder of this guide for how things
will work after we become self-hosting.

## About the Name

Note that "CC" is a working name for this new process and is likely to
change (in particular, the "CC" acronym is already in use by the
[Creative Commons](https://creativecommons.org/) organization). If you
have any suggestions for a more fitting title, please feel free to
share them with the group.  Some under consideration include:

- TC -- Timeline Coordination
- GDO -- Governance, Development, and Operations
- Timelines -- descriptive
- TymeLynes -- unique


## Timelines

*Time is the independent variable.*

Core to the CC process and tooling is the concept of timelines.
Timelines, both personal and organizational, are a powerful tool for
coordinating effort and enhancing collaboration between members of a
group, team, or community, leading to more effective decision-making
and problem-solving.

Timelines refer to a chronological ordering of events, edits, or
actions, and are used to organize important information, decisions,
and procedures. 

### Organizational Timelines

Timelines can be used to organize information for an organization,
such as meeting minutes, project plans, and event schedules. This can
be useful for groups, teams, and communities, and can be used to
coordinate activities, events, and projects. 

### Personal Timelines

Timelines can be used to organize personal information, such as
schedules, to-do lists, and notes. This can be useful for
individuals, families, and small groups, and can be used to
coordinate activities, events, and projects. 

## Commits

*Assertions of the past and promises of the future are commits.*

A unit of information that is added to a timeline is called a
*commit*. A commit can be a decision, a task, a note, a plan, a
milestone, or any other record of a point in past or future time. It
can be a set of related changes to several files, a single number, or
any other type of information that is considered to be a single,
inseperable, atomic change.  

## Parallel Timelines

*Our universe is composed of multiple parallel timelines.*

Parallel timelines allow for differing or unrelated histories and
plans to exist, and to be reconciled or merged. This can be useful in
situations where multiple versions or perspectives of events exist
with significant differences, or where different parties make
intersecting plans using different approaches or goals. By providing a
transparent process for reviewing and merging commits, parallel
timelines can promote collaboration and accountability, leading to
better outcomes for everyone involved.

Parallel personal timelines help individuals maintain their personal
calendars or journals in concert with others. This is particularly
useful when trying to reduce workload and stress while balancing
multiple commitments, such as work, family, and personal obligations.
Through the use of parallel timelines, individuals can coordinate with
each other via the merging and reconciliation process offered in this
guide.

## Branching

*Branches explore options.*

Branching is the process of creating a new parallel timeline from an
existing timeline.  Branching allows different scenarios or options to
be explored.  For example, branches can be used to explore different
approaches to a problem, or to plan for different possible outcomes of
a project.  This can be useful in situations where the outcome of a
project is uncertain, or where the project is complex and involves
many different factors.

Branches can also be used when there are two or more parties working
on solutions to a problem using different approaches, and need freedom
to explore.  The various branches can then be reconciled later during
merge.

Branching is also known as forking -- a term that is used in
software development to describe the process of creating a new
version of a software project from an existing version.

## Merging Overview

*Merging is consensus formation.*

Merging is the process of combining two or more parallel timelines
into a single timeline.  Merging is used in situations where two or
more parties join efforts for the first time, or where different
parties have been exploring different branches of a timeline and now
need to reconcile their work or perspectives.  

The majority of this guide and the related software platform are
focused on addressing what we call "the merge problem":  Ultimately,
the success of any effort depends on how well merging is managed, and
yet, tools to assist with this process have necessarily been limited
in their capabilities and in the problem domains they address; most
progress to date has been primarily in tools to assist with merges in
software development projects.

Merging is the central problem of governance, management, legislation,
and collaboration. In governance, merging refers to the process of
reconciling different perspectives and interests to create policies
and regulations that benefit the community as a whole. In management,
merging involves combining different approaches and ideas of team
members to reach a common goal. In legislation, merging involves
reconciling different provisions and viewpoints of lawmakers to create
laws that are just and equitable. In joint projects, collaboration
requires merging different ideas and perspectives of various
stakeholders to generate innovative solutions to complex problems. In
event coordination, merging is the process of bringing together
different ideas and perspectives of participants to create a memorable
and enjoyable experience for everyone involved.

Given the importance of merging to these various areas, it's clear
that a system that can better facilitate merging and reconciliation is
vital.

## Timelines Help Form Consensus 

*First, find common ground.*

Timelines make solutions to the merge problem more obvious or
transparent by providing a clear chronological ordering of events,
actions, or decisions. Timelines enable teams or communities to
maintain their own unique versions or perspectives of events, tracking
the contributions of each party while working together towards common
goals. 

When it's time to reconcile or merge different parallel timelines, the
proposal and review process can be used to ensure that all changes are
thoroughly considered before being added to the main timeline. This
provides an opportunity for different parties to discuss and compare
their versions, which can lead to more informed decision-making and a
better outcome. 

## Consensus Detection with Machine Learning

*Mediators work.*

While there are tools and methodologies available that can assist with
merging, there is currently no known fully automated method. This is
because merging is fundamentally a process of consensus formation and
reconciliation which requires human judgement and decision-making.

However, recent advances in machine learning are beginning to
demonstrate an ability to act as a mediator during the merge process.
For example, ML algorithms can analyze commits made to different
versions of a timeline and suggest a merged timeline that reflects a
likely consensus view.

While these tools are promising, it is important to note that they are
still in the early stages of development and require further testing
and refinement.  The CC platform provides an environment for advancing
this vital work.

It's worth noting that much of this guide was written with the aid of
machine learning tools -- for example, we developed and used
[grokker](https://github.com/stevegt/grokker) to summarize a much
larger set of observations, thoughts, and goals, in some cases dating
back decades.  Grokker made this work easy by maintaining a much
larger context of concepts while summarizing them into the single
document you see here.

## Proposals 

A proposal is essentially a draft commit that is subject to review and
discussion before being accepted and added to the timeline. It is an
opportunity to gather input from the group or community and to resolve
any objections or conflicts before making a final decision.

Here are the steps of the proposal process:

1. Proposal:  An individual submits a new commit as a draft.  The
   commit will name one or more authors.  The commit is proposed for a
   particular timeline.

2. Testing:  The commit is tested according to the policies already
   described in prior commits on the same timeline.  These tests may
   be automated, manual, or a combination of both.

3. Acceptance:  If the tests pass, the proposal is accepted and added
   as a permanent commit on the timeline.

## Testing

Testing a commit involves checking that it meets the requirements set
by the prior commits on the same timeline. Testing can be either
manual or automated, or a combination of both. The tests are designed
to ensure the quality and reliability of a commit.

Similar to the way a constitution or bylaws document defines the rules
and procedures for making changes to the document, tests on a timeline
serve as the rules for determining whether a commit should be
accepted.  

Any changes to the tests must be documented in a new commit on the
same timeline. The new commit must be able to pass the existing tests
on the timeline in order to be accepted. This ensures that any changes
to the tests are reviewed and validated before being implemented. 

## Test Driven Governance

Test-driven governance is a methodology that applies a concept from
software development, known as test-driven development (TDD), to
governance, management, and community building.

In TDD, software developers first define the goals of an application
and then create automated tests that verify that the application
fulfills these requirements. The developer then proceeds to write code
that will pass the tests.

Similarly, in test-driven governance, goals are defined in commits,
followed by commits containing tests that verify progress toward those
goals, and finally commits that implement the changes needed to make
progress. As new situations and issues arise and we learn from
experience, we create new goals and tests, allowing adaptation to
changing circumstances.

This approach to governance is similar to the scientific process, in
that it encourages an iterative approach to decision-making. The
scientific process involves making observations, developing
hypotheses, testing those hypotheses, and then using the results of
those tests to refine the hypotheses. When applied to governance,
management, and community building, a similar approach can help to
ensure that decisions are made based on a solid foundation of recorded
experience, rather than relying on intuition alone. 

The test-driven governance process is also similar to the continuous
improvement process in Lean and the iterative Scrum/Sprint cycle in
Agile.  By emphasizing a cyclical approach to decision-making, these
processes promote continual learning and adaptation to changing
circumstances, leading to a culture of adaptation, innovation, and
resilience.

## Contributing

This is a living document.  It is a work in progress and will be updated as we learn more.

If you have suggestions for how to improve this document, please open a pull request or issue on the [Community Coordination Guide GitHub repository](https://github.com/stevegt/cc-guide).

## License

This work is licensed under a Creative Commons Attribution 4.0
International License.  See [LICENSE](LICENSE) for details.
