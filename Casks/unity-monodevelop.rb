cask 'unity-monodevelop' do
  version '2017.3.0f3,a9f86dcd79df'
  sha256 'b4988e91c5d6fe31a1f2d306f02dab52d62f9fc9e8f9bd2c35dcff6143ec5a21'

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacMonoDevelopInstaller/UnityMonoDevelop.pkg"
  name 'Unity MonoDevelop'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg 'UnityMonoDevelop.pkg'

  uninstall pkgutil: 'com.unity3d.MonoDevelop'
end
