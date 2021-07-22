class Bird < ApplicationRecord
    def destroy
        bird = Bird.find_by(id: params[:id])
        if bird
          bird.destroy
          head :no_content
        else
          render json: { error: "Bird not found" }, status: :not_found
        end
      end 
end
