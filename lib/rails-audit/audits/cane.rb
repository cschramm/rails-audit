module RailsAudit
  module Audits
    class Cane < RailsAudit::Audit
      COMMAND = 'cane'.freeze
      RAILS = false
    end
  end
end
