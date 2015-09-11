cask :v1 => 'tower' do
  version '2.2.3-285-e057eb4f'
  sha256 'c9d79a6a8bfc298f38a2d7dbe724d71468f86c1de09fabd1d9da754fd8a40f74'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower#{version.to_i}-mac/#{version.sub(%r{^.*?-},'')}/Tower-#{version.to_i}-#{version.sub(%r{-[^-]*$},'')}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.to_i}-mac/stable",
          :sha256 => 'ac2bfa663be13048eaa4f2d714da0849e9bd7a125bef1a1f6218738a981efbae'
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
