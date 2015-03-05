cask :v1 => 'textexpander' do
  if MacOS.release == :snow_leopard
    version '3.4.2'
    sha256 '87859d7efcbfe479e7b78686d4d3f9be9983b2c7d68a6122acea10d4efbb1bfa'
  elsif MacOS.release >= :lion
    version '4.3.5'
    sha256 '5247f7c012c346e81cd5d048d8a54b5b903ca26e7987914dad95d186505ac219'
    appcast 'http://updates.smilesoftware.com/com.smileonmymac.textexpander.xml',
            :sha256 => '20c1ab602462b7fc0d5b4cbd555cacf127b69a07a737579598ebcbc0f5b21319'
  end

  url "http://cdn.smilesoftware.com/TextExpander_#{version}.zip"
  name 'TextExpander'
  homepage 'http://www.smilesoftware.com/TextExpander/'
  license :commercial

  app 'TextExpander.app'
end
