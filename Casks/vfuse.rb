cask 'vfuse' do
  version '1.0.3'
  sha256 'be4b099134afcba71143991c4f169bea03baf37fe96cfee0f5fcff9adf9ce6c2'

  url "https://github.com/chilcote/vfuse/releases/download/#{version}/vfuse-#{version}.pkg"
  appcast 'https://github.com/chilcote/vfuse/releases.atom',
          checkpoint: '50c159b942047b892c5f2f26aad2f01016fb0202f1ce5d996fb9a4d432d62bfb'
  name 'vfuse'
  homepage 'https://github.com/chilcote/vfuse'

  pkg "vfuse-#{version}.pkg"
  binary '/usr/local/vfuse/vfuse'

  uninstall launchctl: 'com.chilcote.vfused',
            pkgutil:   'com.chilcote.vfuse'

  zap trash: '~/Library/Preferences/com.chilcote.vfused.plist'

  caveats do
    files_in_usr_local
  end
end
