cask 'unity' do
  version '5.3.1f1'
  sha256 '3a94207f8499c8b2f2822d46adf969c3d4991b159bdb03e092df98a57209fa47'

  url 'http://netstorage.unity3d.com/unity/cc9cbbcc37b4/MacEditorInstaller/Unity.pkg'
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'
  license :commercial

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
