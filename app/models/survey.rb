class Survey < ActiveRecord::Base
  belongs_to :property

  enum :cracks ['TG','Aussenwände', 'Innenwände','Decken' ]
  enum :damp ['TG','Aussenwände', 'Innenwände','Decken' ]
end
