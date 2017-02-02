cask 'vlc-remote' do
  version '3.63'
  sha256 '55513b29dbc03f96af6792a91f00e4b6f262d0fd8847173c5791b203d6bf01c1'

  url "https://hobbyistsoftware.com/Downloads/VLCRemote/Versions/VLCSetup_#{version}.dmg"
  appcast 'https://hobbyistsoftware.com/Downloads/VLCRemote/vlcSetupHelperVersions.xml',
          checkpoint: '2cefab98336766f73eb21e269a1c8322eb9935405cc2b94711a6c0d9d2e89c3d'
  name 'VLC Remote'
  homepage 'https://hobbyistsoftware.com/vlc'

  installer manual: 'VLC Setup.app'
end
