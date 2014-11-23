class Defect < ActiveRecord::Base
  belongs_to :inspection
  belongs_to :service

  enum :level ['kein Nachweis vorhanden', 'Keine Mängel / nur Hinweise', 'Mängel', 'Wesentliche Mängel']

  enum :level_service ['kein Nachweis vorhanden', 'Keine Mängel / nur Hinweise', 'Mängel']
  enum :status ['keine Mängelbeseitigung / kein Auftrag', 'Freimeldung / Rechnung', 'Nachprüfung Erforderlich']
end
