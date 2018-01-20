cask 'vfuse' do
  version '2.0.0'
  sha256 '5818e292500427a968b17007315e45de9bce3319248298e5f361fd3940704994'

  url "https://github.com/chilcote/vfuse/releases/download/#{version}/vfuse-#{version}.pkg"
  appcast 'https://github.com/chilcote/vfuse/releases.atom',
          checkpoint: '796026ea80a5adc3846abab852d5342f87c8203524ef2923fb7617f2fa47b61d'
  name 'vfuse'
  homepage 'https://github.com/chilcote/vfuse'

  pkg "vfuse-#{version}.pkg"

  uninstall pkgutil: 'com.github.vfuse'

  caveats do
    files_in_usr_local
  end
end
