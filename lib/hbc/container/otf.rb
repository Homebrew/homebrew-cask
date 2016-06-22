class Hbc::Container::Otf < Hbc::Container::Naked
  def self.me?(criteria)
    criteria.extension('otf') &&
      (criteria.file.include?('application/vnd.ms-opentype') ||
       criteria.file.include?('application/x-font-ttf'))
  end
end
