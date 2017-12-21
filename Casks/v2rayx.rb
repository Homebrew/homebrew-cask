cask 'v2rayx' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '0.7.9'
  sha256 'e795cd85d9114d36e2e85b8bfeb286f17e04dd80ea486837c00bd10a7c2845cf'

  url "https://github.com/Cenmrev/V2RayX/releases/download/v#{version}/V2RayX.app.zip"
  appcast 'https://github.com/Cenmrev/V2RayX/releases.atom',
          checkpoint: '6186100ef99bd78105ae978b4583424f11e30e9ad66d00a0e16d01beef5b60f3'
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
