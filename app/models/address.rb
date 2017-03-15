class Address < ApplicationRecord
  belongs_to :agreement
  validates :street, presence: true

  require 'batch_factory'

  def display
    #hash_worksheet = BatchFactory.from_file '/Users/yuriyyarych/Desktop/Cobra217.xlsx', sheet_number: 1, keys: [:city, :street, :number]
    #mapStreet = hash_worksheet.map {|f|
    #{street: f[:street], city: f[:city]}
    #}
    #json = hash_worksheet.rows.to_json
    #JSON.parse(json).each do |t|
    #  dogovor = Agreement.find_by(number: t['number']).id
    #  Address.create(street: t['street'], city: t['city'], agreement_id: dogovor)
    #end
    #map = hash_worksheet.map {|row| row[:number]}
    #map.each do |t|
    #  if Agreement.find_by(number: t).nil?
    #    Agreement.create(number: t, company_id: 1)
    #  end
    #end
    #mapStreet = hash_worksheet.map {|row| row[:street]}
    #mapCity = hash_worksheet.map {|row| row[:city]}
    #Agreement.all.each do |a|
    #  mapStreet.each do |street|
    #    mapCity.each do |city|
    #      Address.create(street: street, city: city, agreement_id: a.id)
    #    end
    #  end
    #end
  end
end
