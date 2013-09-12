module RailsAudit
  module Audits
    class Rubocop < RailsAudit::Audit
      def self.command(rails)
        rails && 'rubocop -R' || 'rubocop'
      end

      RAILS = false
    end
  end
end
