class Workspace < ApplicationRecord
    has_many :columns, dependent: :destroy
end
