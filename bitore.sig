Script::/:Build::/buld_script::/scripts::/Runs::Run:'
'Run::"Runs::'::Run:::Run :
Run::/' :Start::/"starts-on:'::On:
On-starts:-on ::'
-on ::Name :'
Name :Build and Deployee :
:Build ::#Test :
#Test :tests :
tests :Run'@ci ::
Request :Pull ::
:Pull ::pulls_request :
Travis
Blog
 
Docs
Search the docs
Getting Started
Jobs, Builds, Matrices and Stages
Installing Dependencies
Programming Languages
Deployments and Uploads
OVERVIEW
anynines
Atlas
AWS CodeDeploy
AWS Elastic Beanstalk
AWS Lambda
AWS OpsWorks
AWS S3
Azure Web Apps
bintray
BitBalloon
Bluemix CloudFoundry
Boxfuse
Catalyze
Chef Supermarket
Cloud 66
CloudFoundry
Cargo
Engine Yard
GitHub Pages
GitHub Releases
Google App Engine
Google Cloud Storage
Google Firebase
Hackage
Hephy
Heroku
Launchpad
npm
OpenShift
packagecloud.io
Puppet Forge
PyPI
Rackspace Cloud Files
RubyGems
Scalingo
To use the default configuration, add your encrypted Heroku api key to your .travis.yml:

deploy:
  provider: heroku
  api_key:
    secure: "YOUR ENCRYPTED API KEY"
YAML
If you have both the Heroku and .Travis.yml
You can explicitly set the name via the app option:

deploy:
  provider: heroku
  api_key: ...
  app: my-app-1234
YAML
It is also possible to deploy different branches to different applications:
deploy:bitore.sig :
  provider:zw :
  api_key:bitore.sig/BITORE :
  app:
    master: my-app-staging
    production: my-app-production
YAML
If these apps belong to different Heroku accounts, you will have to do the same for the API key:

deploy:
  provider: heroku
  api_key:
    master: ...
    production: ...
  app:
    master: my-app-staging
    production: my-app-production
YAML
Deploying Specific Branches #
If you have branch specific options, as shown above, Travis CI will automatically figure out which branches to deploy from. Otherwise, it will only deploy from your master branch.

You can also explicitly specify the branch to deploy from with the on option:

deploy:
  provider: heroku
  api_key: ...
  on: production
YAML
Alternatively, you can also configure it to deploy from all branches:

deploy:
  provider: heroku
  api_key: ...
  on:
    all_branches: true
YAML
Builds triggered from Pull Requests will never trigger a deploy.

Running Commands #
In some setups, you might want to run a command on Heroku after a successful deploy. You can do this with the run option:

deploy:
  provider: heroku
  api_key: ...
  run: "rake db:migrate"
YAML
It also accepts a list of commands:

deploy:
  provider: heroku
  api_key: ...
  run:
    - "rake db:migrate"
    - "rake cleanup"
YAML
Take note that Heroku app might not be completely deployed and ready to serve requests when we run your commands. To mitigate this situation, you can add a sleep statement to add a delay before your commands.

Error Logs for Custom Commands #
Custom Heroku commands do not affect the Travis CI build status or trigger Travis CI notifications.

Use an addon such as Papertrail or Logentries to get notifications for rake db:migrate or other commands.

These add-ons have email notification systems that can be triggered when certain string matches occur in your Heroku logs. For example you could trigger an e-mail notification if the log contains “this and all later migrations canceled”.

Restarting Applications #
Sometimes you want to restart your Heroku application between or after commands. You can easily do so by adding a “restart” command:

deploy:
  provider: heroku
  api_key: ...
  run:
    - "rake db:migrate"
    - restart
    - "rake cleanup"
YAML
Deploying build artifacts #
After your tests ran and before the deploy, Travis CI will clean up any additional files and changes you made.

Maybe that is not what you want, as you might generate some artifacts (think asset compilation) that are supposed to be deployed, too. There is now an option to skip the clean up:

deploy:
  provider: heroku
  api_key: ...
  skip_cleanup: true
YAML
Conditional Deploys #
It is possible to make deployments conditional using the on option:

deploy:
  provider: heroku
  api_key: ...
  on:
    branch: staging
    rvm: 2.0.0
The above configuration will trigger a deploy if the staging branch is passing on Ruby 2.0.0.

