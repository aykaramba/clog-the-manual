
# Test documentation system for the Common Lisp Omnificent GUI

This an initial test environment of the CLOG documentation project. The purpose of this repo is to test out the documentation solution and workflow that might work best for the ongoing support and development of the CLOG project. The solution is mostly filled with placeholder documents, however, the look/feel and behaviour of the implementation is ready for your review and consideration.

## Testing of available solutions and conclusion.

I tested out a number of documentation technologies and tried to pick one that:

- Minimizes the required markup labour and knowledge.
- Maximizes presentation features and layout styling with the simplest technology possible.
- It has to be something that the community can live with on a long term basis, it cannot have too many annoying edge cases or weird behaviours.
- The technology has to be easy to install, operate and maintain locally for any ongoing contributors.

This documentation project uses the Zensical documentation software (https://zensical.org/). It strikes the most ergonomic balance between technology, ease of use and aesthetics for us.

## What this is not.

This is just a testing environment to gather feedback and give us a chance for tweaks and adjustments.  When Rabbi Botton approves this, I will push this to the official repo and we can continue building the documentation in the official repo.

## Where is documentation located, how do I see it?

The repo is here (obviously): https://github.com/aykaramba/test01

The documentation website is here: https://aykaramba.github.io/test01/

The repo automatically generates the Github pages using a Github action.

## What are the plans for the documentation project:

I looked at various options, but for starters, the easiest solution is as follows:

- Use Zensical to manage and generate the documentation.
- Use Github for the repo (obviously).
- Use Github Pages to host the official documentation.  

Here is how it works: 

- I have a local Zensical instance to manage the documentation (easy to setup). 
- I create the documentation locally and push to the Gihub repo. 
- Github  has an action that automatically generates the Github pages documenation. The action is triggered when documentation is pushed to the repo.

This is probably the simplest and easiest way to manage documentation and publish it to a target. Zensical generates actual files that can be published on a normal server, so when we are ready to host the documentation on https://clogpower.com, we can make the switch at any time.

## Worfklow

My initial thoughts are as follows:

OPTION 1 - Direct editing of the *.md files using the Github web interface. The lowest friction option.

OPTION 2 - Normal local repo and use Zensical + an editor to edit *.md files so contributors have a live preview of their changes locally before a pull request.

I dont think we need staging areas or anything like that for now. I will keep on building out the *Documentation Quickstart* section so users have clear instructions on how to collaborate with the documentation project should they want to, including setting up Zensical localy, using it and suggestions on workflow for users.


## Pros and Cons 

There are all kinds of pros and cons with hosting documentation on Github pages. On the one hand, it's free, easy and automated, on the other using video is a problem as you can only use video embedded into pages using the Github web interface.

One day we will host this on CLOG servers, but for now this is probably sufficient. When https://clogpower.com is updated, we can just link directly to the Gihub Pages as official documentation for now.


## Special Note

Please take a look at the *Documentation Quickstart* section. It is the most complete. It includes default documents provided by the system to get editors up and running quickly with markdown and information about the documentation project, goals and so forth. That will give you a good sense of what ***REAL*** documentation would look like if it had actual content.

The documentation website STRUCTURE is the actual structure that I would like to see for the site, although it isn't set in stone and we can move things around and merge some of the main tabs at the top. The rest of the content on the site is mostly either placeholder documents that need to be created or a copy / paste of existing documentation from the CLOG repo that needs to be edited and put in the correct part of the new CLOG manual. However, the actual menu and section structure is what I am proposing that we consider building out as best as we can. I think we should just go live with this skeleton configuration and just build it out day by day, page by page.

Feel free to drill down as far as you want and to comment with as much detail as you like.  The more detail the better.


# ACTION ITEMS

Rabbi Botton, I need the following:

1. Please review all of the above and provide feedback in the discussion forum for the repo here: https://github.com/aykaramba/test01/discussions
2. If you want to have a web conference and meet to discuss any concerns or issues, happy to make my self available. Let me know if you want to chat.
3. Ultimately, I need your approval to go live with this documentation skeleton. I want to push it to your official repo, keep on tweaking it until everyone is happy and then make some announcements to the community.

I look forward to your feedback.

Thanks! 