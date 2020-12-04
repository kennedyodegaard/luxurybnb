class ReviewsController < ApplicationController
    def create
        @user = current_user
        @reservation = Reservation.new
        @review = Review.new(set_params_review)
        @review.user = @user
        @flat = Flat.find(params[:flat_id])
        @review.flat = @flat
        if @review.save
            redirect_to flat_path(@flat, anchor: "review-#{@review.id}")
        else
            render "flats/show"
        end
    end
    
    private 
    
    def set_params_review
        params.require(:review).permit(:description, :rating)
    end
end
