cask 'vega' do
  version :latest
  sha256 :no_check

  if Hardware::CPU.is_32_bit?
    url 'https://dist.subgraph.com/downloads/Vega.dmg'
  else
    url 'https://dist.subgraph.com/downloads/Vega64.dmg'
  end

  name 'Vega'
  homepage 'https://subgraph.com/vega/index.en.html'
  license :unknown

  app 'Vega.app'
end
