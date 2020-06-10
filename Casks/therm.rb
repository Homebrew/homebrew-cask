cask 'therm' do
  version '0.4.1'
  sha256 '4b896ed75a24c7f3a3af163a265aa15d3593f487dde071e8a4bae24b52111efe'

  url "https://github.com/trufae/Therm/releases/download/#{version}/Therm-#{version}.zip"
  appcast 'https://github.com/trufae/Therm/releases.atom'
  name 'Therm'
  homepage 'https://github.com/trufae/Therm'

  app 'Therm.app'
end
