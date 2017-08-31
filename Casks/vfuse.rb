cask 'vfuse' do
  version '1.0.5'
  sha256 '2bfad0d1c91db75afa2cc7149298037c1bcfedf74c775eab2139efbb1265539e'

  url "https://github.com/chilcote/vfuse/releases/download/#{version}/vfuse-#{version}.pkg"
  appcast 'https://github.com/chilcote/vfuse/releases.atom',
          checkpoint: 'a47858a7de4b5df3df3106149a694e8883397f46ffb51d55ae2eab39efff812c'
  name 'vfuse'
  homepage 'https://github.com/chilcote/vfuse'

  pkg "vfuse-#{version}.pkg"
  binary '/usr/local/vfuse/vfuse'

  uninstall launchctl: 'com.chilcote.vfused',
            pkgutil:   'com.github.vfuse'

  zap trash: '~/Library/Preferences/com.chilcote.vfused.plist'

  caveats do
    files_in_usr_local
  end
end
