cask :v1 => 'textexpander' do
  if MacOS.release == :snow_leopard
    version '3.4.2'
    sha256 '87859d7efcbfe479e7b78686d4d3f9be9983b2c7d68a6122acea10d4efbb1bfa'
  elsif MacOS.release >= :lion
    version '4.3.6'
    sha256 'ec90d6bd2e76bd14c0ca706d255c9673288f406b772e5ae6022e2dbe27848ee9'
    appcast 'http://updates.smilesoftware.com/com.smileonmymac.textexpander.xml',
            :sha256 => 'bad991e25d6cb73352b462a1b503bd64c616bd751057f677944af5f96c1353cf'
  end

  url "http://cdn.smilesoftware.com/TextExpander_#{version}.zip"
  name 'TextExpander'
  homepage 'http://www.smilesoftware.com/TextExpander/'
  license :commercial

  app 'TextExpander.app'
end
