module RailsAudit
  module Audits
    class RailsBestPractices < RailsAudit::Audit
      COMMAND = 'rails_best_practices'.freeze
      RAILS = true
    end
  end
end
