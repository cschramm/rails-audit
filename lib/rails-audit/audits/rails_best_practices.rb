module RailsAudit
  module Audits
    class RailsBestPractices < RailsAudit::Audit
      COMMAND = 'rails_best_practices'
      RAILS = true
    end
  end
end
