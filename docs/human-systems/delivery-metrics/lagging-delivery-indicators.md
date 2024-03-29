# DORA Metrics

The four key delivery metrics from [DORA](https://dora.dev/) are the industry
standard for measuring software delivery. We have found that these metrics are
essential in modern software delivery. However, these metrics are not absolute
and are lagging indicators of how teams are delivering software.

## Lead Time for Changes

Measures the time between merging a code change into trunk and deploying the
code change to production. Provides insights into workflow efficiency and
bottlenecks. Shorter lead times indicate smoother processes and quicker value
delivery.

***How to Measure:*** Conduct team level Value Stream Map (VSM) to gather time
  code change goes from commit to production

***Example:*** team’s lead time is 509.15h (~64 days). Working time is 163.85h
  (~20 days)

## Deploy Frequency

Measures how often code is deployed to Production. Enables rapid iteration and
faster time-to-market. Encourages small, incremental changes, reducing the risk
of failures.

***How to Measure:*** Divide the total number of deployments made in a given
  time period (e.g., a month) by the total number of days in that period

***Example:*** If a team deployed code 10 times in a month with 31 days, the
  deployment frequency would be 10/31 = an average of *0.32 deployments per day*
  over the month

## Change Failure Rate

Measures the percentage of deployments that result in failures after it is in
production or released to end user. Offers visibility into code quality and
stability. Low failure rates signify robust testing and higher software
reliability.

***How to Measure:*** Percentage of code changes that resulted in an incident,
  rollback, or any type of prod failure. Calculated by counting the number of
  deployment failures and then dividing by the number of total deployments in a
  given time period.

***Example:*** If your team deployed five times this week and one of them
  resulted in a failure, your change failure rate is 20%

## Mean Time to Restore (MTTR)

Calculates the time needed to recover from a service disruption and highlights
the team's ability to detect and resolve issues swiftly. Shorter MTTR reflects
strong incident response and system resilience.

***How to Measure:*** Measures time it takes for service to recover from
  failure. Calculated by tracking the average time between a time of service
  disruption and the moment a fix is deployed.

***Example:*** A team's average time from problem detection to full recovery is
  90 minutes over the course of 6 months.
