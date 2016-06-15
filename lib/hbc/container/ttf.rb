class Hbc::Container::Ttf < Hbc::Container::Naked
  def self.me?(criteria)
    (criteria.extension('ttf') &&
     (criteria.file.include?('application/x-font-ttf') ||
      criteria.magic_number(0, 4, 'true'))) ||
      (criteria.extension('ttc') &&
       criteria.magic_number(0, 4, 'ttcf'))
  end
end
