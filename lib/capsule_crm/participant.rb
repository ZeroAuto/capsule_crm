module CapsuleCRM
  class Participant
    include Virtus.model

    extend  ActiveModel::Naming
    include ActiveModel::Validations
    include ActiveModel::Conversion

    include CapsuleCRM::Inspector

    attribute :name,          String
    attribute :email_address,  String
    attribute :role,          String

    def self._for_history(history_id)
      CapsuleCRM::ResultsProxy.new([])
    end
  end
end
