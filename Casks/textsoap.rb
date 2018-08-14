cask 'textsoap' do
  version '8.4.7'
  sha256 '0d353399f3072875abc09563b2472d4e7ea69ad62cb47430f3b1dcbbac800237'

  # unmarked.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://unmarked.s3.amazonaws.com/textsoap#{version.major}.zip"
  appcast "https://unmarked.s3.amazonaws.com/appcast/textsoap#{version.major}.xml"
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
