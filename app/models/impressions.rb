class Impressions < ActiveRecord::Base
  belongs_to :impressionable, :polymorphic=>true 
end