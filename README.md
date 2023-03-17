# Community Coordination Guide (CC) 

## What is Community Coordination?

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

Note that "CC" is a working name for this new process and is likely to
change (in particular, the "CC" acronym is already in use by the
[Creative Commons](https://creativecommons.org/) organization). If you
have any suggestions for a more fitting title, please feel free to
share them with the group.  Some under consideration include:

- TC -- Timeline Coordination
- GDO -- Governance, Development, and Operations
- Timelines -- descriptive
- TymeLynes -- unique

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

## Key Features

1. Parallel Timelines: CC enables users to create and manage multiple
   parallel timelines, allowing for easy organization, comparison, and
   conflict resolution between different versions of documents, code,
   or plans.
2. Commits (Point?  Event?): These are the individual units of
   information that make up a timeline. A change in a doc, or related
   changes in several docs or code files, is a commit. Commits can
   describe past or future events or ongoing processes. They may be
   written in either natural or machine-readable language, depending
   on the needs of the community.
3. Branches: Branches are used to represent different versions of a
   timeline. For example, a timeline might have a "main" branch that
   represents the current state of the timeline, and a "draft" branch
   that includes all of the commits from the main branch with one or
   more new commits appended to the end.
4. Keys (Label?): A key is a unique identifier that is used to refer
   to a specific commit. Each commit must include the key of the
   previous commit in the timeline.  The key of the last commit in a
   timeline is used as both the version number of the timeline and an
   identifier of the timeline itself. Keys are computer-generated
   based on the content of the commit, are unique, and can be used to
   verify that the commit has not been altered.
5. Links: A link is a key referencing a specific commit in another
   timeline. Links can be used to represent dependencies between
   timelines, such as a timeline that depends on another timeline for
   resources or procedures. A community using CC will always link to a
   commit in this document's timeline to indicate which version of the
   CC process they are following.

## WIP

XXX word salad below here


## Timeline Lifecycle

In summary, a timeline in the context of CC or GDO refers to a
chronological ordering of events, policies, or actions related to
climate change or global development. It is a tool used to visualize
connections and impacts of past and future actions by governments,
corporations, international organizations, and individuals working
towards sustainable development goals. 

A timeline consists of commits or events that are frozen and
referenced using a unique identifier, and can have multiple branches
to represent different versions or scenarios. Changes to a timeline
are made through a proposal and review process, with options for
objection and conflict resolution. CC is designed to be flexible and
accommodate various uses, from personal to-do lists to project
management tools.

Anyone can create a new timeline. The first commit in a timeline
should describe 



include a link to an existing commit in another timeline that
describes the process for managing the timeline. 



timeline depends on. The first commit in a timeline should also

timeline, the intended audience, and any other information that would
be useful to someone who is unfamiliar with the timeline. The first
commit should also include a link to the previous commit in the

The timeline creator can delegate
others 
invite others to contribute to the timeline.  The timeline creator
can also create branches of the timeline, and invite others to

, and only the creator of a timeline
can append commits to it.  



k.  Ordinarily, a timeline is created
by branching from another timeline.

the main timeline of the community or project.  The
created to represent a community or project.  However, timelines can
also be created to represent other types of information, such as
procedures or policies.  The timeline lifecycle is as follows:

, but only the timeline's creator can
accept commits to it. The creator of a timeline is responsible for
maintaining the timeline and ensuring that it is kept up to date. The
timeline creator can also delegate the responsibility of maintaining
the timeline to another community member. The timeline creator can
also choose to make the timeline read-only, which means that no new




A commit is created by a community member and submitted to the
community for review. The community then reviews the commit and
decides whether to accept it. If the commit is accepted, it is
appended to the timeline. If the commit is rejected, it is discarded
and the community member who created it is notified of the reason for
the rejection. If the community member wishes to revise the commit,
they can do so and resubmit it for review.





A commit is added to a timeline in a series of stages. Each stage
might take place asynchronously or in a virtual or in-person meeting.
The stages are *plan, write, test, propose, and accept,* and they are
described in more detail below.

1. Plan: Implementers and stakeholders discuss the need for a commit
   and how it might be implemented. The plan might include
   user stories, use cases, or other documentation that describes the
   need. The plan might include a draft of the commit itself.
2. Write: This stage might include assembling and leading a working
   group to write the commit, or it might be written by a single
   person. A working group might include implementers, stakeholders,
   and other community members.  In either case, the author(s) of the
   commit write the commit and append it to a branch of the timeline. 
4. Test: The commit is reviewed and tested by a larger group of
   stakeholders. The procedure for testing must be described in 
   earlier commits on the same timeline.
3. Propose: The commit is proposed for inclusion in the main timeline
   branch.  This is done by notifying the community of the commit,
   providing a link to the commit, and asking for feedback.  The
   community has a period of time to review the commit and provide
   feedback.  The community may also propose changes to the commit








6. Acceptance:  Acceptance is the process of approving a commit. A commit
   must be accepted by another timeline; a timeline cannot accept its
   own commits. 
   must be "opened" to accept commits, and then a commit must be
   "submitted" to the timeline for acceptance. A timeline can be
   opened or closed at any time, and a commit can be submitted to a


   the timeline that accepts the
   commit is called the "acceptor".  The acceptor may be the same



   Acceptance is a collaborative process that involves
   multiple community members. Acceptance is required for all commits
   to the main branch of a timeline. Acceptance is not required for
   commits to other branches, but it is recommended.

the process of reviewing and approving
   commits.  

   When a  accepts a new commit in layer
   1, they signify this by adding a layer 2 commit that
   includes the key of the layer 1 commit.  If the layer 1 community


   Synonyms for "reference" include "link", "cite", "point to", and
   "point at".  The term "reference" is used here because it is
   unambiguous and has a clear meaning in both natural and
   machine-readable languages.  The term "link" is avoided because it
   is ambiguous and has different meanings in different contexts.



   "point to", "point to", "point to", "point to", "point to", "point
   to", "point to", "point to", "point to", "point to", "point to",

   "link to", "point at", "connect at", "link at", "point from",
   "connect from", "link from", "point from", "connect from", "link
   from", "point from", "connect from", "link from", "point from",
   "connect from", "link from", "point from", "connect from", "link
   from", "point from", "connect from", "link from", "point from",



   commit in this document as 
   then create additional timelines in layer two, and so on.  This
   commit for this document as the parent key.  The community's


   multiple layers, each representing a different aspect of the
   community or project. For example, a community may have a layer
   for the community's governance, a layer for the community's
   technical processes, and a layer for the community's technical
   documentation. Each layer may have its own timeline, or may share

   changes that add up to the current
   up this document is always layer zero.  A
   timeline of documents that a group creates while using this
   document to organize their efforts is layer 1, a subgroup or
   project might be layer 2, and so on.  Layers are a more abstract
   concept in CC, so we'll devote a whole section to them later.
   





     
      


3. Meetings: Meetings are an optional part of the CC system -- CC
   facilitates meetings, but also supports asynchronous interaction.
   CC categorizes meetings into three types -- planning, writing, and
   testing.  More on this later.


# Layers


   document is CC Layer 0.  Higher layers build upon lower layers Layers can be written by different
   communities, with each community building upon the foundation of
   the lower layers. This allows for different communities, groups, or
   projects to use their own specific processes and workflows, while
   still relying on the shared information and structure provided by
   the lower layers. The lower layers serve as a foundation for the
   higher layers, providing a consistent and reliable foundation for
   decision making and execution.

Layer | Community, Group, or Project
----- | ------------------------------------
2     | local renewable energy project 
1     | Smart City community document series
0     | CC guide (this document)


## Implementation

The CC system can be implemented using a variety of tools and
technologies, depending on the needs of the community. This might
include document management systems, version control systems, chat
platforms, and more. The key is to choose tools that are accessible,
flexible, and scalable, so that the community can continue to grow and
evolve over time.

## Meetings

CC uses three main types of meetings to manage project development:
Design Meetings, Write Meetings, and Test Meetings. The focus of each
meeting is to ensure that the project is moving forward in a
coordinated and organized manner.

Design Meetings are used to define the scope, goals, and requirements
of a project. Participants in a Design Meeting are expected to review
relevant docs prior to the meeting and come prepared to discuss the
project.

Write Meetings are used to write and update the project's docs.
Participants in a Write Meeting are expected to review relevant docs
prior to the meeting and come prepared to work on the project's docs.

Test Meetings are used to test and validate the project's docs and
code. Participants in a Test Meeting are expected to review relevant
docs and code prior to the meeting and come prepared to test and
validate the project.

## Implementation
To implement CC in your community, follow these steps:
1. Define the community's goals and objectives.
2. Establish the community's timeline.
3. Schedule and hold Design Meetings to define the scope, goals, and requirements of projects.
4. Schedule and hold Write Meetings to write and update project docs.
5. Schedule and hold Test Meetings to test and validate project docs and code.

By following these steps, your community will be able to coordinate and manage its projects effectively and efficiently.


CC Quick Start

Choose a community or project to work with. This will be the top-level timeline for your work.


Share your work with your community or project by sending a proposal. A proposal is a request for the community or project to accept your work as part of their timeline.

If your proposal is accepted, your work becomes a commit in the community or project timeline.

Repeat steps 2-4 as needed to make additional changes to your work and have them accepted into the timeline.

Use the community or project timeline as a reference for your work, and refer to it in your own documents and scripts.

Participate in meetings and discussions with your community or project to coordinate your work and resolve any issues that arise.

With these simple steps, you can begin using CC to manage your work and collaborate with your community or project.


# CC Quick Start

To get started with CC, follow these steps:

1. Start a timeline. This will serve as the foundation for all
   future records, scripts, and meetings.
2. Create a new document or set of documents and/or code that describe
   your work. These documents will be the first commit in your
   timeline, and should decribe how future commits will be accepted or
   rejected.

3. Write down the current state of your community or project in the
   form of a script. This script should describe the community or project's
   goals, processes, and current issues.
4. Use the script to guide discussions and decision-making in
   meetings. Meetings should be focused on making progress towards
   the goals described in the script.
5. After each meeting, update the script to reflect any decisions
   or changes made during the meeting.
6. Repeat steps 3 and 4 as needed to continue making progress.




# Call for Objections

The Call for Objections (CFO) process is a method used in CC to gather
feedback and objections before making a change to a timeline.  While 
the CFO process is optional, it is recommended that a timeline owner
use this process for changes:

XXX reconcile owner with proposer

1. A proposal is made: A change to the timeline is proposed, usually
   by a member of the community. This can be in the form of a document
   or a discussion in a meeting.
2. Call for Objections: The proposer issues a CFO, inviting the
   community to review the proposal and voice any objections they may
   have. The CFO should specify the deadline for objections and the
   means by which objections can be raised (e.g. email, discussion
   forum, etc.).
3. Review and Discussion: The community reviews the proposal and
   discusses any objections they may have. This can be done through
   email, discussion forums, or in a meeting.
4. Resolve Objections: The proposer works with the community to
   resolve any objections raised during the review and discussion
   phase. This may involve revising the proposal, seeking additional
   input, or finding alternative solutions.
5. Finalize Change: If objections are resolved, the proposal is
   accepted and the change is made to the timeline. If objections
   cannot be resolved, the proposal may be withdrawn or revised.

The CFO process helps to ensure that changes to the timeline are made
with the full consideration of the community and that any potential
impacts are understood and addressed.


## Tests

The tests on a timeline serve as the rules for determining which
branch is considered the trunk. In the event of a conflict, the tests
must specify how to resolve the issue and determine which branch
should be considered the trunk. The tests could include factors such
as code review, human approval, or any other criteria that the
timeline owner considers important for making this decision.

The owner does not manually tag the trunk. The prior tests on the
timeline are used to determine which branch is the trunk, and these
tests must include instructions on how to resolve conflicts in case
there are multiple branches that pass the tests. The process is
automated and follows the rules specified in the tests.

## Testing in CC

Testing is an integral part of the CC process, as it helps to ensure
the quality and correctness of new nodes being added to the timeline.
Every node is automatically considered committed and the "trunk" tag
moved to it only if it passes the tests that are already on the
branch. 

It is important to note that anyone should be able to perform the
tests, and the tests themselves may include a requirement for a
verifiable signature from a given human, group, or other private key,
allowing for human review and approval to be part of the acceptance
process. 

The tests on the timeline are designed to determine which branch is
considered the "trunk". In the event of a conflict, the tests
themselves must describe what to do. The owner of the timeline does
not directly tag the "trunk", as the tests are responsible for
determining it.

It is important to carefully consider the tests that are included on
each timeline, as they play a crucial role in ensuring the quality and
reliability of the information that is being recorded.

## Node Lifecycle

In CC, nodes are the building blocks of a timeline. Once a node is
added to a timeline, it is frozen and cannot be modified. Instead, if
a change is needed, a new node can be added to the timeline that
supersedes or updates the previous node. 

The key, or unique identifier, of a node is used to reference it
within the timeline. This allows for a clear, historical record of all
changes and decisions made within the timeline. 

It is important to carefully consider the content and impact of a node
before adding it to the timeline, as it will become a permanent part
of the timeline's history.

## Node Lifecycle

The CC node lifecycle is a flexible and open process that allows for
the creation and integration of new nodes into a timeline. The
following steps outline the process:

1. Authoring: An author writes and tests a new node.

2. Commit: If the node passes the existing tests on a branch, it is
   considered to be committed. The node is added to the timeline and
   its key is stored in the branch's history.

3. Call for Objections (CFO): The author posts a message to the
   appropriate communication channel, calling for objections to the
   proposed node. The message should include the date by which
   objections must be raised.

4. Testing and Trunk Recognition: If there are no objections, the node
   is considered to be the tip of the new trunk. The branch's existing
   tests are used to determine which node should be the tip of the
   trunk. The tests themselves must describe how to handle conflicts
   in the event that multiple branches pass the tests.

Note: Nodes can reference earlier nodes on any timeline branch,
creating a tree-like structure of branches linked together
chronologically by the keys of existing nodes.

## Data Structures

### Timeline

A timeline is a branch.

that are linked together
chronologically by the keys of existing nodes. The timeline is the

### Node

### TODO

XXX distributed multi-user machine, cpu, storage, executable,
development

XXX how do we incentivize users to store data?

Timelines: Timelines are the core structure of the CC system. Each
   timeline represents a series of events, records, or scripts that
   describe the history and future of a community or project.
   Timelines are used to capture and organize important information,
   decisions, and procedures.  

## Quick Start

If starting use of CC in a new group, community, or organization, go
to the [Startup Checklist](#startup-checklist). 

If CC startup is done and you are hosting a synchronous event, go to the
[Synchronous Checklist](#synchronous-checklist).

If CC startup is done and you are supporting an asynchronous
community, go to the [Asynchronous Checklist](#asynchronous-checklist).

## Startup Checklist

This is an interim procedure that will be superceded by a more
automated process.  Until then:

- [ ] Fork [this repository](https://github.com/stevegt/cc-guide) on
  github.
- [ ] Edit the [config.yaml](config.yaml) file to reflect your
  community's information, including preferred URLs and tools.
- [ ] Run `make` in your repository's top-level directory to generate
  the [index.html](index.html) file.
- [ ] Commit and push your changes.
- [ ] In your repository's settings, enable github pages to serve the
  `main` branch root directory.
- [ ] Provide your repo URL to participants using {{.ANNOUNCE_LINK}}

## Synchronous Checklist

This is an interim procedure that will be superceded by a more
automated process.  Until then:

### Before event

- [ ] Propose the event at {{.PROPOSAL_LINK}}
- [ ] Collect participant availability at {{.WHEN_LINK}}
- [ ] Confirm the date and time at {{.WHEN_LINK}}
- [ ] Announce the event at {{.ANNOUNCE_LINK}}
- [ ] Send a reminder at {{.ANNOUNCE_LINK}}
- [ ] ggXXX

### During event

- [ ] XXX

### After event

- [ ] XXX

## Asynchronous Checklist

This is an interim procedure that will be superceded by a more
automated process.  Until then:

### Before event

- [ ] Propose the event at {{.PROPOSAL_LINK}}
- [ ] Collect participant availability at {{.WHEN_LINK}}
- [ ] Confirm the date and time at {{.WHEN_LINK}}
- [ ] Announce the event at {{.ANNOUNCE_LINK}}
- [ ] Send a reminder at {{.ANNOUNCE_LINK}}
- [ ] XXX

### During event

- [ ] 

### After event

- [ ] XXX


## Contributing

This is a living document.  It is a work in progress and will be updated as we learn more.

If you have suggestions for how to improve this document, please open a pull request or issue on the [Community Coordination Guide GitHub repository](https://github.com/stevegt/cc-guide).

## License

This work is licensed under a Creative Commons Attribution 4.0
International License.  See [LICENSE](LICENSE) for details.


# Types of Community Coordination

There are two main types of community coordination -- most communities
combine elements of both in a hybrid approach:

1. **Synchronous Community Coordination**:  This is the process of
   participating synchronously during virtual or in-person meetings
   and events.  This is covered in the [Synchronous Community
   Coordination](#synchronous-community-coordination) section.
2. **Asynchronous Community Coordination**:  This is the process of
   participating asynchronously through electronic communication and
   collaboration tools.  This is covered in the [Asynchronous
   Community Coordination](#asynchronous-community-coordination)
   section.

2. Flexible Coordination: CC is designed to accommodate various use
cases, from personal to-do lists and organizational calendars to code
repositories and project management tools.

3. Collaboration: The system fosters teamwork by providing tools for
communication, document sharing, and real-time editing.

4. Decentralization: CC leverages decentralized technologies to store
data, ensuring greater security, privacy, and resilience.

5. Accessibility: CC is built to be user-friendly and can be accessed
   through modern web browsers, making it available to a diverse range
   of users and devices.

## Benefits of Using CC

Implementing CC within a community or organization can yield numerous benefits:

- Improved organization and planning through the use of parallel
  timelines and flexible coordination tools.
- Enhanced collaboration between team members, leading to more
  efficient decision-making and problem-solving.
- Greater transparency, as changes and updates are recorded and
  visible to the entire community.
- Reduced reliance on centralized systems, resulting in improved
  security and resilience.


## Who Can Use CC?

CC is designed for a wide range of users, including:

- Individuals seeking a better way to manage their personal tasks and
  activities.
- Teams or organizations looking to improve collaboration, project
  management, and decision-making.
- Developers and software teams in need of a decentralized,
  collaborative code management system.
- Event planners and coordinators who require a flexible, accessible
  platform for organizing and executing events.

In summary, Community Coordination (CC) is a versatile and accessible
system for managing and organizing individual and collective
activities. By leveraging key concepts like parallel timelines,
collaboration, and decentralization, CC aims to




















