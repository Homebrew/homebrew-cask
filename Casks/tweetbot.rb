cask 'tweetbot' do
  version '3.3.3,4'
  sha256 'e2a2a32f1a84387bd1a187e5d64a4bd6436b914850908cf952c36101956a430c'

  # tapbots.net/ was verified as official when first introduced to the cask
  url "https://tapbots.net/tweetbot#{version.after_comma}/Tweetbot.#{version.before_comma.no_dots}00.zip"
  appcast "https://tapbots.net/tweetbot#{version.after_comma}/update.plist"
  name 'Tweetbot'
  homepage 'https://tapbots.com/tweetbot/mac/'

  depends_on macos: '>= :high_sierra'

  app 'Tweetbot.app'
end
