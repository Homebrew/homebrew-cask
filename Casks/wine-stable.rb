cask 'wine-stable' do
  version '3.0.2'
  sha256 'cf0b6bd9b722d387b17a62474217576c9ae13dadfeb7107f7cd6b271977f286a'

  url "https://dl.winehq.org/wine-builds/macosx/pool/winehq-stable-#{version}.pkg"
  appcast 'https://dl.winehq.org/wine-builds/macosx/download.html'
  name 'WineHQ-stable'
  homepage 'https://wiki.winehq.org/MacOS'

  depends_on x11: true

  pkg "winehq-stable-#{version}.pkg",
      choices: [
                 {
                   'choiceIdentifier' => 'choice3',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
               ]

  uninstall pkgutil: [
                       'org.winehq.wine-stable',
                       'org.winehq.wine-stable-deps',
                       'org.winehq.wine-stable-deps64',
                       'org.winehq.wine-stable32',
                       'org.winehq.wine-stable64',
                     ],
            delete:  '/Applications/Wine stable.app'

  caveats <<~EOS
    #{token} installs support for running 64 bit applications in Wine, which is considered experimental.
    If you do not want 64 bit support, you should download and install the #{token} package manually.
  EOS
end
