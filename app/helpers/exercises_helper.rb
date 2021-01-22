module ExercisesHelper

  #How can I make this method return the li tags 
  def display_steps(exercise)
    steps = exercise.description.split("\n")
    steps.map do |step|
      content_tag :li, step
    end

    # content_tag(:ul) do
    #   (1..5).to_a.map do
    #     content_tag(:li, step_number, class: "step)
    #   end.reduce(&:+)
    # end
  end

end
