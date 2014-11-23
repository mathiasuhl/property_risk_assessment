# -*- encoding : utf-8 -*-
class Service < ActiveRecord::Base
  belongs_to :facility

  enum level: ['kein Nachweis vorhanden', 'Keine Mängel / nur Hinweise', 'Mängel', 'Wesentliche Mängel']
  enum level_service: ['kein Nachweis vorhanden', 'Keine Mängel / nur Hinweise', 'Mängel']
  enum status: ['keine Mängelbeseitigung / kein Auftrag', 'Freimeldung / Rechnung', 'Auftrag zur Mangelbeseitigung / Prüfung']


  def score
      case level
        when 'kein Nachweis vorhanden'
          case status
            when 'keine Mängelbeseitigung / kein Auftrag'
              return 6
            when 'Auftrag zur Mangelbeseitigung / Prüfung'
              return 3
          end
        when 'Wesentliche Mängel'
          case status
            when 'keine Mängelbeseitigung / kein Auftrag'
              return 2
            when 'Auftrag zur Mangelbeseitigung / Prüfung'
              return 1
            when 'Freimeldung / Rechnung'
              return 0
          end
        when 'Mängel'
          case status
            when 'keine Mängelbeseitigung / kein Auftrag'
              return 2
            when 'Auftrag zur Mangelbeseitigung / Prüfung'
              return 1
            when 'Freimeldung / Rechnung'
              return 0
          end
        when 'Keine Mängel'
          return 0
      end
  end

end
