
# Engineering Effectiveness and Delivery Metrics

Below defines the approach for measuring product teams. The measuring approach will be uniform across product delivery. There is no one single metric that rules them all. Focusing on one metric will cause overemphasis in one direction and will negatively impact the others. The outcome is not “big brother is watching” nor is it a way to measure individual performance. Rather, it is a mechanism to provide quantitative and qualitative [signals](https://github.com/cncf/tag-observability/blob/main/whitepaper.md#observability-signals) to product teams that measure their delivery, culture, and joy against an opinionated set of engineering practices and principles.

Metrics will be gathered real-time or as near real-time as possible. Product delivery will not be impacted if the observability platform is unavailable.

## Key Metrics

### DORA Metrics

These 4 key delivery metrics from [DORA](https://dora.dev/) are the industry standard for measuring software delivery. We have found that these metrics are effective but lagging indicators of how teams are delivering software.

- **Lead Time for Changes** - Tracks the time it takes for a code change to go from commit in trunk to deployed to production.
- **Deployment Frequency** - Measures how often code is deployed to Production
- **Change Failure Rate** - Percentage of changes that result in failures after it is in production or released to end user
- **Mean Time to Restore (MTTR)** - Calculates the time needed to recover from a service disruption; highlights the team's ability to detect and resolve issues swiftly.

### Engineering Metrics

These metrics provide signals as to how teams are adhering to the adoption of the Engineering Defaults. This grouping of metrics are leading indicators and will impact the speed and safety (quality, security, resilience) of the Delivery Metrics.

- **Branch & PR Age** - Evaluates the lifespan and efficiency of code integration in repos
- **Open Branches** - Evaluates the number of active and open branches in a repo, excluding the trunk
- **Code Coverage** - Percentage of code statements exercised during unit test runs
- **Code Quality** - Assesses high or low quality of code across three tenets - Security (Vulnerability), Reliability (Bug) and Maintainability (Code Smells)
- **Story Cycle Time** - Measures the time between starting a work item (In Progress) and completing a work item (Done), promoting small batch delivery.

### Satisfaction & Well-being

This set of metrics is qualitative in nature but critical to measure overall health, happiness, and culture of a team. We have found that teams can perform well on the quantitative metrics but have a toxic culture. Happy engineers create better products for our customers. There is much more to be said about the correlation of productivity and job satisfaction in the research piece on SPACE.

- **Team & Leadership Joy Index** - Benchmarks individual developer experience, satisfaction, and happiness using NPS(Net Promoter Score) and surveys
- **Open & Transparent Communication** - Assess how communication happens in persistent chat platforms taking a look at total message count in public channels vs private and direct messages.

### Platform Metrics

These metrics serve to provide feedback for shared services teams who exist to serve at the pleasure of product teams.  This feedback is critical for providing feedback that platform teams are building the right thing and providing an enjoyable experience to their customers.  The high level descriptions are generic in this section given the broad context of “platform”.

- **Adoption Rate** - Assess the adoption rate of your reusable components
- **InnerSourcing Contributions** - Assess the number of code contributions to the platform components from contributors outside of the platform team
- **Platform Experience Survey** - Deploy platform specific questions while users are in the context of using your platform.  For example, if your platform is CI/CD, issue a brief survey post git push, while the user is in context, waiting on a build.
- **Platform Hotspots** - Gather component level data from support request intake. Use this data to inform where uplift is needed both in documentation and capability.  This will reduce your overall support in the given area and allow the team to stay in context.
- **Platform Resiliency** - Leverage the key tenets of observability to achieve SLI’s and SLO’s specific to your platform.  Simply put, this is platform uptime.

### Developer Experience (DevEx) Metrics

These metrics serve to provide the overall experience for engineers at your organization.  What does it feel like to work here? These metrics are critical for attracting and retaining talent.

- **Onboarding Experience** - Measure the overall onboarding time from gaining hardware to receiving the proper access to be productive.  How does your organization's onboarding experience compare to other organizations?
- **Mean Time 1st Commit In Production** - Calculate the delta between new hire start date to the timestamp of the first commit deployed to Production.
- **Time In Context/Flow** - Measure the amount of time spent doing development work vs in meetings & ceremonies
-**Discoverability of Quality Documentation** - How easy is it to find materials you need to do your job.
Use of Well-Known, “Googleable” Technologies - Using well-known or open source technologies over home-grown, bespoke solutions with high learning curves

### Product Metrics

- Business Objectives & Key Results are defined & measurable - Verify the teams have established high quality OKRs with clearly defined measures

---

## Performance Pulse Check

<table>
<tr>
<td class="highlight-hdr">Metrics</td>
<td class="highlight-hdr"><span style="text-decoration:underline;">Run </span></td>
<td class="highlight-hdr"><span style="text-decoration:underline;">Walk </span></td>
<td class="highlight-hdr"><span style="text-decoration:underline;">Crawl</span></td>
</tr>

<tr>
<td>Lead Time</td>
<td>Less than 1 hour</td>
<td>Between one week andone month</td>
<td>Between one month and six months</td>
</tr>

<tr>
<td>Deployment Frequency</td>
<td>On Demand/Multiple times per day</td>
<td>Between once per day to once per week</td>
<td>Between 2 weeks and a month</td>
</tr>

<tr>
<td>Change Failure Rate</td>
<td>0-7% (&lt;15 min)</td>
<td>7-15% (1+ hours)</td>
<td>16-30% (2+ hours)</td>
</tr>

<tr>
<td>MTTR</td>
<td>&lt; 1 hour</td>
<td>1-6 hours</td>
<td>1 business day</td>
</tr>

<tr>
<td>Branch & PR Age</td>
<td>Less than 4 hours</td>
<td>Less than 3 days</td>
<td>Greater than 1 week</td>
</tr>

<tr>
<td>Code Coverage<sup>1</sup></td>
<td><b>Exemplary</b><p>Ex: 80-90%+ for existing & new code</td>
<td><b>Commendable</b> <p>Ex: 20-50% for existing code<p>80%+ for new code</td>
<td><b>Acceptable</b><p>Example: 0-50% for existing code<p>80%+ for new code</td>
</tr>

<tr>
<td>Code Quality<sup>2</sup><p>(SonarQube Rating)</td>
<td><b>Security: A<p>Reliability: A<p>Maintainability: B</b></td>
<td>Security: B<p>Reliability: B<p>Maintainability: C</td>
<td>Security: C<p>Reliability: C<p>Maintainability: D</td>
</tr>

<tr>
<td>Joy Index</td>
<td>eNPS 30 to 80+</td>
<td>eNPS -10 to 30+</td>
<td>eNPS -30 to 10+
</td>
</tr>

<tr>
<td>Business OKRs defined & measurable</td>
<td>Defined with clear and inspiring objectives that align with the company's vision</td>
<td>Defined but room for improvement regarding alignment with company's vision</td>
<td>Defined but challenging for teams to understand how their work contributes to the company's vision</td>
</tr>
</table>

<sup><em>
   <sup>1</sup>Code coverage percentage baseline and target will be need to determined during charter/assessment phase for teams
</em></sup>

<sup><em>
   <sup>2</sup>Security - Vulnerability | Reliability- Bug | Maintainability - Code Smell
</em></sup>

## Why Metrics Matter

### Quantifiable Performance

- Metrics provide objective measurements of team performance, fostering a data-driven culture. They enable teams to track progress, set benchmarks, and identify areas for improvement.

### Continuous Improvement

- By identifying bottlenecks and inefficiencies, metrics drive continuous improvement efforts. Teams can refine processes, optimize workflows, and enhance collaboration to accelerate delivery.

### Risk Mitigation

- Lower change failure rates and shorter Minutes of Impact indicate increased software stability and reliability. This minimizes business risks associated with service disruptions and costly downtimes.

### Informed Decision-Making

- Metrics facilitate informed decision-making by offering a comprehensive view of the software delivery pipeline. Teams can make strategic choices to improve alignment with business goals.

### Cross-Functional Collaboration

- These metrics encourage collaboration between development, operations, and quality assurance teams. Silos are broken down, fostering a holistic approach to software delivery.

Software powers innovation and competitive advantage and metrics have emerged as the compass guiding software delivery teams toward success. They provide a roadmap to accelerated delivery, enhanced quality, and collaborative excellence. By leveraging the insights gleaned from these metrics, organizations can transform their software delivery processes and stay at the forefront of their industries.

## Delivery Metrics

### Lead Time for Change

Measures the time it takes for a code change to go from the commit to trunk and deployed to production. Provides insights into workflow efficiency and bottlenecks. Shorter lead times indicate smoother processes and quicker value delivery.

- _How to measure:_ Conduct team level Value Stream Map ( VSM) to gather time code change goes from commit to production
- _Example:_ team’s lead time is 509.15h (~64 days). Working time is 163.85h (~20 days)

### Deploy Frequency

Measures how often code is deployed. Enables rapid iteration and faster time-to-market. Encourages small, incremental changes, reducing the risk of failures.

- _How to measure:_ Divide the total number of deployments made in a given time period (e.g., a month) by the total number of days in that period
- _Example:_ If a team deployed code 10 times in a month with 31 days, the deployment frequency would be 10/31 = an average of _0.32 deployments per day_ over the month

### Change Failure Rate

Gauges the percentage of deployments that result in failures. Offers visibility into code quality and stability. Low failure rates signify robust testing and higher software reliability.

- _How to measure:_ Percentage of code changes that resulted in an incident, rollback, or any type of prod failure. Calculated by counting the number of deployment failures and then dividing by the number of total deployments in a given time period.
- _Example:_ If your team deployed five times this week and one of them resulted in a failure, your change failure rate is 20%

### Mean Time to Restore (MTTR)

Calculates the time needed to recover from a service disruption and highlights the team's ability to detect and resolve issues swiftly. Shorter MTTR reflects strong incident response and system resilience.

- _How to measure:_ Measures time it takes for service to recover from failure. Calculated by tracking the average time between a time of service disruption and the moment a fix is deployed.
- _Example:_ A team's average time from problem detection to full recovery is 90 minutes over the course of 6 months.

## Engineering Metrics

### Branch & PR Age

Evaluates development best practices on repos.

- _How to measure:_ Calculated by the overall average age of branches & pull requests across each repo
- _Example:_ Number of commits a branch is behind or ahead of main. Hours or days a PR has existed before merging into main.

### Code Coverage

Provides percentage of code statements exercised during unit test runs. Assesses the amount of code logic invoked during unit testing.

- _How to measure:_ 3rd party tooling which runs in your automated CI/CD builds
- _Example:_ If the code we're testing has 100 lines of code and 50 of those are executed by unit test code, then the code coverage percentage of this software is 50%

### Code Quality

Grades the quality of code as well as detecting security related defects. Identifies potential vulnerabilities in code and indicates where to resolve these and other software defects

- _How to measure:_ 3rd party tooling which runs in your automated CI/CD builds
- _Example:_ One aspect of code quality is reusability, which can be measured by counting the number of interdependencies. The more tightly-coupled the code is with surrounding code and dependencies, the less reusable the code tends to be.

## Joy Index

Benchmarks individual developer experience, satisfaction, and happiness.

- _How to measure:_ Employee Net Promoter Score tracks employee engagement and measures the impact of their people and culture initiatives. The eNPS shows how workers feel about your organization.
- _Example:_ Question -__“How likely are you to recommend us as a place to work for your family, friends, co-workers?”

## Product Metrics

### Business OKRs defined & measurable

OKRs are defined, with clear and inspiring Objectives that align with the company's overall mission and vision. Key Results are specific, measurable, and quantifiable, providing a clear path towards achieving the Objectives. OKRs are regularly reviewed and updated as needed, with a strong commitment to achieving them.

- _How to measure:_ All team members understand the OKRs and how their work contributes to their achievement. The OKRs are logged in the company's OKR tracker.
