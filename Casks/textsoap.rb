cask 'textsoap' do
  version '8.4.5'
  sha256 '65730afbd7af9021589a69ba42d07cbb9a96834fc3aaa2acb5549cd9a167f4dd'

  # unmarked.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://unmarked.s3.amazonaws.com/textsoap#{version.major}.zip"
  appcast "https://unmarked.s3.amazonaws.com/appcast/textsoap#{version.major}.xml",
          checkpoint: 'edca4bf7f8652cfe4ca5fd05c184e53b063bf1808e2c58bae45794e96bbaa309'
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
