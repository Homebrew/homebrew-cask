cask 'vfuse' do
  version '1.0.3'
  sha256 'be4b099134afcba71143991c4f169bea03baf37fe96cfee0f5fcff9adf9ce6c2'

  url "https://github.com/chilcote/vfuse/releases/download/#{version}/vfuse-#{version}.pkg"
  appcast 'https://github.com/chilcote/vfuse/releases.atom',
          checkpoint: 'f5d38ca75355943d5ac09be7d6e6d6b8b41c006a02c63e3ada15d1b76dfced62'
  name 'vfuse'
  homepage 'https://github.com/chilcote/vfuse'

  pkg "vfuse-#{version}.pkg"
  binary '/usr/local/vfuse/vfuse'

  uninstall pkgutil: 'com.chilcote.vfuse'

  caveats do
    files_in_usr_local
  end
end
