class ReviewsController < ApplicationController
    def create
        @review = Review.new(set_params_review)
        @flat = Flat.find(params[:flat_id])
        @review.flat = @flat
        if @review.save
            redirect_to flat_path(@flat)
        else
            render "flats/show"
        end
    end
    
    private 
    
    def set_params_review
        params.require(:review).permit(:description, :rating)
    end
end
