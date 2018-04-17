cask 'unity-monodevelop' do
  version '2017.3.1f1,fc1d3344e6ea'
  sha256 'a419840ba0b256e235b0e5548c5c659f60307297b163d351403d4a9a36e7be01'

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacMonoDevelopInstaller/UnityMonoDevelop.pkg"
  name 'Unity MonoDevelop'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg 'UnityMonoDevelop.pkg'

  uninstall pkgutil: 'com.unity3d.MonoDevelop'
end
