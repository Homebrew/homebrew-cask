class Hbc::Container::Ttf < Hbc::Container::Naked
  def self.me?(criteria)
    (criteria.extension('ttf') &&
      (criteria.file.include?('application/x-font-ttf') ||
       criteria.magic_number(4, 'true'.unpack('C*')))) ||
    (criteria.extension('ttc') &&
      criteria.magic_number(4, 'ttcf'.unpack('C*')))
  end
end
