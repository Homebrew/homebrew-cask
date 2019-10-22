cask 'unity-lumin-support-for-editor' do
  version '2019.2.9f1,ebce4d76e6e8'
  sha256 '48bcc18f2132f72ebae6d6de2feefa8dcc0a49514082bb7b53c3bd67f8e37d3b'

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity Lumin Build Support'
  homepage 'https://unity3d.com/unity/whats-new/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.LuminSupport'
end
