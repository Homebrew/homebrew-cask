cask 'textsoap' do
  version '8.4.4'
  sha256 '73c4663eb304cd53c476f64212b5e6a1cf081270b4e8d3d481092d961d78b94b'

  # unmarked.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://unmarked.s3.amazonaws.com/textsoap#{version.major}.zip"
  appcast "https://unmarked.s3.amazonaws.com/appcast/textsoap#{version.major}.xml",
          checkpoint: '910590772b84838bb1aab9c3bc700a629dec5c0f28d88aecd045415e62bebaef'
  name 'TextSoap'
  homepage 'https://www.unmarked.com/textsoap/'

  app "textsoap#{version.major}.app"

  zap delete: [
                "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.unmarked.textsoap#{version.major}.help",
                "~/Library/Caches/com.unmarked.textsoap#{version.major}",
                "~/Library/Cookies/com.unmarked.textsoap#{version.major}.binarycookies",
                "~/Library/Saved Application State/com.unmarked.textsoap#{version.major}.savedState",
              ],
      trash:  [
                '~/Library/Application Support/TextSoap',
                "~/Library/Application Support/com.unmarked.textsoap#{version.major}",
                "~/Library/Preferences/com.unmarked.textsoap#{version.major}.plist",
              ]
end
