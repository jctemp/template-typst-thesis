#import "templates/proposal.typ": project
#import "metadata.typ": details

#show: body => project(details, body)

#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: red,
)[
  Before you start with your thesis, have a look at our guides on confluence! \ https://confluence.ase.in.tum.de/display/EduResStud/How+to+thesis
]

#set heading(numbering: none)
= Abstract
// TODO: Remove this block
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  *Abstract*
  
  - Provide a brief summary of the proposed work 
  - What is the main content, the main contribution?
  - What is your methodology? How do you proceed?
]

#set heading(numbering: "1.1")
= Introduction

// TODO: Remove this block
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  *Introduction*
  
  - Introduce the reader to the general setting 
  - What is the environment?
  - What are the tools in use?
]


= Problem

// TODO: Remove this block
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  *Problem description*
  
  - What is/are the problem(s)?
  - Identify the actors and use these to describe how the problem negatively influences them.
  - Do not present solutions or alternatives yet!
  - Present the negative consequences in detail

]


= Motivation

// TODO: Remove this block
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  *Thesis Motivation*
  
  - Outline why it is important to solve the problem
  - Again use the actors to present your solution, but don’t be to specific
  - Be visionary!
  - If applicable, motivate with existing research, previous work
]
#pagebreak(weak: true)

= Objective

// TODO: Remove this block
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  *Thesis Objective*
  
  - What are the main goals of your thesis?
]


= Schedule

// TODO: Remove this block
#rect(
  width: 100%,
  radius: 10%,
  stroke: 0.5pt,
  fill: yellow,
)[
  *Thesis Schedule*
  
  - When will the thesis Start (Always 15th of Month)
  - Create a rough plan for your thesis (separate the time in sprints with a length of 2-4 Weeks)
  - Each sprint should contain several work items - Again keep it high-level and make to keep your plan realistic
  - Make sure the work-items are measurable and deliverable
  - No writing related tasks! (e.g. ”Write Analysis Chapter”)
]

