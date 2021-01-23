module WorkoutsHelper
  def delete_exercise(exercise)
    if params[:action] == 'edit' && exercise.object.id
      button_to "Delete", delete_path(exercise.object.id), method: :delete 
    end
  end
end