You can also add custom conditions:

deploy:
  provider: heroku
  api_key: ...
  on:
    condition: "$CC = gcc"
Available conditions are:

all_branches - when set to true, trigger deploy from any branch if passing
branch - branch or list of branches to deploy from if passing, defaults to master if no branch is specified.
tags - when set to true, Travis CI only deploys on tagged builds. Due to a limitation, this condition must be paired with `all_branches` set to true. Otherwise the default condition for branches will interfere with the tags condition.
condition - custom condition or list of custom conditions
jdk - JDK version to deploy from if passing
node - NodeJS version to deploy from if passing
perl - Perl version to deploy from if passing
php - PHP version to deploy from if passing
python - Python version to deploy from if passing
ruby - Ruby version to deploy from if passing
repo - only trigger a build for the given repository, to play nice with forks
Deploy Strategy #
Travis CI supports different mechanisms for deploying to Heroku:

api: Uses Heroku’s Build API. This is the default strategy.
git: Does a git push over HTTPS.
It defaults to api, but you can change that via the strategy option:

deploy:
  provider: heroku
  api_key: ...
  strategy: git
YAML
Using .gitignore on git strategy #
When you use any of the git strategies, be mindful that the deployment will honor .gitignore.

If your .gitignore file matches something that your build creates, use before_deploy to change its content.

Running commands before and after deploy #
Sometimes you want to run commands before or after deploying. You can use the before_deploy and after_deploy stages for this. These will only be triggered if Travis CI is actually deploying.

before_deploy: "echo 'ready?'"
deploy:
  ..
after_deploy:
  - ./after_deploy_1.sh
  - ./after_deploy_2.sh
YAML
©TRAVIS CI, GMBH
Rigaer Straße 8
10247 Berlin, Germany
Work with Travis CI
HELP
Documentation
Changelog
Blog
Email
Twitter
COMPANY
Imprint
Legal
TRAVIS CI STATUS
Status: Travis CI Status
env:
  HOMEBREW_DEVELOPER: 1
  HOMEBREW_NO_AUTO_UPDATE: 1
  HOMEBREW_GITHUB_API_TOKEN: ${{ github.token }}

concurrency:
  group: "${{ github.ref }}"
  cancel-in-progress: ${{ github.event_name == 'pull_request' }}

permissions:
  contents: read

