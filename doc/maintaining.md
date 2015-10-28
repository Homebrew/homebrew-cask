# Maintaining Homebrew-cask

__vv NOTE - DRAFT DOC! vv__

This doc is just at a starting point. The maintainers team will be collaborating on it and we’ll remove this header when we feel like it’s stable.

__^^ NOTE - DRAFT DOC! ^^__

As a relatively large open source project with plenty of daily activity, homebrew-cask requires regular care and feeding. This includes reviewing and merging PRs, diagnosing bugs, improving documentation, discussing project policy and features, and plenty more!

This responsibility is shared by @caskroom/maintainers - a team of humans spanning the globe each of whom has agreed to dedicate some of their spare time to helping our dear users. What a kind and friendly bunch they must be! (It’s true, they are.)

As the project matures and grows, so does the team of maintainers. It’s becoming more and more important to write down things that once were done ad-hoc.

So here is where we are gathering details about how we maintain the project.

## Things we focus on

* We favor the user above all.
* Any user that submits a PR to our little old project is solid gold - we do everything we can to make sure they have a good experience and that their work is appreciated.
* Friendliness. In our minds, we are in a *friendliness contest* against other open-source projects. We want to be the nicest, most fun, most easygoing project in the universe.
* Supporting each other. Help the other maintainers, and spread out the workload.

## Reviewing Incoming Casks

Casks are the lifeblood of this project, and they generate the most maintenance-requiring activity on the project.

While we started as a tool for convenience, we’re working on adding safety and security to the list of things we do for our users. That means things like verifying download URLs, working to figure out file checksums when possible, *etc*.

__TODO__: Maybe one of our more active Cask reviewers can fill in the things they look for in incoming Casks.

## Labels

Every open issue and pull request must have a label added to it, unless the maintainer immediately acts on it (closing/merging) after looking at it. Labels should be consistent across repositories: not every repository needs every label, but their meaning and color must be the same throughout. Currently, our labels are:

Label | Description | Issues | Pull Requests
----- | ----------- | :----: | :-----------:
**bug** | Something isn’t working as expected. A modification/addition/removal. Must always be accompanied by **cask** or **core** | &#x2713; | &#x2713;
**cask** | Relates directly to a cask. Must always be accompanied by **bug** or **enhancement**. | &#x2713; | &#x2713;
**cask request** | Either a request for a new cask or a call for correction in an existing one. | &#x2713; |
**chief bug** | When multiple people open new issues for the same bug, the main issue where its progression is being tracked should have this label. Every other one should be marked **duplicate** and closed. | &#x2713; |
**core** | Relates directly to the code of the core, homebrew-cask itself. Must always be accompanied by **bug** or **enhancement**. | &#x2713; | &#x2713;
**discussion** | A matter that benefits from discussion before a decision is to be made. Any opinion should be given by users and maintainers alike, even if that opinion is “I have no strong feelings on the matter”. | &#x2713; |
**documentation** | Relates to the documentation. | &#x2713; | &#x2713;
**duplicate** | An issue or pull request that is essentially the same as another. Should be immediately closed. | &#x2713; | &#x2713;
**enhancement** | Something we want implemented. Must always be accompanied by **cask** or **core**. | &#x2713; | &#x2713;
**future** | Something that can currently only be referenced and will only be possible to act upon in the future, after certain conditions are met. Currently references [changes to the installation behaviour](https://github.com/caskroom/homebrew-cask/issues/13201). To be used sparingly. | &#x2713; | &#x2713;
**meta** | Relates to homebrew-cask itself as a project and its policies/decisions. | &#x2713; |
**on hold** | A pull request that depends on another being merged before it itself can be as well. |  | &#x2713;
**roadmap** | Roadmap for feature implementation. | &#x2713; |
**ready to implement** | Usually accompanied by the closing of a **discussion** issue. It succinctly describes in points the implementation of something yet to be written, be it a feature or a documentation section. Anyone looking at such an issue can safely ignore every post following the top one, as it should always be kept up-to-date with the discussion. | &#x2713; |
**travis** | Bug related to [Travis CI](https://travis-ci.org/). Must always be accompanied by **bug** or **enhancement**. | &#x2713; | &#x2713;
**upstream** | Something we have no hand in, and can only be fixed with intervention from developers outside homebrew-cask. Always refers to a cask, and never to the core. | &#x2713; | &#x2713;
**awaiting maintainer feedback** | A maintainer requires input from other maintainers to proceed. Other maintainers should occasionaly check this label and give their feedback on the subject, if able. | &#x2713; | &#x2713;
**awaiting user reply** | A maintainer requires further action or information from the original poster to proceed. Particularly useful to weed out those cases where issues and pull requests would otherwise be left open indefinitely because the original poster never replies. | &#x2713; | &#x2713;

## Reviewing Core PRs

Occasionally we’ll get submissions from users that fix bugs or add features to homebrew-cask itself. There is a subset of our maintainers who are less familiar with Ruby and prefer to leave these review to folks with more experience with the language. This is AOK!

## Ideas for other things to include here

* Productivity enhancing tips / tools / scripts that help with PR review, cask testing, etc.
* General policies.
* Documenting important decisions that have been made.
* Maybe some philosophical points about the project.
