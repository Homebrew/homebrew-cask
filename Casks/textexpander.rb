cask :v1 => 'textexpander' do
  if MacOS.release == :snow_leopard
    version '3.4.2'
    sha256 '87859d7efcbfe479e7b78686d4d3f9be9983b2c7d68a6122acea10d4efbb1bfa'
  elsif MacOS.release >= :lion && MacOS.release <= :mavericks
    version '4.3.6'
    sha256 'ec90d6bd2e76bd14c0ca706d255c9673288f406b772e5ae6022e2dbe27848ee9'
  elsif MacOS.release >= :yosemite
    version '5.0'
    sha256 'd0c4149fec181cd61579ac0dba0ad8e34153b09da4ee818068bd9f35d668b858'
    appcast 'http://updates.smilesoftware.com/com.smileonmymac.textexpander.xml',
            :sha256 => '08fa50296cf69255e5e27cf80b0c3a37a49873d57f37432b533ae1a207aabd4c'
  end

  url "http://cdn.smilesoftware.com/TextExpander_#{version}.zip"
  name 'TextExpander'
  homepage 'http://www.smilesoftware.com/TextExpander/'
  license :commercial

  app 'TextExpander.app'
end
