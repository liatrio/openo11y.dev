# Engineering Metrics

These metrics provide signals as to how teams are adhering to the adoption of
the engineering practices and principals. Complimentary to the
[DORA metrics][dora], these metrics are designed to be leading
indicators of how teams are delivering software.

Many of these metrics can be gathered using an OpenTelemetry collector
configured to run a [GitProvider receiver][gitprovider].

## Branch Metrics

Engineering Defaults: [Pair Programming][pp], [Small Batch Delivery][sbd], and
[Trunk Based Development][tbd]

***Branch Count*** measures the number of branches that exist within a
repository at a given point in time, less the default branch.

***Branch Age*** measures the time a branch has existed within a repository at a
given point in time, less the default branch.

High branch counts and branch ages are forms of technical debt, introducing
unnecessary risk through increased maintenance and cognitive overhead. High
counts and ages may also signify:

* The team is using GitFlow
* The team is not pair programming
* The team is not delivering in small batches
* A high number of merge conflicts that must be resolved regularly

Branch count and branch age should be reduced to a minimum based on team context
and goals. These metrics have to be evaluated in context. For example, a large
open source project may accept a much higher norm than a product team of eight
engineers.

The below chart shows targets towards the engineering defaults for branch count
and branch age when taken in the context of an ideal product team:

|                      | Risky | Mediocre | Better | Engineering Defaults |
|:--------------------:|-------|----------|--------|----------------------|
| Branch Count         | 20+   | 10 - 20  | 5 - 10 | < 5                  |
| Branch Age (in days) | 10+   | 7 - 10   | 3 - 7  | < 3                  |

***Branch Ahead By Commit Count*** measures the number of commits a downstream
branch is ahead of its upstream branch, typically the trunk. A high number of
"commits ahead" may indicate a need for smaller batch delivery.

***Branch Behind By Commit Count*** measures the number of commits a downstream
branch is behind its upstream branch, typically the trunk. A high number of
"commits behind" may indicate the branch has lived too long, adding extra
maintenance and cognitive overload.

***Branch Lines Added*** measures the number of lines added to a downstream
branch when compared to its upstream branch, typically the trunk.

***Branch Lines Deleted*** measures the number of lines deleted from a
downstream branch when compared to its upstream branch, typically the trunk.

> Junior developers add code. Senior developers delete code.[^seniority]

The purpose of these metrics is to simply provide observable data points with
regards to addition and deletion of code when comparing a branch to the default
trunk. It is a purely contextual metric that a team can leverage to provide
additional information during self-evaluation. This metric can be correlated
with other metrics like Pull Request Age to provide additional insight on
cognitive overheard.

> These metrics can be gathered automatically from GitHub and GitLab through the
> [Liatrio OTEL Collector][lcol]. Check out the [Liatrio OTEL Demo Fork][demo]
> to see this metric collection in action.

## Number of Unique Contributors

***Unique Contributors*** measures the total count of unique contributors to a
repository over the course of its lifetime. This count will monotonically
increase over time.

Interpreting this metric is very contextual. Measuring an OpenSource Library
that is used within production code may require a different number of
contributors than a one-off proof-of-concept (POC) of an internal repository.

The below chart takes a view based on several common scenarios.

|  Impact  | Risky  | Hesitant | Desirable |
|:--------:|--------|----------|-----------|
| Critical | 1 - 20 | 21 - 50  | 51+       |
| High     | 1 - 10 | 11 - 25  | 26+       |
| Moderate | 1 - 5  | 6 - 20   | 21+       |
| Low      | 1 - 3  | 4 - 10   | 11+       |

> These metrics can be gathered automatically from GitHub and GitLab through the
> [Liatrio OTEL Collector][lcol]. Check out the [Liatrio OTEL Demo Fork][demo]
> to see this metric collection in action.

## Code Coverage

***Code Coverage*** measures the percentage of code statements exercised during
unit test runs. Assesses the amount of code logic invoked during unit testing.
Third party tooling such as [CodeCov][codecov] runs in your automated CI/CD
pipelines. If the code in question has 100 lines of code and 50 of those are
executed by unit tests, then the code coverage percentage of this software is
50%.

[codecov]: https://app.codecov.io/gh/open-telemetry/opentelemetry-collector-contrib

Open O11y recommends having code coverage for any product which is going to
production.

## Code Quality

***Code Quality*** measures the quality of code across three tenets:

Security (Vulnerabilities): Security in the context of code quality refers to
the identification and mitigation of vulnerabilities that could be exploited by
attackers to compromise the system.

Reliability (Bugs): Reliability focuses on the software's ability to perform its
intended functions under specified conditions for a designated period. Bugs, or
errors in the code, can significantly impact the reliability of a software
application, leading to system crashes, incorrect outputs, or performance
issues.

