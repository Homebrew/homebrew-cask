cask 'vfuse' do
  version '2.0.4'
  sha256 'f2c444a72cac7f99cbc3a63cbe422e4e94cb5047d4a71b1e2af9460e184b7408'

  url "https://github.com/chilcote/vfuse/releases/download/#{version}/vfuse-#{version}.pkg"
  appcast 'https://github.com/chilcote/vfuse/releases.atom',
          checkpoint: 'fc1feecdc30efa24cd70e34e85e3f9213fd26e04acc026116a96502439198366'
  name 'vfuse'
  homepage 'https://github.com/chilcote/vfuse'

  pkg "vfuse-#{version}.pkg"

  uninstall pkgutil: 'com.github.vfuse'

  caveats do
    files_in_usr_local
  end
end
