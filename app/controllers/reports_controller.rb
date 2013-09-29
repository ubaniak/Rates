class ReportsController < ApplicationController
  def changelog
      @changelogs = ChangeLog.all
  end
end
