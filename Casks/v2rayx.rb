cask 'v2rayx' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '0.7.8'
  sha256 'b7be7a26626bf65c7f5ce2801b52a56f7cd3cbb63c1b9db83cc5bf50cb2dd09c'

  url "https://github.com/Cenmrev/V2RayX/releases/download/v#{version}/V2RayX.dmg"
  appcast 'https://github.com/Cenmrev/V2RayX/releases.atom',
          checkpoint: '75a333b75a20cb9ada9d23b923466899e432d9c43d137ea5df0238693ad92cf1'
  name 'V2RayX'
  homepage 'https://github.com/Cenmrev/V2RayX'

  app 'V2RayX.app'

  uninstall_preflight do
    set_ownership '/Library/Application Support/V2RayX'
  end

  uninstall delete:    '/Library/Application Support/V2RayX',
            launchctl: 'v2rayproject.v2rayx.v2ray-core',
            script:    {
                         executable: '/Library/Application Support/V2RayX/v2rayx_sysconf',
                         args:       ['off'],
                         sudo:       true,
                       },
            signal:    ['TERM', 'cenmrev.V2RayX']

  zap delete: [
                '~/Library/Application Support/V2RayX',
                '~/Library/Preferences/cenmrev.V2RayX.plist',
              ]
end
