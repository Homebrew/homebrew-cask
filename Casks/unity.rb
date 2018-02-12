cask 'unity' do
  version '2017.3.1f1,fc1d3344e6ea'
  sha256 '9b02ee8eb751feefd2ff4cb06115d97f13366e7f58ee31931ff07e1e4c433b92'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
