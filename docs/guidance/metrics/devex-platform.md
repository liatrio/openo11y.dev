# DevEx & Platform Metrics

## Platform Metrics

These metrics serve to provide feedback for [platform](https://tag-app-delivery.cncf.io/whitepapers/platforms/#what-is-a-platform) teams from their customers; internal product teams. This feedback is critical to building a customer centric platform product. Collecting the following indicators is essential to ensuring product teams are having a delightful experience.

- **Adoption Rate** - The rate at which product teams adopt a platform component. Can be calculated per component as between (T<sub>0</sub> and T<sub>n</sub>) number of adoptions / total teams.
- **InnerSourcing Contributions** - A monotonic count of code contributions merged into the trunk of any given platform components from contributors outside of the platform team.
- **Platform Experience Survey** - NPS Survey like results where the survey is deployed while users are in the context of using your platform. The survey questions are focused specifically on the platform. For example, if your platform is CI/CD, issue a brief survey post git push, while the user is in context, waiting on a build.
- **Platform Resiliency** - Leverage the key tenets of observability to achieve SLI’s and SLO’s specific to your platform. Simply put, this is platform uptime.

## Developer Experience (DevEx) Metrics

These metrics serve to provide the overall experience for engineers at your organization. What does it feel like to work here? These metrics are critical for attracting and retaining talent. Happy developers often means higher quality, better products.

- **Onboarding Experience** - Measure the overall onboarding time from gaining hardware to receiving the proper access to be productive. How does your organization's onboarding experience compare to other organizations?
- **Mean Time to First Commit In Production** - Calculate the delta between new hire start date to the timestamp of the first commit deployed to Production.
- **Time In Context/Flow** - Measure the amount of time spent doing development work vs in meetings & ceremonies
-**Discoverability of Quality Documentation** - How easy is it to find materials you need to do your job.
Use of Well-Known, “Googleable” Technologies - Using well-known or open source technologies over home-grown, bespoke solutions with high learning curves
