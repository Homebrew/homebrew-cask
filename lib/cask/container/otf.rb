class Cask::Container::Otf < Cask::Container::Naked
  def self.me?(criteria)
    criteria.extension 'otf' and
      (criteria.file.include? 'application/vnd.ms-opentype' or
       criteria.file.include? 'application/x-font-ttf')
  end
end
