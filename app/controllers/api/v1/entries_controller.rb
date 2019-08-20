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

    def update
        @entry = Entry.find(params[:id])
        if @entry.update(entry_params)
          render json: EntrySerializer.new(@entry)
        else
            render json: {

                error: @entry.errors.full_messages.to_sentence, status: :unproccessable_entity
             }
        end
      end

      def destroy
        @entry = Entry.find(params[:id])
        if @entry.destroy
          render json: { data: "Diary entry has been deleted."}, status: :ok
        else
            render json: {

                error: "Diary entry not found."
             }
        end
      end




    private 

    def entry_params
        params.require(:entry).permit(:todays_entry, :tomorrows_goal, :food_log, :user_id)
    end
end
