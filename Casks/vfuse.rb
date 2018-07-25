cask 'vfuse' do
  version '2.0.6'
  sha256 '2aef3b69b8e3c108d41585897c1ed631e9717d0427b359d3dea171e358768bed'

  url "https://github.com/chilcote/vfuse/releases/download/#{version}/vfuse-#{version}.pkg"
  appcast 'https://github.com/chilcote/vfuse/releases.atom'
  name 'vfuse'
  homepage 'https://github.com/chilcote/vfuse'

  pkg "vfuse-#{version}.pkg"

  uninstall pkgutil: 'com.github.vfuse'

  caveats do
    files_in_usr_local
  end
end
