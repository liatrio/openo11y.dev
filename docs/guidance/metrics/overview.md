
# Engineering Effectiveness and Delivery Metrics

Below defines the approach for measuring engineering teams. The measuring approach will be uniform across engineering delivery. There is no one single metric that rules them all. Focusing on one metric will cause overemphasis in one direction and will negatively impact the others. The outcome is not “big brother is watching” nor is it a way to measure individual performance. Rather, it is a mechanism to provide quantitative and qualitative [signals](https://github.com/cncf/tag-observability/blob/main/whitepaper.md#observability-signals) to product teams that measure their delivery, culture, and joy against an opinionated set of engineering practices and principles.

Metrics will be gathered real-time or as near real-time as possible. Product delivery will not be impacted if the observability platform is unavailable.

## Business OKRs defined & measurable

Objectives & Key Results (OKRs) are defined, with clear and inspiring Objectives that align with the company's overall mission and vision. Key Results are specific, measurable, and quantifiable, providing a clear path towards achieving the Objectives. OKRs are regularly reviewed and updated as needed, with a strong commitment to achieving them.

- _How to Measure:_ All team members understand the OKRs and how their work contributes to their achievement. The OKRs are logged in the company's OKR tracker.

---

## Performance Pulse Check

|Metrics|Run|Walk|Crawl|
|-------|---|----|-----|
|Lead Time|Less than 1 hour|Between one week andone month|Between one month and six months|
|Deployment Frequency|On Demand/Multiple times per day|Between once per day to once per week|Between 2 weeks and a month|
|Change Failure Rate|0-7% (&lt;15 min)|7-15% (1+ hours)|16-30% (2+ hours)|
|MTTR|&lt; 1 hour|1-6 hours|1 business day|
|Branch & PR Age|Less than 4 hours|Less than 3 days|Greater than 1 week|
|Code Coverage (New Code)|> 90%|80 - 90%|< 80%|
|Code Coverage (Legacy Code)|> 80%|20% - 80%|< 50%|
|Code Quality (SonarQube Security)|A|B|C|
|Code Quality (SonarQube Reliability)|A|B|C|
|Code Quality (SonarQube Maintainability)|B|C|D|
|Joy Index|eNPS 30 to 80+|eNPS -10 to 30+|eNPS -30 to 10+|
|Business OKRs defined & measurable|Defined with clear and inspiring objectives that align with the company's vision|Defined but room for improvement regarding alignment with company's vision|Defined but challenging for teams to understand how their work contributes to the company's vision|

<sup><em>
   <sup>1</sup>Code coverage percentage baseline and target will be need to determined during charter/assessment phase for teams
</em></sup>

<sup><em>
   <sup>2</sup>Security - Vulnerability | Reliability- Bug | Maintainability - Code Smell
</em></sup>
