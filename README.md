
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- README.md is generated from README.Rmd. Please edit that file -->

A series of meetups about building and publishing interactive
applications in R.

## Syllabus

We’ll loosely follow the book [Mastering
Shiny](https://mastering-shiny.org/) by Hadley Wickham. Each item in
this syllabus corresponds to a meetup and a GitHub
[release](https://github.com/2DegreesInvesting/ds.shiny/releases) that
preserves a snapshot of this repository exactly as it was shown during
thee meetup.

### Your first Shiny app

This meetup mostly covers [Chapter
1](https://mastering-shiny.org/basic-app.html): Your first Shiny app:

Objective:

-   Understand what are the major pieces of an app and how they fit
    together.

### A use case of a shiny app for 2DII

This meetup takes a step back to motivate the use of shiny by showing a
use case of a shiny app for 2DII. From the many reasons why people use
shiny, this meetup covers only one – for more see the
[Preface](https://mastering-shiny.org/preface.html) of [Mastering
Shiny](https://mastering-shiny.org/).

Objective:

-   Understand why people use shiny via a concrete example.

### Basic UI and Basic reactivity

This meetup covers key elements of the section [Basic
UI](https://mastering-shiny.org/basic-ui.html) and an introduction to
[Basic reactivity](https://mastering-shiny.org/basic-reactivity.html) –
which we’ll follow in later meetups.

Objective:

-   Understand the common structure of the input and output functions.
-   Understand the mapping between output and render functions.
-   Extract duplication in a `render()` functions.

### Basic reactivity

This meetup covers key elements of the section [Basic
reactivity](https://mastering-shiny.org/basic-reactivity.html).

Objective:

-   Understand the `input` and `output` arguments to the `server()`
    function.
-   Understand key properties of reactive programming.
-   Interpret a reactive graph with inputs, reactive expressions, and
    outputs.

### Basic reactivity (continued)

This meetup covers key elements of the section [Basic
reactivity](https://mastering-shiny.org/basic-reactivity.html) that we
did not have time to cover in the previous meetup.

Objective:

-   Understand how inputs and outputs are connected using a reactive
    graph.
-   Create a reactive graph with reactlog.
-   Understand why reactive expressions are important.

### Workflow

This meetup is the fist one in the section “Shiny in action”. It covers
key topics about “workflow” from [chapter
5](https://mastering-shiny.org/action-workflow.html) and [section
20.2.1](https://mastering-shiny.org/scaling-packaging.html#workflow).

Objectives:

-   Insert the skeleton of an app using RStudio template project and
    app.
-   Learn the basic development workflow using the keyboard and reload.
-   Control the view.
-   Run the app in a background job.
-   Learn the workflow when the app lives in an R package.

### Debugging

This meetup covers tools to debug shiny apps, or more generally, ways to
explore what might be wrong with your app. The content and ideas loosely
come from from the sections
[Debugging](https://mastering-shiny.org/action-workflow.html#debugging),
[Getting
help](https://mastering-shiny.org/action-workflow.html#getting-help),
and [Reactive
programming](https://mastering-shiny.org/reactive-motivation.html#reactive-programming-1)
of [Mastering shiny](https://mastering-shiny.org/),

We’ll debug an app that exposes the main three types of problems you may
have: \* You get an unexpected error. \* You don’t get any errors, but
some value is incorrect. \* All the values are correct, but they’re not
updated when you expect.

Objectives:

-   Read a traceback.
-   Debug any code with `browser()` for a single set of inputs.
-   Debug server code with `message()` as you change inputs from the
    apps’ UI.
-   Use `shiny::reactiveConsole(TRUE)` to interact with server code
    outside an
-   Constrain the bug to a smaller section of code. app.

### Next (tentative)

-   Shiny in action
    -   Selected topics across multiple meetups.
-   Best practices
    -   Selected topics across multiple meetups.

### Resources

-   <https://mastering-shiny.org/index.html>
-   <https://shiny.rstudio.com/tutorial/>
-   <https://www.shinyapps.io/>
