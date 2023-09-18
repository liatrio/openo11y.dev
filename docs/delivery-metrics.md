# Delivery Metrics

## Executive Summary:

Below defines the approach for measuring product teams.  The measuring approach will be uniform across product delivery.  There is no one single metric that rules them all.  Focusing on one metric will cause over-rotation in one direction and will negatively impact the others.  The outcome is not a “big brother is watching” nor is it a way to measure individual performance rather it’s a mechanism to provide product **teams** signals (quantitative and qualitative) as to how they are delivering their product against an opinionated set of engineering practices and principles (sensible defaults) as well as a measure for overall team culture and joy.

### Assumptions and Approach

- Metrics will be gathered real-time or as near real-time as possible and will not impede delivery.  (i.e. if the metrics collection system is down product delivery will not be impacted.)

## 4 Key Metrics

These metrics have become the industry defacto for measuring teams and we at Liatrio agree these are a meaningful way to measure teams.  However, these 4 key metrics are lagging indicators on team performance and we believe in order to drive change the engineering practices and principles need to be followed to impact change.  We are leveraging Sensible Defaults and Joy Index to provide teams a mechanism to gauge how they are performing.

<table>
  <tbody>
    <tr> <!-- HEADERS-->
      <th>Metrics</th>
      <th align="left">What is Measured</th>
      <th align="left">Considerations</th>
    </tr>
    <tr>  <!-- FIRST ROW -->
      <td>
        <b>Deployment Frequency</b><br>
        Source(s): CircleCI, DataDog</td>
      <td align="left">
        Deployment frequency, to <b>production</b>, is a good indicator for how small of batches teams are working.<br><br>
        IN PROGRESS - Implemented but the solution is not sustainable.
      </td>
      <td>
        <ul>
          <li>
            For teams who are not fully in control of their production deployments showing deploy frequency to the lower environments is beneficial (Dev, QA, etc.)
          </li>
          <li>
            Teams should set a minimum target a production deployments per day.
          </li>
        </ul>
      </td>
    </tr>
    <tr>  <!-- SECOND ROW -->
      <td>Lead Time for Changes</td>
      <td align="left">
        The amount of time it takes a commit to get into production
      </td>
      <td align="left"></td>
    </tr>
    <tr>  <!-- THIRD ROW -->
      <td>Mean Time to Restore Service (MTTR)</td>
      <td align="left">
        How long it takes an organization to recover from a failure in production
      </td>
      <td align="left"></td>
    </tr>
    <tr>  <!-- Fourth ROW -->
      <td>Change Failure Rate</td>
      <td align="left">
        The percentage of deployments causing a failure in production
      </td>
      <td align="left"></td>
    </tr>
  </tbody>
</table>

## Sensible Defaults

The sensible defaults are the engineering practices & standards for product delivery.  The below metrics are signals for product teams to see how they are tracking against the engineering practices.

<table>
  <tbody>
    <tr> <!-- HEADERS-->
      <th>Sensible Defaults</th>
      <th align="left">What is Measured</th>
      <th align="left">Considerations</th>
    </tr>
    <tr>  <!-- FIRST ROW -->
      <td>
        <b>Trunk Based Development</b><br>
        Source(s): GitHub Insights</td>
      <td>
        <ul>
          <li>
            DONE Number of active branches - should be far less than the number of engineers on the team.
              <ul><li>
                Once a change is merged into main delete topic branches locally and on remote.
              </li></ul>
          </li>
          <li>
            DONE Age of open branches - other than main - branch life should be measured in minutes and hours not days.
          </li>
          <li>
            DONE PR Duration - life cycle should be measured in minutes and hours not days
          </li>
        </ul>
      </td>
      <td>
        <ul>
          <li>
            How to leverage network insights to show commits to main over time like GitHub Insights does?
          </li>
        </ul>
      </td>
    </tr>
    <tr>  <!-- SECOND ROW -->
      <td>
        <b>Small Stories</b><br>
        Source(s): JIRA
      </td>
      <td align="left">
        Cycle time in JIRA from In Progress (work started) to Done (work complete) - start out by targeting 1 story per engineer per business day (3 days max) until you find the right pace for your team.
        <ul>
          <li>
            Track average and standard deviation of cycle time.
          </li>
          <li>
            Log the WIP
          </li>
        </ul>
      </td>
      <td align="left"></td>
    </tr>
    <tr>  <!-- THIRD ROW -->
      <td>
        <b>Team Ownership of Quality</b><br>
        Source(s): CodeClimate  
      </td>
      <td align="left">
        <b>Unit Testing (TDD)</b>
        <ul>
          <li>
            DONE Code Climate - Unit Test code coverage - target 80% for net new code
          </li>
          <li>
            Cyclomatic Complexity - I’m not sure this is being calculated by CodeClimate, rather this is more of a feature of SonarQube
          </li>
          <li>
            Technical Debt Ratio
          </li>
        </ul>
      </td>
      <td align="left">
        <ul><li>
          For existing code bases (mono-repos) where multiple teams are pushing code changes, start by measuring and gating on net new code changes.
        </li></ul>
      </td>
    </tr>
    <tr>  <!-- Fourth ROW -->
      <td>
        <b>Build in Security</b><br>
        Source(s): Synk  
      </td>
      <td align="left">
      Snyk - Number of vulnerabilities over time - Critical & High. 
        <ul>
          <li>MTTR on Critical and High - Identified to remediated</li>
          <li><b>Critical</b> should be resolved in ~ 14 days</li>
          <li><b>High</b> should be resolved in 30 - 45 days.</li>
          <li>Date of discovery of CVE not date of identified by Snyk</li>
          <li>Fixed vs opened ratios of issues.</li>
          <li>Running summary from the last 30 days, fixed vulns, (newly) reported, ignored (what are they choosing not to fix)</li>
        </ul>
      </td>
      <td align="left"></td>
    </tr>
    <tr>  <!-- FIFTH ROW -->
      <td>
        <b>Pair Programming</b><br>
        Source(s): GitHub  
      </td>
      <td align="left">
        <ul>
          <li>Co-Authored commits</li>
          <li>Huddles</li>
          <li>Open channel communication</li>
        </ul>
      </td>
      <td align="left"></td>
    </tr>
    <tr>  <!-- SIXTH ROW -->
      <td>
        <b>Automated Deployment</b><br>
        Source(s): CircleCI
      </td>
      <td align="left">
        <ul>
          From pushing a code change, an automated build process provides feedback that the build is production-deployable in minutes.
          <li>
            <b>Pipeline MTTR</b> - when you have a failed build what’s the time to recover
            <ul><li>
              The main branch is your production candidate branch and should be in good running order to facilitate frequent production deployments.
            </li></ul>
          </li>
        </ul>
      </td>
      <td align="left"></td>
    </tr>
    <tr>  <!-- SEVENTH ROW -->
      <td>
        <b>Fast Automated Builds</b><br>
        Source(s): CircleCI  
      </td>
      <td align="left">
        <ul>
          <li>
            From pushing a code change, an automated build process provides feedback that the build is production-deployable in minutes.
          </li>
          <li>
            <b>Pipeline Duration by Stage</b> - Can be pulled from CircleCI api target < 10 from commit to deploy anything more is not fast feedback.
          </li>
        </ul>
      </td>
      <td align="left"></td>
    </tr>
    <tr>  <!-- EIGTH ROW -->
      <td>
        <b>Build for Production</b><br>
        Source(s): DataDog?
      </td>
      <td align="left">
        <ul>
          <li>
            Definition of done for a feature includes at minimum:
            <ul>
              <li>
                ensuring that the application is observable and supportable in production
              </li>
              <li>
                logs, traces, and metrics are available and useful
              </li>
              <li>
                monitoring and alerts are configured
              </li>
              <li>
                on-call team members are prepared to respond quickly to any failures or outages (e.g. production access, runbooks in place)
              </li>
            </ul>
          </li>
        </ul>
      </td>
      <td align="left"></td>
    </tr>
    <!-- Add new row here -->
  </tbody>
