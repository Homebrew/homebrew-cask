cask 'v2rayx' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '1.1.1'
  sha256 '02bb2c5732654af8fbc75e7893900d6a2bcca032ce079da964ad2728d1198074'

  url "https://github.com/Cenmrev/V2RayX/releases/download/v#{version}/V2RayX.app.zip"
  appcast 'https://github.com/Cenmrev/V2RayX/releases.atom',
          checkpoint: '51c7723f69a910ef069988eb939b7bdbc6b033610d2e4144d27033109ddfe73c'
  name 'V2RayX'
  homepage 'https://github.com/Cenmrev/V2RayX'

  app 'V2RayX.app'

  uninstall_preflight do
    set_ownership '/Library/Application Support/V2RayX'
  end

  uninstall delete:    '/Library/Application Support/V2RayX',
            launchctl: 'v2rayproject.v2rayx.v2ray-core',
            script:    {
                         executable: "#{appdir}/V2RayX.app/Contents/Resources/v2rayx_sysconf",
                         args:       ['off'],
                         sudo:       true,
                       },
            signal:    ['TERM', 'cenmrev.V2RayX']

  zap trash: [
               '~/Library/Application Support/V2RayX',
               '~/Library/Preferences/cenmrev.V2RayX.plist',
             ]
end
