# Engineering Metrics

These metrics provide signals as to how teams are adhering to the adoption of
the engineering practices and principals. Complimentary to the
[DORA metrics][dora], these metrics are designed to be leading
indicators of how teams are delivering software.

Many of these metrics can be gathered using an OpenTelemetry collector
configured to run a [GitProvider receiver][gitprovider].

[dora]: https://dora.dev/
[gitprovider]: https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/gitproviderreceiver

## Branch Metrics

Engineering Defaults: [Trunk Based Development][tbd] and [Pair Programming][pp]

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
* A high number of merge conflicts the team has to deal with regularly.

Branch count and branch age should be reduced to a minimum based on team context
and goals. These metrics have to be evaluated in context. For example, a large
open source project may have a much higher default that is acceptable than a
product team of eight engineers.

The below chart shows targets towards the engineering defaults for branch count
and branch age when taken in the context of an ideal product team:

|                      | Risky | Mediocre | Better | Engineering Defaults |
|:--------------------:|-------|----------|--------|----------------------|
| Branch Count         | 20+   | 10 - 20  | 5 - 10 | < 5                  |
| Branch Age (in days) | 10+   | 7 - 10   | 3 - 7  | < 3                  |

***Branch Lines Added*** measures the number of lines added to a downstream
branch when compared to its upstream branch, typically main.

***Branch Lines Deleted*** measures the number of lines deleted from a downstream
branch when compared to its upstream branch, typically main.

> Junior developers add code. Senior developers delete code.[^seniority]

As a project develops, its code base is expected to grow. This is especially
true for new features rather than bug fixes. Thus, these metrics will generally
be net positive for new and developing code bases. However, a matured code base
is more likely to have reusable segments of code and will support new features
with fewer additional lines of code.

The purpose of this metric is to measure how large a code base grows over time
and in turn, the required amount of cognitive overhead required of developers.
While a very positive net change is often normal, it is generally desirable for
this metric to be low or even negative without losing functionality.

When evaluating this metric, it is very important to rely on strong style
standards that encourage line length limits.

> These metrics can be gathered automatically from GitHub and GitLab through the
> [Liatrio OTEL Collector][lcol]. Check out the [Liatrio OTEL Demo Fork][demo]
> to see this metric collection in action.

## Number of Unique Contributors

Measures the total count of unique contributors to a repository over the course
of its lifetime. An easy way to get this in GitHub or GitLab is to leverage the
GitProvider receiver within the OpenTelemetry collector. It will count the
cumulative number of unique contributors who have made at least one commit to a
given repository. This count is a point-in-time count of all contributors from
the beginning to the current time.

Interpreting this metric is very contextual. Measuring an OpenSource Library
that is used within production code may require a different number of
contributors than a one-off proof-of-concept (POC) of an internal repository.

The below chart takes a view based on a couple common scenarios.

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

Measures the percentage of code statements exercised during unit test runs.
Assesses the amount of code logic invoked during unit testing. 3rd party tooling
such as [CodeCov][codecov], which runs in your automated CI/CD builds. If the
code we're testing has 100 lines of code and 50 of those are executed by unit
test code, then the code coverage percentage of this software is 50%.

[codecov]: https://app.codecov.io/gh/open-telemetry/opentelemetry-collector-contrib

We recommend having code coverage for any product which is going to production.

## Code Quality

Measures the quality of code across three tenets: Security (Vulnerabilities),
Reliability (Bugs), and Maintainability (Code Smells). Using 3rd party tooling
like Coverity, etc. which runs in your automated CI/CD builds. One aspect of
code quality is reusability, which can be measured by counting the number of
interdependencies. The more tightly-coupled the code is with surrounding code
and dependencies, the less reusable the code tends to be.

## Work Cycle Time

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

The below chart reflects a general targets between large and small batch delivery:

|                    | Large Batch | Mediocre | Decent | Small Batch |
|:------------------:|-------------|----------|--------|-------------|
| Average Cycle Time | Months      | Weeks    | Days   | Hours       |

> Important: We recommend first taking a look at the cycle time for branches ->
pull requests -> deployment into production through the DORA metrics instead of
relying on work cycle time.

## Code Change Metrics

Measures code line changes for additions and deletions. Analyzing lines added
and removed in merge requests offers more than just numerical data; it reveals
critical insights into team productivity, codebase maturity, and the balance
between feature development and maintenance.

## Repositories in Organization

Measuring the point-in-time number of repositories across the organization
illuminates growth trends, which can signal increased team efficiency,
exploration of new technologies, or expanded R&D efforts. Conversely, a high
count may also indicate the presence of legacy projects that could be pruned to
reduce cognitive overhead.

## PR Approval Time

Measures the amount of time it took a pull request to go from open to approved.
This metric can highlight a PR's potential complexity to review. An overly
complex PR may indicate someone working in a silo, or something that may have
mixed content which would be better served with smaller, easier to review pull request.

## Point-in-Time Repository Metrics

Other metrics we find useful to gather across a repository include the number of
open pull requests, and number of merged for any given repository.

A high number of open PRs can indicate active development and engagement within
the project. It can suggest that many features or fixes are in the pipeline,
awaiting review or completion. Conversely, a consistently high number of open
PRs might point to bottlenecks in the review process. It could signal that the
team is overwhelmed, reviews are taking too long, or there's a lack of consensus
on how to proceed.

The number of merged PRs is a direct indicator of the project's development
pace. A steady flow of merged PRs suggests a healthy, productive development
process. The frequency and volume of merged PRs can also reflect on team
collaboration and efficiency. A project with frequent merges likely has good
communication and collaboration among contributors.

[tbd]: ../../engineering-defaults.md#trunk-based-development
[pp]: ../../engineering-defaults.md#pair-programming
[demo]: https://github.com/liatrio/opentelemetry-demo/blob/main/docs/delivery.md
[lcol]: https://github.com/liatrio/liatrio-otel-collector/
