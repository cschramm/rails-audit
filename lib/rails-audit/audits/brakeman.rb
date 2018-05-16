module RailsAudit
  module Audits
    class Brakeman < RailsAudit::Audit
      COMMAND = 'brakeman -z'.freeze
      RAILS = true
    end
  end
end
