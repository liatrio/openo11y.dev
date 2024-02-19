# Engineering Metrics

These metrics provide signals as to how teams are adhering to the adoption of
the engineering practices and principals. Complimentary to the
[DORA metrics][dora], these metrics are designed to be leading
indicators of how teams are delivering software.

Many of these metrics can be gathered using an OpenTelemetry collector
configured to run a [GitProvider receiver][gitprovider].

[dora]: https://dora.dev/
[gitprovider]: https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/gitproviderreceiver

## Branch & PR Age

Measures the lifespan and efficiency of code integration in repos. Both, `branch
age` and `pull request` age are measured as a number of minutes, hours, or days.
Note that these metrics should be ignored for a repo's long-lived branches, such
as `main`.

Longer-lived branches introduce risk and maintenance overhead. As time advances,
downstream branches diverge from their upstream counterparts. Thus,
these branches are more likely to experience merge conflicts and introduce
unexpected code changes.

Long-lived pull requests can result from overly large scope or complexity of
changes. It can also indicate a need for or lack of pair programming.

Generally, branch and pull request age metrics should be minimized. This
promotes small batch development by frequently creating branches, opening pull
requests, and merging/closing them quickly.

## Number of Unique Contributors

Measures the total count of unique contributors to a repository over the course
of its lifetime. An easy way to get this in GitHub or GitLab is to leverage
the GitProvider receiver within the OpenTelemetry collector. It will count
the cumalitive number of unique contributors who have made at least one commit
to a given respository. This count is a point-in-time count of all contributors
from the beginning to the current time.

Interpreting this metric is very contextual. Measuring an OpenSource Library
that is used within production code may require a different number of contributors
than a one-off POC of an internal repository.

The below chart takes a view based on a couple common scenarios.

|  Impact  | Risky  | Hesitant | Desirable |
|:--------:|--------|----------|-----------|
| Critical | 1 - 20 | 21 - 50  | 51+       |
| High     | 1 - 10 | 11 - 25  | 26+       |
| Moderate | 1 - 5  | 6 - 20   | 21+       |
| Low      | 1 - 3  | 4 - 10   | 11+       |

## Open Branches

Measures the number of active and open branches in a repo, excluding the trunk.
The count is a point-in-time total of all open branches in the repository. If
the `liatrio-otel-collector` repo has a main branch and 5 feature branches, then
the count is 5.

Ideally, this metric will always be low. A higher number of open branches
creates a higher level of cognitive overhead and maintenance for repo maintainers.
However, this is opposed by the scale and activity of a repo. I.e. a very active
project may have dozens of concurrent, active branches and may not be a
indicative of a problem.

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
