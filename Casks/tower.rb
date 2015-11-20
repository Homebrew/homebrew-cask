cask :v1 => 'tower' do
  version '2.3.2-299-6e9850db'
  sha256 '2778bb1c98417b694bf0b72908c3d88c3b055ac959b6a1366186c0b789a2f20a'

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
