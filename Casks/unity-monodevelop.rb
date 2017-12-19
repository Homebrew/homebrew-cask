cask 'unity-monodevelop' do
  version '2017.2.1f1,94bf3f9e6b5e'
  sha256 '4828685b96a1c09fcf1b7044c1df02ff0d7e141eeca0e92278f9dc549e607be4'

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacMonoDevelopInstaller/UnityMonoDevelop.pkg"
  name 'Unity MonoDevelop'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg 'UnityMonoDevelop.pkg'

  uninstall pkgutil: 'com.unity3d.MonoDevelop'
end
