# Observing Human Systems

Many of us typically think of Observability in the context of observing a system of
software (e.g. a collection of microservices that form a single product). Some of the
advice provided herein describes how to observe human systems like teams or development
organizations. This is a much more sensitive activity. Open O11y offers these guiding
principles to observing human systems ethically.

## Building A Culture of Being Safely Observed

Humans don't enjoy being watched, especially when observations are misused or directly
used for measuring performance. Misusing telemetry can have a net negative effect on human
systems and the individuals they are comprised of.

> Tell me how you measure me and I will tell you how I will behave. If you measure me in
> an illogical way, do not complain about illogical behavior.
> \- [Eli Goldratt](https://en.wikiquote.org/wiki/Eliyahu_M._Goldratt#The_Haystack_Syndrome_(1990))

*When observing human systems, it is critical to build a culture where individuals can
both feel and be safe while being observed.*

### Employee Evaluations and Compensation

Being safely observed implies that employers ***must not*** use telemetry for reviews,
compensation adjustments, employment decisions, etc. Because reviews and compensation are
so impactful to employees, the use of telemetry data can dramatically shift an employee's
focus to optimizing telemetry data. If employers misuse telemetry, then employees are
negatively impacted and using telemetry to improve becomes unimportant. While it may seem
like a positive change, optimizing telemetry often results in employees being less
effective contributors. This is a problem that can be avoided.

### Individual Telemetry

Telemetry data ***must*** only contain aggregated data for systems (groups) of people.
Observability over human systems ***must not*** gather telemetry from specific
individuals. This is a foundational requirement of being safely observed.

### Comparing Disparate Groups

Being safely observed also extends to cross-group evaluations. Every team has distinct
members, work responsibilities, personal responsibilities, opinions, etc. Every human
system is unique. Thus, some of the telemetry produced by observing any two teams will
differ naturally.

The Agile Framework provides a useful example with the nature of `story points` in
software development. As a unit of measurement, the value of a story point is defined by
each team. Thus, comparing story points across teams isn't valuable.

This is not inherently a problem. Yet, it does require us to be selective when comparing
data across disparate groups. Considering the story points example, it is unreasonable to
compare story points "completed" over a given time period between multiple teams. However,
it may be reasonable to compare the `story points planned / story points completed`
between multiple teams as an unusually low or high ratio may indicate a planning and/or
capacity issue.

> Don't ask people to collaborate if they know that, in the end, there will be a winner
> and a loser.
> \- [Bertrand Duperrin](https://www.duperrin.com/english/2014/06/23/quote-tell-how-you-measure-and-i-will-tell-you-how-i-will-behave/)

## Using Telemetry In Different Roles

### Teams and Individual Contributors

These are the ideal candidates for using telemetry data. Teams and individuals ***must***
observe themselves to identify trends and establish their working norms. Once a baseline
is established, teams can then use telemetry to identify issues and strive to improve
individual and team performance based on an established set of engineering principles.

### Secondary Contributors

Open O11y uses this term to describe roles that exist to organize, improve, or facilitate
the work of others. In the world of software development, this includes SCRUM Masters,
Project Managers, middle and upper management, and others.

Secondary contributors ***must not*** use telemetry to observe the teams they support.
Doing so offers limited benefits but can significantly damage the the organizations
culture of being safely observed.

### Direct Managers

In this context, a "direct manager" refers to any managers whose direct reports are
individual contributors. A direct manager can be an individual contributor, a secondary
contributor, or both. This also varies heavily within a single organization. These leaders
***must*** be especially careful with how they use telemetry data. These team members
***must*** constantly evaluate if they are observing their team or themselves as a part of
that team.

These leaders ***must*** pay careful attention to reactions, team feedback, and changes in
team behaviors.
