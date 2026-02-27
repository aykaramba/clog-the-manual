# clog-the-manual
CLOG The Manual - a user manual for creating applications with CLOG

We need a solid user manual:

- Getting Started

1. Getting started with common Lisp (Loading sbcl on local machine, mobile or servers)
1. Setting up a dev environment using emacs or the builder (which allows for your work flow on a server)
1. Pointers to getting started quick with CL and CLOG
1. Package management OCICL and QuickLisp

- CLOG Application Creation

1. Basics - create-* patterns, properties and events
1. Using html to do layout and binding controls by id
1. Using panels - creating manually and with the builder, using panels as templates
1. Using html grides to layout panels
1. Using CSS affectively
1. Access control
1. Restoring sessions

- CLOG Application Delivery

1. Traditional Websites
1. Web application
1. Desktop applications
1. Mobile applications
1. Embedded devices

- Security and CLOG

Net security in general
Application security
https


STATUS: Nov 23, 2025
* Evaluating / testing documentation frameworks and approaches (presentation matters)
* Working on code examples that illustrate CLOG develooment patterns

STATUS: Nov 27, 2025
* Current top candidata is MkDocs with the Material theme: https://squidfunk.github.io/mkdocs-material/
* Looking for: As few markup features as possible and no fewer, nice layout, ease of deployment of system on client platforms.
* Long term goal: Support minimum amount of markdown on the github repo that can eventually be imported into a CLOG based wiki (already under development).
* Still need to do a bit of testing against Retext and other options.

STATUS: Dec 01, 2025
* Mkdocs + Material is probably the best choice.
* Right now "mkdoc serve" has a bug that does not allow for a served document to be automatically updated, this will cause anyone wanting to help great frustration
* The issue is with the latest "click" package that pip installs, as per: https://github.com/squidfunk/mkdocs-material/issues/8478
* The temp workaround is "mkdocs serve --livereload"
* This should be fixed soon. Setting up initial doc structure for testing locally now. Looking to make it look nice by default so users can just add docs just by adding some markdown.

STATUS: Dec 01, 2025
* Frist mockup MkDocs markdown collection of pages for look and feel testing is done.
* First MKDOCS --> GITHUB REPO --> GITHUB ACTIONS --> GITHUB PAGES automated deployment tested successfully.
* Conclusion: Users can write documentation using MkDocs tooling or using Githubs web interface. On commit to main branch an action is run and public website is automatically updated on Github Pages. Hosting the documentation on Github Pages is the simplest possible solution and it supports custom domains so if Rabbi Botton would like to setup https://docs.clogpower.com, we can get nice integration. We will need a set of tutorials dedicated just to the use of MkDocs based workflows on different platforms, in addition to all of the tutorials for Clog.
* Next Steps: Iterate through a few more test layouts, colour schemes etc, mockup a demo of the documenation for Rabbit Botton to approve before we begin the first set of tutorials.

STATUS: Dec 07, 2025
* Creating the first tutorial to test out markdown presentation capabilities.
* If this looks good, we will present documentation (with sample content only!) shortly.

STATUS: Dec 08, 2025
* I have uploaded a test repo for review: https://github.com/aykaramba/test4
* It publishes the site after each commit using Github actions here: https://aykaramba.github.io/test4/
* Created a cheat sheet for MkDocs + Material to demo the system, you can see it here: https://aykaramba.github.io/test4/doc-cheat-sheet/
* All other sections are place holders.
* Special features: relatively easy to use, minimal markup with maximum power, Github compatible, Github actions compatible.
* Next steps: fix up the theme colors to be CLOG official brand colors, have a conversation with Rabbi Botton about any changes or preferences he wants to see applied, then start building out the first Clog tutorial.
* Rabbi, please take a look and give me your initial thoughts.

STATUS: Dec 12, 2025
* I am busy this week.
* I did managed to test Zensical. There will be positive updates over the weekend.

STATUS: Dec 18, 2025
* Work has slown down, I have an external issue to pay attention to, will resolve shortly.
* Additional testing was done: Zensical is the superior replacement product but it is too young to have everyone easily collaborate (bug on Windows). MkDocs is compatible with Zensical and we will just use the default Material theme.

STATUS: Jan 05, 2026
* I am back working on the documentation. More updates this week.

STATUS: Feb 22, 2026
I have a sample documentation system up and running for you to review. Here is what you need to know:
1. Everything is here: https://github.com/aykaramba/test01
2. I have provided all of the information that you need in the README.md in the repo.
3. I have ACTION items for you at the bottom of the README.
Let me know if you have any questions or concerns. I will be watching my Github notifications.

Test
