module RailsAudit
  module Audits
    class Cane < RailsAudit::Audit
      COMMAND = 'cane'
      RAILS = false
    end
  end
end
