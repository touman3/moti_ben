class Word < ApplicationRecord
  enum genre: { relationship: 0, learn: 1, life: 2 }
end
