class Suggestion < ActiveRecord::Base
  belongs_to :user

  scope :random_by_kind, -> (kind) {
    where(kind: kind)
      .offset(rand(Suggestion.where(kind: kind).count))
      .limit(1)
    }
end
