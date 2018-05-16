module RailsAudit
  module Audits
    ALL = [
      Brakeman,
      BundlerAudit,
      Cane,
      ConsistencyFail,
      LicenseFinder,
      RailsBestPractices,
      Rubocop
    ].freeze
  end
end