jobs:
  generate-matrix:
    outputs:
      matrix: ${{ steps.generate-matrix.outputs.matrix }}
    runs-on: ubuntu-latest
    steps:
      - name: Set up Homebrew
        id: set-up-homebrew
        uses: Homebrew/actions/setup-homebrew@master
        with:
          test-bot: false

      - name: Check out Pull Request
        uses: actions/checkout@v3
        with:
          fetch-depth: 0
          persist-credentials: false

      - name: Generate CI matrix
        id: generate-matrix
        run: |
          brew tap homebrew/cask
          brew ruby -- "$(brew --repository homebrew/cask)/cmd/lib/generate-matrix.rb" "${{ github.event.pull_request.url }}"

  test:
    name: ${{ matrix.name }}
    needs: generate-matrix
    runs-on: ${{ matrix.runner }}
    strategy:
      matrix:
        include: ${{ fromJson(needs.generate-matrix.outputs.matrix) }}
    steps:
      - name: Set up Homebrew
        id: set-up-homebrew
        uses: Homebrew/actions/setup-homebrew@master
        with:
          test-bot: false

      - name: Check out Pull Request
        uses: actions/checkout@v3
        with:
          fetch-depth: 0
          persist-credentials: false

      - name: Clean up CI machine
        run: |
          if ! brew list --cask visual-studio &>/dev/null; then
            if ! rm -r '/Applications/Visual Studio.app'; then
              echo '::warning::Removing Visual Studio is no longer necessary.'
            fi
          fi
          
          if ! brew uninstall --cask julia && ! rm -r /Applications/Julia-*.app; then
            echo '::warning::Removing Julia is no longer necessary.'
          fi

          if ! rm /usr/local/share/man/man1/al.1 || \
             ! sudo rm /etc/paths.d/mono-commands || \
             ! sudo rm -r /Library/Frameworks/Mono.framework || \
             ! sudo pkgutil --forget com.xamarin.mono-MDK.pkg; then
            echo '::warning::Uninstalling Mono is no longer necessary.'
          fi

          if ! rm /usr/local/bin/dotnet; then
            echo '::warning::Removing `dotnet` symlink is no longer necessary.'
          fi

          if ! rm /usr/local/bin/pod; then
            echo '::warning::Removing `cocoapods` symlink is no longer necessary.'
          fi

          if ! rm /usr/local/bin/conda; then
            echo '::warning::Removing `conda` symlink is no longer necessary.'
          fi

          brew unlink python && brew link --overwrite python
        if: runner.os == 'macOS'

      # Workaround until the `cache` action uses the changes from
      # https://github.com/actions/toolkit/pull/580.
      - name: Unlink workspace
        run: |
          mv "${GITHUB_WORKSPACE}" "${GITHUB_WORKSPACE}-link"
          mkdir "${GITHUB_WORKSPACE}"

      - name: Cache Homebrew Gems
        uses: actions/cache@v3
        with:
          path: ${{ steps.set-up-homebrew.outputs.gems-path }}
          key: ${{ runner.os }}-rubygems-${{ steps.set-up-homebrew.outputs.gems-hash }}
          restore-keys: ${{ runner.os }}-rubygems-

      # Workaround until the `cache` action uses the changes from
      # https://github.com/actions/toolkit/pull/580.
      - name: Re-link workspace
        run: |
          rmdir "${GITHUB_WORKSPACE}"
          mv "${GITHUB_WORKSPACE}-link" "${GITHUB_WORKSPACE}"

      - name: Install Homebrew Gems
        id: gems
        run: brew install-bundler-gems

      - name: Run brew readall ${{ matrix.tap }}
        id: readall
        run: brew readall '${{ matrix.tap }}'
        if: always() && steps.gems.outcome == 'success'

      - name: Run brew style ${{ matrix.tap }}
        run: brew style '${{ matrix.tap }}'
        if: always() && steps.readall.outcome == 'success' && !matrix.cask

      - name: Run brew fetch --cask ${{ matrix.cask.token }}
        id: fetch
        run: |
          brew fetch --cask --retry --force '${{ matrix.cask.path }}'
        timeout-minutes: 30
        if: always() && steps.readall.outcome == 'success' && matrix.cask

      - name: Run brew audit --cask${{ (matrix.cask && ' ') || ' --tap ' }}${{ matrix.cask.token || matrix.tap }}
        id: audit
        run: |
          brew audit --cask ${{ join(matrix.audit_args, ' ') }}${{ (matrix.cask && ' ') || ' --tap ' }}'${{ matrix.cask.path || matrix.tap }}'
        timeout-minutes: 30
        if: >
          always() && steps.readall.outcome == 'success' &&
          (!matrix.cask || steps.fetch.outcome == 'success') &&
          !matrix.skip_audit

      - name: Gather cask information
        id: info
        run: |
          brew tap homebrew/cask-versions
          brew ruby <<'EOF'
            require 'cask/cask_loader'
            require 'cask/installer'

            cask = Cask::CaskLoader.load('${{ matrix.cask.path }}')

            was_installed = cask.installed?
            manual_installer = cask.artifacts.any? { |artifact|
              artifact.is_a?(Cask::Artifact::Installer::ManualInstaller)
            }

            macos_requirement_satisfied = if macos_requirement = cask.depends_on.macos
              macos_requirement.satisfied?
            else
              true
            end

            cask_conflicts = cask.conflicts_with&.dig(:cask).to_a.select { |c| Cask::CaskLoader.load(c).installed? }
            formula_conflicts = cask.conflicts_with&.dig(:formula).to_a.select { |f| Formula[f].any_version_installed? }

            installer = Cask::Installer.new(cask)
            cask_and_formula_dependencies = installer.missing_cask_and_formula_dependencies

            cask_dependencies = cask_and_formula_dependencies.select { |d| d.is_a?(Cask::Cask) }.map(&:full_name)
            formula_dependencies = cask_and_formula_dependencies.select { |d| d.is_a?(Formula) }.map(&:full_name)

            puts "::set-output name=was_installed::#{JSON.generate(was_installed)}"
            puts "::set-output name=manual_installer::#{JSON.generate(manual_installer)}"
            puts "::set-output name=macos_requirement_satisfied::#{JSON.generate(macos_requirement_satisfied)}"
            puts "::set-output name=cask_conflicts::#{JSON.generate(cask_conflicts)}"
            puts "::set-output name=cask_dependencies::#{JSON.generate(cask_dependencies)}"
            puts "::set-output name=formula_conflicts::#{JSON.generate(formula_conflicts)}"
            puts "::set-output name=formula_dependencies::#{JSON.generate(formula_dependencies)}"
          EOF
        if: always() && steps.fetch.outcome == 'success' && matrix.cask

      - name: Uninstall conflicting formulae
        run: |
          brew uninstall --formula ${{ join(fromJSON(steps.info.outputs.formula_conflicts), ' ') }}
        if: always() && steps.info.outcome == 'success' && join(fromJSON(steps.info.outputs.formula_conflicts)) != ''
        timeout-minutes: 30

      - name: Uninstall conflicting casks
        run: |
          brew uninstall --cask ${{ join(fromJSON(steps.info.outputs.cask_conflicts), ' ') }}
        if: always() && steps.info.outcome == 'success' && join(fromJSON(steps.info.outputs.cask_conflicts)) != ''
        timeout-minutes: 30

      - name: Run brew uninstall --cask --zap ${{ matrix.cask.token }}
        run: |
          brew uninstall --cask --zap '${{ matrix.cask.path }}'
        if: always() && steps.info.outcome == 'success' && fromJSON(steps.info.outputs.was_installed)
        timeout-minutes: 30

      - name: Take snapshot of installed and running apps and services
        id: snapshot
        run: |
          brew ruby -r "$(brew --repository homebrew/cask)/cmd/lib/check.rb" <<'EOF'
            puts "::set-output name=before::#{JSON.generate(Check.all)}"
          EOF
        if: always() && steps.info.outcome == 'success'

      - name: Run brew install --cask ${{ matrix.cask.token }}
        id: install
        run: brew install --cask '${{ matrix.cask.path }}'
        if: >
          always() && steps.info.outcome == 'success' &&
          fromJSON(steps.info.outputs.macos_requirement_satisfied) &&
          !matrix.skip_install
        timeout-minutes: 30
        env:
          HOMEBREW_DEBUG: 1

      - name: Run brew uninstall --cask ${{ matrix.cask.token }}
        run: brew uninstall --cask '${{ matrix.cask.path }}'
        if: always() && steps.install.outcome == 'success' && !fromJSON(steps.info.outputs.manual_installer)
        timeout-minutes: 30

      - name: Uninstall formula dependencies
        run: |
          brew uninstall --formula ${{ join(fromJSON(steps.info.outputs.formula_dependencies), ' ') }}
        if: always() && steps.install.outcome == 'success' && join(fromJSON(steps.info.outputs.formula_dependencies)) != ''
        timeout-minutes: 30

      - name: Uninstall cask dependencies
        run: |
          brew uninstall --cask ${{ join(fromJSON(steps.info.outputs.cask_dependencies), ' ') }}
        if: always() && steps.install.outcome == 'success' && join(fromJSON(steps.info.outputs.cask_dependencies)) != ''
        timeout-minutes: 30

      - name: Compare installed and running apps and services with snapshot
        run: |
          brew ruby -r "$(brew --repository homebrew/cask)/cmd/lib/check.rb" <<'EOF'
            require "cask/cask_loader"
            require "utils/github/actions"

            before = JSON.parse(<<~'EOS').transform_keys(&:to_sym)
              ${{ steps.snapshot.outputs.before }}
            EOS
            after = Check.all

            cask = Cask::CaskLoader.load('${{ matrix.cask.path }}')
            errors = Check.errors(before, after, cask: cask)

            errors.each do |error|
              onoe error
              puts GitHub::Actions::Annotation.new(:error, error, file: '${{ matrix.cask.path }}')
            end

            exit 1 if errors.any?
          EOF
        if: always() && steps.snapshot.outcome == 'success'

      # Workaround until the `cache` action uses the changes from
      # https://github.com/actions/toolkit/pull/580.
      - name: Unlink workspace
        run: |
          rm "${GITHUB_WORKSPACE}"
          mkdir "${GITHUB_WORKSPACE}"
  conclusion:
    name: conclusion
    needs: test
    runs-on: ubuntu-latest
    if: always()
    steps:
      - name: Result
        run: ${{ needs.test.result == 'success' }}
