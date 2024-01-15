# Engineering Metrics

These metrics provide signals as to how teams are adhering to the adoption of the engineering practices and principals. Complimentary to the DORA metrics, these metrics are designed to be leading indicators of how teams are delivering software.

## Branch & PR Age

Measures the lifespan and efficiency of code integration in repos.

- _How to Measure:_ Calculated by the overall average age of branches & pull requests across each repo
- _Example:_ Number of commits a branch is behind or ahead of main. Hours or days a PR has existed before merging into main.

## Open Branches

Measures the number of active and open branches in a repo, excluding the trunk

- _How to Measure:_ Count the number of open branches in a repo.
- _Example:_ If the `liatrio-otel-collector` repo has a main branch and 5 feature branches, then the count is 5.

## Code Coverage

Measures the percentage of code statements exercised during unit test runs. Assesses the amount of code logic invoked during unit testing.

- _How to Measure:_ 3rd party tooling which runs in your automated CI/CD builds
- _Example:_ If the code we're testing has 100 lines of code and 50 of those are executed by unit test code, then the code coverage percentage of this software is 50%

## Code Quality

Measures the quality of code across three tenets: Security (Vulnerabilities), Reliability (Bugs), and Maintainability (Code Smells).

- _How to Measure:_ 3rd party tooling which runs in your automated CI/CD builds
- _Example:_ One aspect of code quality is reusability, which can be measured by counting the number of interdependencies. The more tightly-coupled the code is with surrounding code and dependencies, the less reusable the code tends to be.

## Story Cycle Time

Measures the time between starting a work item (In Progress) and completing a work item (Done). Promote small batch delivery by striving for smaller cycle times.

- _How to Measure:_ Calculated as the average time that stories remain active.
- _Example:_ If a 4-person team completes 32 stories in a month with 22 work days, then the cycle time is `(4 * 22) / 32` or 2.75 days.