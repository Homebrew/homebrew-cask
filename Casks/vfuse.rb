cask 'vfuse' do
  version '1.0.6'
  sha256 'dfc1714826891af823e541d646e0a7f888a40c22630bdd0e5d7466bef4dc4028'

  url "https://github.com/chilcote/vfuse/releases/download/#{version}/vfuse-#{version}.pkg"
  appcast 'https://github.com/chilcote/vfuse/releases.atom',
          checkpoint: '08a362d2a9399f7d276f65bc52f0c700066f6819dae821326b4dab0006ff6a0b'
  name 'vfuse'
  homepage 'https://github.com/chilcote/vfuse'

  pkg "vfuse-#{version}.pkg"
  binary '/usr/local/vfuse/vfuse'

  uninstall delete:    '/usr/local/vfuse',
            launchctl: 'com.chilcote.vfused',
            pkgutil:   'com.github.vfuse'

  zap trash: '~/Library/Preferences/com.chilcote.vfused.plist'

  caveats do
    files_in_usr_local
  end
end
