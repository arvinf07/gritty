module ExercisesHelper

  def display_steps(exercise)
    steps = exercise.description.split("\n")
    steps.map do |step|
      content_tag :li, step
    end
  end

end
