import times

let now: TimeInfo = getLocalTime(getTime())
# 提出日を2018/2/14 9:00 に設定
let deadline = TimeInfo(
    year: 2018, month: mFeb, monthday: 14,
    hour: 9, timezone: -32400
  )
let diff = deadline.toTime() - now.toTime()
let diff_interval: TimeInterval = initInterval(seconds=int(diff))

echo "(ﾟ∀ﾟ) 卒論提出まであと", diff_interval.days, "日と", diff_interval.hours, "時間だよ"
