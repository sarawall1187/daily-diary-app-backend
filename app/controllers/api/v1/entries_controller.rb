class Api::V1::EntriesController < ApplicationController

    def index
        if logged_in?
        @entries = current_user.entries

        render json: EntrySerializer.new(@entries)
       
        else 
            render json: {
                error: "You must be logged in to see your diary entries."
            }
        end
    end

    def create
       
        @entry = Entry.new(entry_params)
        # binding.pry
        if @entry.save
            render json: EntrySerializer.new(@entry), status: :created
        else
            render json: {

               error: @entry.errors.full_messages.to_sentence, status: :unproccessable_entity
            }
        end

    end




    private 

    def entry_params
        params.require(:entry).permit(:todays_entry, :tomorrows_goal, :food_log, :user_id)
    end
end
