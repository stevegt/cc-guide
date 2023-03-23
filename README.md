# Community Coordination Guide (CC) 

This document is forward-looking and describes how things will work as
we build a working platform.  In the meantime, see the
[Bootstrapping](BOOTSTRAPPING.md) document for how we're running this
project in its early stages, and the remainder of this guide for how
things will work after we become self-hosting.

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

*Machine learning tools can mediate consensus.*

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

*A proposal is a spark to light the fire of consensus.*

A proposal is a draft commit that is subject to review and discussion
before being accepted and added to the timeline. It is an opportunity
to gather input from the group or community and to resolve any
objections or conflicts before making a final decision.

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

*Testing verifies your reality.* 

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

*Set goals, test progress, and iterate.*

Test-driven governance is a methodology that applies a concept from
software development, known as test-driven development (TDD), to
governance, management, and community building.

In TDD, software developers first define the goals of an application
and then create automated tests that verify that the application
fulfills these requirements. The developer then proceeds to write code
that will pass the tests.

Similarly, in test-driven governance (TDG), goals are defined in
commits, followed by commits containing tests that verify progress
toward those goals, and finally commits that implement the changes
needed to make progress. As new situations and issues arise and we
learn from experience, we create new goals and tests, allowing
adaptation to changing circumstances.

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

## Decentralized Systems Overview

*Anyone can host.*

In the early days of the internet, there was a strong emphasis on
decentralization, as evidenced by systems like Usenet. Usenet was a
distributed discussion system that relied on a network of
interconnected servers to share articles and messages. This allowed
for decentralized decision-making and data sharing, as well as
reducing the risk of a single point of failure or vulnerability.

However, in recent years, there has been a shift towards
centralization of the internet, as larger companies and platforms have
gained significant power and influence. These centralized platforms
often create a single point of control and can be subject to
censorship or interference from state actors. This can have negative
consequences for freedom of speech, privacy, and democracy.

The downsides of a centralized internet include the risk of data
breaches and the concentration of power in the hands of a few
companies. This can result in an uneven playing field for smaller
businesses and lead to a lack of innovation and diversity in the
technology sector. Additionally, centralized systems are often
inflexible and difficult to modify or scale, making it harder for
communities to adapt to changing circumstances.

In contrast, decentralized systems offer advantages such as greater
resilience, privacy, and autonomy. Decentralization promotes
collaboration, innovation, and diversity by allowing more participants
to contribute to the system without fear of reprisal. Decentralized
decision-making and data storage can also help prevent censorship or
interference from third parties. Overall, decentralization can lead to
a more equitable and democratic internet.

###  Benefits of Decentralized Systems

Decentralized systems offer a number of benefits in comparison to
centralized ones. Decentralization promotes collaboration, innovation,
and diversity by allowing more participants to contribute.
Decentralized systems provide greater privacy and autonomy, as data is
not held by a single centralized authority that may have a conflict of
interest. This makes it easier to trust the system, and to feel
confident in its accuracy and integrity. By eliminating the need for a
centralized intermediary, decentralization reduces the risk of fraud,
abuse, and corruption.

In contrast to centralized systems, decentralized systems are built
on the principles of distributed decision-making and consensus
formation. This means that individuals are empowered to make
decisions and take action without relying on a central authority to
manage the process. Instead, they collaborate in a trustless and
transparent environment that is designed to be resilient and scalable.
Decentralized systems are also adaptable and customizable to a wide
range of situations and needs, making them more flexible and accessible
than centrally-owned targeted tools. By promoting equitable and
democratic decision-making, decentralized systems help to foster a
sense of community and shared purpose that can be difficult to achieve
in centralized systems.

The rise of decentralized systems has led to innovations in numerous fields,
including governance, finance, and social media. These systems are
revolutionizing the way we interact with each other online and are
helping to create a more equitable and democratic society. Decentralized
systems offer a unique opportunity for individuals to exercise greater
freedom and autonomy, while also promoting collaboration, transparency,
and accountability. As we continue to develop these systems, we can
expect them to play an increasingly central role in shaping the future
of our world.

## Testing in Decentralized Systems

*Anyone can test.*

Testing is an essential component of any decentralized system, as it
helps to ensure that the system is functioning correctly and free from
errors or vulnerabilities. In a decentralized system, tests serve as
the rules for determining whether a commit should be accepted, and
they are crucial in establishing trust and facilitating collaboration
between different nodes in the network. The testing process allows for
transparency and accuracy by ensuring that changes and updates are
reviewed and validated before being implemented, and that all nodes in
the network agree on the state of a timeline. Ultimately, testing is a
critical aspect of decentralized systems, as it helps to promote
resilience, trust, and accountability.

## Why was decentralization not feasible before now?

The system we describe here is only now becoming feasible due to
advances in technology, including the capabilities of modern browsers
and the rapid acceleration machine learning capabilities to aid in
planning and development for complex systems.  The growing popularity
of decentralized systems enabled by these changes has paved the way
for the adoption of CC and its underlying principles.

The advent of WebAssembly (WASM) in particular has facilitated the
creation of a decentralized system by enabling users to run more
complex code in a sandboxed environment without the need for
centralized servers.

## User Stories

XXX WIP

## Contributing

This is a living document.  It is a work in progress and will be updated as we learn more.

If you have suggestions for how to improve this document, please open a pull request or issue on the [Community Coordination Guide GitHub repository](https://github.com/stevegt/cc-guide).

## License

This work is licensed under a Creative Commons Attribution 4.0
International License.  See [LICENSE](LICENSE) for details.
