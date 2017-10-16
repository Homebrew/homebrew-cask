cask 'unity' do
  version '2017.2.0f3,46dda1414e51'
  sha256 '4e3ced279969bf59efe63124e4dc79ffa69afb3313cd80632a4dc157450c8e4c'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end
