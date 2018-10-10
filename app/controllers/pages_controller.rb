class PagesController < ApplicationController
  def home
    @the_day = Time.local(2018, 12, 3, 14, 40, 00, 0)
    the_day_int = @the_day.to_i

    now = Time.now
    now_int = now.to_i + 32400

    left_unix_secs = the_day_int - now_int
    rest = left_unix_secs % (60 * 60 * 24)
    left_unix_secs_round_up = left_unix_secs - rest + (60 * 60 * 24)

    left_days = left_unix_secs / (60 * 60 * 24)
    left_hours = left_unix_secs / (60 * 60) % 24
    left_minutes = left_unix_secs / 60 % 60
    left_days_round_up = left_unix_secs_round_up / (60 * 60 * 24)

    ld = left_days
    lh = left_hours
    lm = left_minutes
    ldru = left_days_round_up

    @left_time_to_the_day = "フライトまであと#{ld}日#{lh}時間#{lm}分です"
    @left_days_to_the_day = "日数でいうとあと#{ldru}日です"
  end
end