</table>


| Sensible Defaults | What is Measured | Considerations |
|:---|:---|:---|
| **Trunk Based Development**<br>Source(s): GitHub Insights | <ul><li>DONE Number of active branches - should be far less than the number of engineers on the team.</li><ul><li>Once a change is merged into main delete topic branches locally and on remote.</li></ul><li>DONE Age of open branches - other than main - branch life should be measured in minutes and hours not days.</li><li>DONE PR Duration - life cycle should be measured in minutes and hours not days</li></ul> | <ul><li>How to leverage network insights to show commits to main over time like GitHub Insights does? </li></ul> |
| **Small Stories**<br>Source(s): JIRA | <ul><li>Cycle time in JIRA from In Progress (work started) to Done (work complete) - start out by targeting 1 story per engineer per business day (3 days max) until you find the right pace for your team.</li><li>Track average and standard deviation of cycle time.</li><li>Log the WIP</li></ul> | |
| **Team Ownership of Quality**<br>Source(s): CodeClimate | <ul><li><b>Unit Testing (TDD)</b></li><li>DONE Code Climate - Unit Test code coverage - target 80% for net new code</li><li>Cyclomatic Complexity - I’m not sure this is being calculated by CodeClimate, rather this is more of a feature of SonarQube</li><li>Technical Debt Ratio</li></ul> | <ul><li>For existing code bases (mono-repos) where multiple teams are pushing code changes, start by measuring and gating on net new code changes.</li></ul> |
| **Build in Security**<br>Source(s): Synk | <ul><li>Snyk - Number of vulnerabilities over time - Critical & High.</li><li>MTTR on Critical and High - Identified to remediated</li><li><b>Critical</b> should be resolved in ~ 14 days</li><li><b>High</b> should be resolved in 30 - 45 days.</li><li>Date of discovery of CVE not date of identified by Snyk</li><li>Fixed vs opened ratios of issues.</li><li>Running summary from the last 30 days, fixed vulns, (newly) reported, ignored (what are they choosing not to fix)</li></ul> | |
| **Pair Programming**<br>Source(s): GitHub | <ul><li>Co-Authored commits</li><li>Huddles</li><li>Open channel communication</li></ul> | |
| **Automated Deployment**<br>Source(s): CircleCI | <ul><li>From pushing a code change, an automated build process provides feedback that the build is production-deployable in minutes.</li><li><b>Pipeline MTTR</b> - when you have a failed build what’s the time to recover</li><ul><li>The main branch is your production candidate branch and should be in good running order to facilitate frequent production deployments.</li></ul></ul> | |
| **Fast Automated Builds**<br>Source(s): CircleCI | <ul><li>From pushing a code change, an automated build process provides feedback that the build is production-deployable in minutes.</li><li><b>Pipeline Duration by Stage</b> - Can be pulled from CircleCI api target < 10 from commit to deploy anything more is not fast feedback.</li></ul> | |
| **Build for Production**<br>Source(s): DataDog? | <ul><li>Definition of done for a feature includes at minimum:</li><ul><li>ensuring that the application is observable and supportable in production</li><li>logs, traces, and metrics are available and useful</li><li>monitoring and alerts are configured</li><li>on-call team members are prepared to respond quickly to any failures or outages (e.g. production access, runbooks in place)</li></ul></ul> | |
