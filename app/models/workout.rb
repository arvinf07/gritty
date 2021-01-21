class Workout < ApplicationRecord
  belongs_to :user
  has_many :exercises_workouts
  has_many :exercises, through: :exercises_workouts

  validates :name, presence: true, uniqueness: true

  accepts_nested_attributes_for :exercises_workouts, reject_if: proc { |attributes| attributes['sets'].blank? || attributes['reps'].blank? } 
 

  def creator
    self.user.name
  end

  def self.by_difficulty(difficulty)
    #selects the workouts where 
    #exercises of the given difficulty
    #is greater than others difficulty_exercises > hard_exercises
  end

end
