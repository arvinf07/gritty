module WorkoutsHelper
  def delete_exercise(exercise)
    if params[:action] == 'edit' && exercise.object.id
      link_to "Delete", delete_path(exercise.object.id), method: :delete, class: "btn btn-danger btn-sm"  
    end
  end
end
