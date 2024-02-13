# Engineering Metrics

These metrics provide signals as to how teams are adhering to the adoption of the engineering practices and principals. Complimentary to the DORA metrics, these metrics are designed to be leading indicators of how teams are delivering software.

## Branch & PR Age

Measures the lifespan and efficiency of code integration in repos.

### How to Measure

Calculated by the overall average age of branches & pull requests across each repo

### Example

Number of commits a branch is behind or ahead of main. Hours or days a PR has existed before merging into main.

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
| Critical | 1 - 20 | 21 - 50  | 50+       |
|   High   | 1 - 10 | 11 - 25  | 26+       |
| Moderate | 1 - 5  | 6 - 20   | 21+       |
| Low      | 1 - 3  | 4 - 10   | 11+       |

### How to interpret

Analyzing the distribution of contributions across repositories helps identify projects that may rely heavily on a limited number of contributors, potentially uncovering knowledge silos and collaboration bottlenecks. A diverse contributor base is often a hallmark of a healthy, sustainable project, as it reduces the risk associated with developer turnover and encourages a broader engagement with the project's goals and maintenance.

Observe how this count changes over time. Any project with less than 3 contributors is a considerable risk.

## Open Branches

Measures the number of active and open branches in a repo, excluding the trunk.

### How to Measure

Count the number of open branches in a repo.

### Example

If the `liatrio-otel-collector` repo has a main branch and 5 feature branches, then the count is 5.

## Code Coverage

Measures the percentage of code statements exercised during unit test runs. Assesses the amount of code logic invoked during unit testing.


### How to Measure

3rd party tooling which runs in your automated CI/CD builds

### Example

If the code we're testing has 100 lines of code and 50 of those are executed by unit test code, then the code coverage percentage of this software is 50%

## Code Quality

Measures the quality of code across three tenets: Security (Vulnerabilities), Reliability (Bugs), and Maintainability (Code Smells).

### How to Measure

3rd party tooling which runs in your automated CI/CD builds

### Example

One aspect of code quality is reusability, which can be measured by counting the number of interdependencies. The more tightly-coupled the code is with surrounding code and dependencies, the less reusable the code tends to be.

## Story Cycle Time

Measures the time between starting a work item (In Progress) and completing a work item (Done). Promote small batch delivery by striving for smaller cycle times.

### How to Measure

Calculated as the average time that stories remain active.

### Example

If a 4-person team completes 32 stories in a month with 22 work days, then the cycle time is `(4 * 22) / 32` or 2.75 days.
