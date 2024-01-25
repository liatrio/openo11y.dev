# Observing Human Systems

Many of us typically think of Observability in the context of observing a system of
software (e.g. a collection of microservices that form a single product). Some of the
advice provided herein describes how to observe a human system like teams or development
organizations. This is a much more sensitive activity. Open O11y offers these guiding
principles to observing human systems ethically.

## Building A Culture of Safely Being Observed

Many people don't like being watched. The act of being watched by another person can make
us feel uncomfortable, nervous, or many other emotions. It can cause us to wonder why we
are being watched and what the watcher is going to do. Observing human systems is subject
the same side effects. This is especially true when observations are misused.

*When observing human systems, it is critical to build a culture where individuals can
feel and **be** safe while being observed.*

### Employee Evaluations and Compensation

Being safely observed implies that employers should *not* use a specific set or subset of
telemetry for reviews, compensation adjustments, etc. If this is done, then the subset of
telemetry becomes very important to employees which inherently makes other telemetry less
important. This is a problem that can be avoided.

Similarly, telemetry should be a minimal or irrelevant factor in these events. Because
reviews and compensation are so impactful to employees, the use of telemetry data can
dramatically shift an employee's focus to optimizing telemetry data. While it may seem
like a positive change, optimizing telemetry often results in employees being less
effective contributors.

### Personal Telemetry

Telemetry data should only contain aggregated data for small or larger groups.
Observability over human systems should *not* gather telemetry from specific individuals.
This is a foundational requirement of being safely observed.

### Comparing Disparate Groups

Being safely observed also extends to cross-group evaluations. Every team has distinct
members, work responsibilities, personal responsibilities, opinions, etc. In other words,
every team is unique. Thus, some of the telemetry produced by observing any two teams will
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

## Using Telemetry In Different Roles

### Teams and Individual Contributors

These are the ideal candidates for using telemetry data. Teams and individuals should
observe themselves in to identify trends and establish their working norms. Once a
baseline is established, teams can then use telemetry to identify issues and strive to
improve individual and team performance.

### Secondary Contributors

Open O11y coined this term to describe roles that exist to organize, improve, or
facilitate the work of others. In the world of software development, this includes SCRUM
Masters, Project Managers, middle and upper management, and others.

Secondary contributors should generally *not* use telemetry to observe the teams they
support. Doing so offers limited benefits but can significantly damage the the
organizations culture of being safely observed.

### Direct Managers

In this context, a "direct manager" refers to any managers whose direct reports are
individual contributors. A direct manager can be an individual contributor, a secondary
contributor, or both. This also varies heavily within a single organization. These leaders
must be especially careful with how they use telemetry data. These team members must
constantly evaluate if they are observing their team or themselves as a part of that team.

These leaders should pay careful attention to reactions, team feedback, and changes in
team behaviors.
