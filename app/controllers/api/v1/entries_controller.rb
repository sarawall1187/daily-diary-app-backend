class Api::V1::EntriesController < ApplicationController

    def index
        if logged_in?
        @entries = current_user.entries

        render json: {
            @entries
        }
        else 
            render json: {
                error: "You must be logged in to see your diary entries."
            }
        end
    end
end
