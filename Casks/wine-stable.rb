cask 'wine-stable' do
  version '2.0'
  sha256 '3efeaf817e9ebf6d06add6838a2e2f7b4c21cbf28b7cef12bc1f77aa59fa95b0'

  url "https://dl.winehq.org/wine-builds/macosx/pool/winehq-stable-#{version}.pkg"
  name 'WineHQ-stable'
  homepage 'https://wiki.winehq.org/MacOS'

  depends_on cask: 'xquartz'

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

  caveats <<-EOS.undent
    #{token} installs support for running 64 bit applications in Wine, which is considered experimental.
    If you do not want 64 bit support, you should download and install the #{token} package manually.
  EOS
end
