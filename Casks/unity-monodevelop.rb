cask 'unity-monodevelop' do
  version '2017.2.0f3,46dda1414e51'
  sha256 '1d52791a505c9e6071df3d22de25c0e6002c5e57dc66d214c913900fd50c5189'

  url "http://download.unity3d.com/download_unity/#{version.after_comma}/MacMonoDevelopInstaller/UnityMonoDevelop.pkg"
  name 'Unity MonoDevelop'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg 'UnityMonoDevelop.pkg'

  uninstall pkgutil: 'com.unity3d.MonoDevelop'
end
