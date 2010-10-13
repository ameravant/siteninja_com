class Website < ActiveRecord::Base
  default_scope :order => "domain"
end
