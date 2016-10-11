class NotesController < ApplicationController
  def notes
    @notes = current_user.gather_notes
  end
end