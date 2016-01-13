cask 'tower' do
  version '2.3.3-302-6f2959a3'
  sha256 '5c23102b735172bc311cd811f7dec8a98a40c2c0cff2cefc9960f930c2515bc8'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower#{version.major}-mac/#{version.sub(%r{^.*?-}, '')}/Tower-#{version.to_i}-#{version.sub(%r{-[^-]*$}, '')}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.major}-mac/stable",
          :sha256 => '6e791750c2767ef3bccacbb9c1b273d4bd8003cf62cd6c1997e8964ddf10e777'
  name 'Tower'
  homepage 'https://www.git-tower.com/'
  license :commercial

  app 'Tower.app'
  binary 'Tower.app/Contents/MacOS/gittower'

  zap :delete => [
                   "~/Library/Application Support/com.fournova.Tower#{version.major}",
                   "~/Library/Caches/com.fournova.Tower#{version.major}",
                   "~/Library/Preferences/com.fournova.Tower#{version.major}.plist",
                 ]

  caveats do
    files_in_usr_local
  end
end
