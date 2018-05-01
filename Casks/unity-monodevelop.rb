cask 'unity-monodevelop' do
  version '2017.4.1f1,9231f953d9d3'
  sha256 '18315b445900235d6037bd34d5bc5dd616f9660cfed2c50ac6f73edaf5f24852'

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacMonoDevelopInstaller/UnityMonoDevelop.pkg"
  name 'Unity MonoDevelop'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg 'UnityMonoDevelop.pkg'

  uninstall pkgutil: 'com.unity3d.MonoDevelop'
end
