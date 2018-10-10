cask 'v2rayx' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '1.2.2'
  sha256 '9c9d19212876bd6a030b0dab7af9f4a1efff9306f49a69f9bc4ff77d2f1bcab2'

  url "https://github.com/Cenmrev/V2RayX/releases/download/v#{version}/V2RayX.app.zip"
  appcast 'https://github.com/Cenmrev/V2RayX/releases.atom'
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
