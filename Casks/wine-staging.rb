cask 'wine-staging' do
  version '2.0-rc1'
  sha256 'fd297e8f9288a0eace85d3c31b923618d215de3f0463703140893942f171e989'

  url "https://repos.wine-staging.com/macosx/i686/winehq-staging-#{version}.pkg"
  name 'WineHQ-staging'
  homepage 'https://www.wine-staging.com/'

  depends_on cask: 'xquartz'

  pkg "winehq-staging-#{version}.pkg",
      choices: [
                 {
                   'choiceIdentifier' => 'choice3',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
               ]

  uninstall pkgutil: [
                       'org.winehq.wine-staging',
                       'org.winehq.wine-staging-deps',
                       'org.winehq.wine-staging-deps64',
                       'org.winehq.wine-staging32',
                       'org.winehq.wine-staging64',
                     ],
            delete:  '/Applications/Wine Staging.app'

  caveats do
    <<-EOS.undent
      #{token} installs support for running 64 bit applications in Wine, which is considered experimental.
      If you do not want 64 bit support, you should download and install the #{token} package manually.
    EOS
  end
end
