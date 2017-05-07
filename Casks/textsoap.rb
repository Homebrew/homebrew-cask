cask 'textsoap' do
  version '8.3.4'
  sha256 '6578d77c28affcc8791bddacc34eadc505b9679ecb8dcaf03589a062313d2e6a'

  # unmarked.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://unmarked.s3.amazonaws.com/textsoap#{version.major}.zip"
  appcast "https://unmarked.s3.amazonaws.com/appcast/textsoap#{version.major}.xml",
          checkpoint: '8fcfec9b49a1840bf0119925a6a5bb0d13850593901a340b07e5fe5f059f8b72'
  name 'TextSoap'
  homepage 'https://www.unmarked.com/textsoap/'

  app "textsoap#{version.major}.app"

  postflight do
    suppress_move_to_applications
  end

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
