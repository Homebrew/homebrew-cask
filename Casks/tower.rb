cask :v1 => 'tower' do
  version '2.3.1-298-a365a188'
  sha256 '8a899172508f6130dcc4c08c1f029acee33f8c6d5fd995e65ce4dc90acc5d8d6'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower#{version.to_i}-mac/#{version.sub(%r{^.*?-},'')}/Tower-#{version.to_i}-#{version.sub(%r{-[^-]*$},'')}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.to_i}-mac/stable",
          :sha256 => '40c701368d0ceea7fcbdaa0f09a86004869ae823423b2fcc87797590fab06669'
  name 'Tower'
  homepage 'http://www.git-tower.com/'
  license :commercial

  app 'Tower.app'
  binary 'Tower.app/Contents/MacOS/gittower'

  zap :delete => [
                  "~/Library/Application Support/com.fournova.Tower#{version.to_i}",
                  "~/Library/Caches/com.fournova.Tower#{version.to_i}",
                  "~/Library/Preferences/com.fournova.Tower#{version.to_i}.plist",
                 ]

  caveats do
    files_in_usr_local
  end
end
