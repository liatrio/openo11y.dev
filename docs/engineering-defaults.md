# Engineering Defaults

Much of OpenO11y's guidance is based on or enhanced by these best practices for
engineering teams.

## Pair Programming

Pair programming is a software development technique in which two developers work
together at one workstation. One, the driver, writes code while the other, the
observer or navigator, reviews each line of code as it is typed in. The two
developers switch roles frequently.

This method provides extremely fast feedback to developers about their code
changes and design decisions before. In turn, this prevents wasted effort and produces
cleaner, simpler code at a faster rate.

Tooling can greatly improve the developers' experience while pair programming.
Audio calls and screen sharing enable pair programming for engineers in
different physical locations. Similarly, IDE tools such as Visual Studio Code's
[Live Share][liveshare] extension allow both parties to develop code changes
simultaneously in a single workspace.

## Small Batch Delivery

OpenO11y encourages teams to deliver in small batches. Delivering small portions
of work enables teams to deploy, demo, and request feedback more frequently.
Much like pair programming, this practice aids teams in coordinating their
efforts and safeguards against individuals investing time and energy in
developing an incorrect solution.

## Trunk Based Development

> A source-control branching model, where developers collaborate on code in a
> single branch called 'trunk'[^trunksummary]

OpenO11y highly recommends using [Trunk Based Development][trunk] over other
branching models. Its focus on simplicity offers many advantages:

* The 'main' branch represents the application and is always production-ready
* Smaller, short-lived branches are dramatically safer to merge
* Developers enjoy a reduced cognitive load
* CI/CD requires less maintenance and/or is much simpler

[Gitflow][gitflow]

## CI/CD

### Continuous Integration

> Continuous Integration (CI) is a development practice where developers
> integrate code into a shared repository frequently, preferably several times a
> day. Each integration can then be verified by an automated build and automated
> tests.[^ci]

CI is a critical part of the development lifecycle and is a natural compliment
to [Small Batch Delivery](#small-batch-delivery). This provides developers with
very frequent feedback on their code changes. When problematic merges occur,
teams are quickly notified. More importantly, a bad merge can be identified
immediately, allowing the relevant team members to quickly fix the issue.

### Continuous Delivery

Continuous Delivery can be traced back to the first principal of the Agile
Manifesto[^agilemanifesto] and naturally follows Continuous Integration. It is
the practice of sequentially deploying every viable version of an application,
ideally to production. This ensures that the software can always be released at
any time.

### Speed

As teams continually rely on CI/CD, the pipelines often become a bottleneck for
continuing development. This is amplified by the combination of frequent code
merges and CI/CD.

A fast CI/CD pipeline provides developers with fast feedback. A slower pipeline
adds a wasteful delay to the developer's workflow before receiving feedback. A
very slow pipeline motivates context switching as developers perform
other tasks while waiting for feedback. This is very expensive in terms of time
and cognitive load.

## Build for Production

Teams that build for production ensure that all the work they are building is
observable and supportable in production. These expectations are part of the
acceptance criteria for all stories. Logs are generated, traces are stitched,
and metrics are gathered from the beginning and updated with each change as
needed. The team partners with Product to know what is expected from the system.
SLIs and SLOs are defined, dashboards created, and alerting configured. The team
knows what to do when there is an alert.

It’s much harder to add observability and supportability ‘hooks’ after a feature
is complete and usually requires significant refactoring. Putting a minimum set
of observability and runbooks/KB in place before shipping to production
increases resilience of the system, and allows for faster feedback.

The 2022 State of DevOps report found "when a service is unreliable, users won’t
benefit from pushing code faster into that fragile context." This means that
benefits of the other Sensible Defaults can be limited (or unlocked) by how the
team is Building for Production.

## Build In Security

Teams should always be concerned with security and this should affect how they
plan work items. If a work item has security implications or concerns, the same
acceptance criteria should address them. This prevents teams from separating
security needs from other work and denies the opportunity to delay the
implementation of security requirements.

Software security is far too large in scope to be covered by OpenO11y. NIST has
several publications such as 800-53[^nist] that dive deep into information
technology security. OpenO11y offers the following short list as a starting
point for teams to follow.

* Secrets are never stored in git repositories; Use a secrets
  management service
* Dependencies in platform, code, and tooling are patched regularly, preferably
  using an automated dependency checker
* The principle of least privilege[^leastprivilege] is followed, ensuring
  identities only have the minimal set of permissions necessary to complete
  their required tasks
* Systems are analyzed to ensure threats have compensating controls to prevent
  unintended usage

## Team Ownership of Quality

Team ownership of quality means that all team members share equal accountability
for their responsibilities and the quality of their work. In order to achieve
continuous delivery and reduce the mean time to validate a change and enable
fast feedback at every phase of the software delivery life cycle (SDLC) team
should embrace a team ownership of quality mindset and continuous testing
practices​.

One of main attributes of Team ownership of quality is achieving continuous
testing

Continuous testing is a software testing methodology that helps identify and
address risks at all stages of the development pipeline. In other words, it
means testing all potential code changes as early as possible. The goal of
continuous testing is to minimize business risk and impact on users.​

## Test Driven Development

[^agilemanifesto]: Agile Manifesto (2001): <https://agilemanifesto.org/principles.html>
[^ci]: <https://www.cloudbees.com/continuous-delivery/continuous-integration>
[^leastprivilege]: <https://en.wikipedia.org/wiki/Principle_of_least_privilege>
[^trunksummary]: Trunk Based Development One Line Summary: <https://trunkbaseddevelopment.com/#one-line-summary>
[^nist]: <https://csrc.nist.gov/pubs/sp/800/53/r5/upd1/final>

[gitflow]: https://nvie.com/posts/a-successful-git-branching-model/
[liveshare]: https://code.visualstudio.com/learn/collaboration/live-share
[trunk]: https://trunkbaseddevelopment.com/
