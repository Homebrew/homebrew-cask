cask :v1 => 'telegram' do
  version '1.71-598'
  sha256 'aa6728944266d9c1877588d49aa83a38f3bbeb92f7f9bb5b6c64f833b2e8fa09'

 # hockeyapp.net is the official download host per the appcast feed
  url "https://rink.hockeyapp.net/api/2/apps/c55f5e74ae5d0ad254df29f71a1b5f0e/app_versions/#{version.sub(%r{^.*-},'')}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c55f5e74ae5d0ad254df29f71a1b5f0e',
          :sha256 => '836f03125c41b9dc0a13f542ff6e789c13d0be356f2698dc5d2b96fc63179b14'
  name 'Telegram'
  homepage 'https://telegram.org/'
  license :gpl

  depends_on :macos => '>= :mountain_lion'

  app 'Telegram.app'
end
