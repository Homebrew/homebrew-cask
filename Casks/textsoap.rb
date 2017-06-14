cask 'textsoap' do
  version '8.4.1'
  sha256 '07f7d3cbec9f6a4d278002bccf79a2e023467bc1aaf901ad9d3e1e083dafa761'

  # unmarked.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://unmarked.s3.amazonaws.com/textsoap#{version.major}.zip"
  appcast "https://unmarked.s3.amazonaws.com/appcast/textsoap#{version.major}.xml",
          checkpoint: '81d08a8ba867ce47c4439dc95658c59779640ea120c85bfa2d5370356c4be0b9'
  name 'TextSoap'
  homepage 'https://www.unmarked.com/textsoap/'

  app "textsoap#{version.major}.app"

  zap delete: [
                '~/Library/Application Support/TextSoap',
                "~/Library/Application Support/com.unmarked.textsoap#{version.major}",
                "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.unmarked.textsoap#{version.major}.help",
                "~/Library/Caches/com.unmarked.textsoap#{version.major}",
                "~/Library/Cookies/com.unmarked.textsoap#{version.major}.binarycookies",
                "~/Library/Preferences/com.unmarked.textsoap#{version.major}.plist",
                "~/Library/Saved Application State/com.unmarked.textsoap#{version.major}.savedState",
              ]
end
