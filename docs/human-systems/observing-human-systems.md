# Safely Observing Human Systems

## RFC 2119

Open O11y has very strong opinions on how to observe human systems ethically. While
acknowledging it is social advice, this guidance is considered a specification. Thus, we
use certain keywords in accordance with [RFC 2119](https://www.ietf.org/rfc/rfc2119.txt).

## Guiding Principles

Many of us typically think of Observability in the context of observing a system of
software (e.g. a collection of microservices that form a single product). Some of the
advice provided herein describes how to observe human systems like teams or development
organizations. This is a much more sensitive activity. Open O11y offers these guiding
principles to observing human systems ethically.

1. When observing human systems, individuals ***MUST*** feel and be safe while being
  observed.
2. Telemetry data ***MUST*** be anonymized and/or aggregated to protect the privacy of the
  individuals.
3. Leadership, and the organization as a whole, ***MUST*** proactively protect against the
  misuse of telemetry.
4. The gathering and use of telemetry ***MUST*** be excessively transparent[^1] to all
  human systems impacted by the telemetry.
5. Human evaluations and compensation ***MUST NOT*** rely on the telemetry data listed
  within Open o11y.
6. When observing human systems, observers ***MUST*** continuously reevaluate the health
  and safety of the people and culture.
7. Secondary contributors ***MUST NOT*** use telemetry to measure the teams they support
  in any way that violates these principles.
8. Groups within a human system ***MUST NOT*** be compared to others in any way that
  violates these principles.
9. You ***MUST NOT*** be an A$$hole[^2]

----

## Building A Culture of Being Safely Observed

Humans don't enjoy being watched, especially when observations are misused or directly
used for measuring performance. Misusing telemetry can have a net negative effect, eroding
trust in human systems and the individuals they are comprised of.

> Tell me how you measure me and I will tell you how I will behave. If you measure me in
> an illogical way, do not complain about illogical behavior  
> \- Eli Goldratt[^as81]

*When observing human systems, it is critical to build a culture where individuals can
both feel and be safe while being observed.*

### Employee Evaluations and Compensation

Being safely observed requires that employers ***MUST NOT*** use telemetry for reviews,
compensation adjustments, employment decisions, etc. Because reviews and compensation are
so impactful to employees, the use of telemetry data can dramatically shift an employee's
focus to optimizing telemetry data. If employers misuse telemetry, then employees are
negatively impacted and using telemetry to improve becomes unimportant. While it ***MAY***
seem like a positive change, optimizing telemetry often results in employees being less
effective contributors. This is a problem that can be avoided.

### Individual Telemetry

Telemetry data ***MUST*** only contain aggregated data for systems (groups) of people.
Observability over human systems ***MUST NOT*** gather telemetry from specific
individuals. This is a foundational requirement of being safely observed.

### Comparing Disparate Groups

Being safely observed also extends to cross-group evaluations. Every team has distinct
members, work responsibilities, personal responsibilities, opinions, etc. Every human
system is unique. Thus, some of the telemetry produced by observing any two teams will
differ naturally.

The Agile Framework provides a useful example with the nature of `story points` in
software development. As a unit of measurement, the value of a story point is defined by
each team. Thus, giving story points are relative, comparing story points across teams
isn't valuable.

This is not inherently a problem. Yet, it does require us to be selective when comparing
data across disparate groups. Considering the story points example, it is unreasonable to
compare story points "completed" over a given time period between multiple teams. However,
it ***MAY*** be reasonable to compare the `story points planned / story points completed`
between multiple teams as an unusually low or high ratio could indicate a planning and/or
capacity issue.

> Don't ask people to collaborate if they know that, in the end, there will be a winner
> and a loser  
> \- Bertrand Duperrin[^5]

----

## Using Telemetry In Different Roles

### Teams and Individual Contributors

These are the ideal candidates for using telemetry data. Teams and individuals
***SHOULD*** observe themselves to identify trends and establish their working norms. Once
a baseline is established, teams ***SHOULD*** then use telemetry to identify issues and
strive to improve individual and team performance based on an established set of
engineering principles.

### Secondary Contributors

Open O11y uses this term to describe roles that exist to organize, improve, or facilitate
the work of others. In the world of software development, these roles commonly include,
but are not limited to, SCRUM Masters, Project Managers, Product Owners, and Management.
Secondary contributors ***SHOULD NOT*** use telemetry to observe the teams they support.
Doing so offers limited benefits but can significantly damage the the organizations
culture of being safely observed.

Senior Leadership ***MAY*** use this telemetry to solve a particular business case in the
context of organizational transformation. Senior Leadership ***MUST*** ensure the use of
this telemetry is done in a manner that promotes a safe working environment and culture.
See [Gathering and Using Telemetry](#gathering-and-using-telemetry) for specifications on
cultural use of telemetry.

Senior Leadership ***MAY*** involve lower levels of leadership and management in the above
exception, particularly with respect to Direct Managers whose direct reports are
individual contributors. These leaders ***MUST*** be especially careful with how they use
telemetry data. These team members ***MUST*** constantly evaluate if they are observing
their team or themselves as a part of that team.

All leaders ***MUST*** pay careful attention to reactions, team feedback, and changes in
team behaviors.

----

## Gathering And Using Telemetry

When gathering and using telemetry, organizations ***MUST*** must respect the [Guiding
Principles](#guiding-principles). The following list of actions can help ensure that
leaders do not compromise the trust and safety of their organization while gathering and
using telemetry data.

1. **Transparency in Data Collection:** Leadership ***MUST*** clearly advertise what
   telemetry data is being collected and why. The purpose and benefits of the data
   collection ***MUST*** be communicated openly to all groups.
2. **Purposeful Use:** Telemetry data ***MUST*** only be used for the openly communicated
   purposes. These purposes ***MAY*** be aligned with organizational goals such as
   improving productivity, identifying bottlenecks, enhancing efficiency, and fostering a
   culture of continuous improvement. However, the use of this telemetry data ***MUST
   NOT*** violate any [Guiding Principles](#guiding-principles).
3. **Data Privacy and Security:** The implementing organization ***MUST*** implement
   robust data security measures to protect telemetry data and respect privacy. This data
   ***MUST*** be anonymized and ***MUST NOT*** contain any PII[^3].
4. **No Misuse:** Telemetry data ***MUST NOT*** be used for punitive measures. Instead, it
   ***SHOULD*** be used for constructive feedback, learning, and growth.
5. **Feedback Mechanism:** Leadership ***MUST*** provide opportunities for team members to
   share their concerns or suggestions about how telemetry is collected and used. This
   helps in building trust and making improvements based on feedback.

[^1]: Transparent - Characterized by visibility or accessibility of information especially
concerning business practices. [Merriam Webster - Transparent](https://www.merriam-webster.com/dictionary/transparent)

[^2]: [The No A$$hole Rule](https://www.merriam-webster.com/dictionary/transparent)

[^3]: [Personal Identifiable Information](https://www.dol.gov/general/ppii)

[^as81]: [Eliyahu Goldratt](https://en.wikiquote.org/wiki/Eliyahu_M._Goldratt#The_Haystack_Syndrome_(1990))

[^5]: [Bertrand Duperrin](https://www.duperrin.com/english/2014/06/23/quote-tell-how-you-measure-and-i-will-tell-you-how-i-will-behave/)
