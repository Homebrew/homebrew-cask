cask 'textsoap' do
  version '8.4.6'
  sha256 'dfc1c066e14e5b6f341270a2856c7dce132c4da42ef333e47f17fbdae2a91dc7'

  # unmarked.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://unmarked.s3.amazonaws.com/textsoap#{version.major}.zip"
  appcast "https://unmarked.s3.amazonaws.com/appcast/textsoap#{version.major}.xml",
          checkpoint: '06802a7ac882a40941499e9702901f518a9ff36914eb5f3e2c60aaffdd077653'
  name 'TextSoap'
  homepage 'https://www.unmarked.com/textsoap/'

  app "textsoap#{version.major}.app"

  zap trash: [
               '~/Library/Application Support/TextSoap',
               "~/Library/Application Support/com.unmarked.textsoap#{version.major}",
               "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.unmarked.textsoap#{version.major}.help*",
               "~/Library/Caches/com.unmarked.textsoap#{version.major}",
               "~/Library/Cookies/com.unmarked.textsoap#{version.major}.binarycookies",
               "~/Library/Preferences/com.unmarked.textsoap#{version.major}.plist",
               "~/Library/Saved Application State/com.unmarked.textsoap#{version.major}.savedState",
             ]
end