Maintainability (Code Smells): Maintainability is about how easily software can
be understood, corrected, adapted, and enhanced. "Code smells" are indicators of
potential problems in the code that may hinder maintainability. These can
include issues like duplicated code, overly complex methods, or classes with too
many responsibilities. Addressing code smells through refactoring and adhering
to coding standards and best practices helps improve the maintainability of the
codebase, making it easier for developers to work with and evolve the software
over time.

Use third party tooling such as Coverity that provide these metrics.

## Work Cycle Time

Engineering Defaults: [Small Batch Delivery][sbd]

Work cycle time calculates the time between a work item being started and
finished. For each work item, calculate the cycle time as:

$$
t = t_{finish} - t_{start}
$$

A team can then calculate the average cycle time for work items in a given
period of time. For example, a team may calculate the following cycle times for
four work items:

* $t_0 = 48$ hours
* $t_1 = 72$ hours
* $t_2 = 16$ hours
* $t_3 = 144$ hours

Then, the team can calculate the average as:

$$
\frac{1}{n}
\left(
  \sum_{i=0}^{n}
  t_i
\right)
= \frac{48 + 72 + 16 + 144}{4}
= 70
\text{ hours}
$$

In this example, the team may conclude that their average cycle time is very
large. As a result, the team agrees to write smaller work items to deliver in
smaller batches.

Team Retrospective Questions:

* Are work items blocked regularly?
* Do work items need to be split into smaller scope portions?

The below chart reflects a general targets between large and small batch
delivery:

|                    | Large Batch | Mediocre | Decent | Small Batch |
|:------------------:|-------------|----------|--------|-------------|
| Average Cycle Time | Months      | Weeks    | Days   | Hours       |

> Important: We recommend first taking a look at the cycle time for branches ->
> pull requests -> deployment into production through the DORA metrics instead
> of relying on work cycle time.

## Repositories Count

The quantity of repositories managed by an organization or team is a critical
indicator of the extent of code they oversee. This metric is the base for all
other Source Control Management (SCM) metrics. High numbers of repositories for
a small team may signify a high cognitive overhead. You can correlate the number
of repositories a team owns to the number of repositories within the
organization.

However, it's crucial to recognize that this metric does not offer a
one-size-fits-all solution. Although it forms the basis for further analysis,
its significance can vary greatly. Like all metrics, it should be interpreted
within the broader context and aligned with the specific values and objectives
of the team.

## Pull Request Count and Age

Engineering Defaults: [Pair Programming][pp], [Small Batch Delivery][sbd], and
[Trunk Based Development][tbd]

***Pull Request Count*** measures the number of pull requests against the
default branch in a repository at a given point in time.

***Pull Request Age*** measures the time from when a pull request is opened to
when it is approved and merged.

These metrics help teams discover bottlenecks in the lifecycle of pull requests.
There are three main states of a pull request that can be measured, `open`,
`approved`, `merged`. Ideally, a team processes a steady flow of pull requests
which suggests a healthy, productive development process.

The below is the definition of states as defined in the
[Git Provider Receiver][gitprovider] in terms of states for age:

* ***open age***: the amount of time a pull request has been open
* ***approved age***: the amount of time it took for a pull request to go from
  open to approved
* ***merged age***: the amount of time it took for a pull request to go from
  open to merged

The below chart outlines time for each of these metric states centered towards
the engineering defaults. Remember to evaluate these in context of things like
team size, contributor size, and inner vs open source.

|                             | Risky | Mediocre | Better | Engineering Defaults |
|:---------------------------:|-------|----------|--------|----------------------|
| Pull Request Count          | 20+   | 10 - 20  | 5 - 10 | < 5                  |
| Pull Request Age - Open     | Weeks | Days     | Hours  | Minutes              |
| Pull Request Age - Approved | Weeks | Days     | Hours  | Minutes              |
| Pull Request Age - Merged   | Weeks | Days     | Hours  | Minutes              |

Team Retrospective Questions:

* Are pull requests simply being ignore?
* Is the team overwhelmed with external contributions?
* Are the merge requirements excessively difficult? Can automation help?
* Are team members pair programming enough?
* Is the team delivering in large batches?

Pair programming can reduce the time needed towards reviewing pull requests.
When pairing, a code review effectively occurs in real-time during development.
Thus, the pairing partner is very familiar with the changes and is able to very
quickly review and approve a pull request.

Large batch deliveries increase the the time needed to review a pull request.
This problem is discussed in detail [above](#branch-metrics).

Teams should also be concerned when these metrics are very low. This likely
indicates that teams aren't reviewing pull requests effectively. Additionally,
merging pull requests too quickly prevents other team members from reviewing the
code changes.

[^seniority]: Unknown source

[pp]: ../../engineering-defaults.md#pair-programming
[tbd]: ../../engineering-defaults.md#trunk-based-development
[sbd]: ../../engineering-defaults.md#small–batch-delivery
[demo]: https://github.com/liatrio/opentelemetry-demo/blob/main/docs/delivery.md
[lcol]: https://github.com/liatrio/liatrio-otel-collector/
[dora]: https://dora.dev/
[gitprovider]: https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/gitproviderreceiver
