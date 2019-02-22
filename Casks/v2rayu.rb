cask 'v2rayu' do
  version '1.2.0'
  sha256 'be5ce181bb4f2102338b3622730635ce29659f3b77fac8b965e2d3e645594b32'

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast 'https://github.com/yanue/V2rayU/releases.atom'
  name 'V2rayU'
  homepage 'https://github.com/yanue/V2rayU'

  app 'V2rayU.app'
end
