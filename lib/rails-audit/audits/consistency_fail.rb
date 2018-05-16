module RailsAudit
  module Audits
    class ConsistencyFail < RailsAudit::Audit
      COMMAND = 'consistency_fail'.freeze
      RAILS = true
    end
  end
end
