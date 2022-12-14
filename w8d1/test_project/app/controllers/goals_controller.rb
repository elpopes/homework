class GoalsController < ApplicationController

    before_action :require_logged_in

    def create
        @goal = Goal.new(goal_params)
        @goal.user_id = params[:user_id]

        if @goal.save
        else
            flash[:errors] = @goal.errors.full_messages
        end

        redirect_to user_url(@goal.user)
    end

    def destroy
        @goal = current_user.goals.find_by(id: params[:id])
        if @goal && @goal.delete
            redirect_to users_url
        end
    end

    def goal_params
        params.require(:goal).permit(:name, :status, :details)
    end
end