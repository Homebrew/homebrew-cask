# Maintaining Homebrew-cask

__vv NOTE - DRAFT DOC! vv__

This doc is just at a starting point. The maintainers team will be
collaborating on it and we'll remove this header when we feel like it's stable.

__^^ NOTE - DRAFT DOC! ^^__

As a relatively large open source project with plenty of daily activity,
homebrew-cask requires regular care and feeding. This includes reviewing and
merging PRs, diagnosing bugs, improving documentation, discussing project policy
and features, and plenty more!

This responsibility is shared by @caskroom/maintainers - a team of humans
spanning the globe each of whom has agreed to dedicate some of their spare time
to helping our dear users. What a kind and friendly bunch they must be! (It's
true, they are.)

As the project matures and grows, so does the team of maintainers. It's
becoming more and more important to write down things that once were done
ad-hoc.

So here is where we are gathering details about how we maintain the project.

## Things we focus on

 * We favor the user above all.
 * Any user that submits a PR to our little old project is solid gold - we do
   everything we can to make sure they have a good experience and that their
   work is appreciated.
 * Friendliness. In our minds, we are in a *friendliness contest* against
   other open-source projects. We want to be the nicest, most fun, most
   easygoing project in the universe.
 * Supporting each other. Help the other maintainers, and spread out the
   workload.

## Reviewing Incoming Casks

Casks are the lifeblood of this project, and they generate the most
maintenance-requiring activity on the project.

While we started as a tool for convenience, we're working on adding safety
and security to the list of things we do for our users. That means things
like verifying download URLs, working to figure out file checksums when
possible, *etc*.

__TODO__: Maybe one of our more active Cask reviewers can fill in the things
they look for in incoming Casks.

## Reviewing Core PRs

Occasionally we'll get submissions from users that fix bugs or add features to
homebrew-cask itself. There is a subset of our maintainers who are less
familiar with Ruby and prefer to leave these review to folks with more
experience with the language. This is AOK!

## Ideas for other things to include here

 * Productivity enhancing tips / tools / scripts that help with PR review, cask testing, etc
 * General policies
 * Documenting important decisions that have been made
 * Maybe some philosophical points about the project
