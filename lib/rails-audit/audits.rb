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
    ]
  end
end
