# 困り事：買うか迷い中、診断結果：買う
buy_questions = {
  '1年後も使っていることを想像できますか': '買った後のことを考えることが大事',
  '悩んでいる理由は、値段が高いからだけですか': '悩む理由が値段なら買ったほうが良いサイン'
}

# 困り事：買うか迷い中、診断結果：買わない
not_buy_questions = {
  '迷っている商品は、希少品か限定品ですか': '商品の希少性に惹かれてるだけの可能性が高い',
  '予算オーバーしてますか': '予算オーバーしてるなら買わない方が良い'
}

# 困り事：小腹を満たすか迷い中、診断結果：食べる
eat_questions = {
  '太るとお相撲さんになるからですか': '横綱は稼げる',
  '太るとモテなくなるからですか': 'デブ専にモテる'
}

# 困り事：小腹を満たすか迷い中、診断結果：食べない
not_eat_questions = {
  '健康な生活を送りたいからですか': '太ることによる最大のデメリットは健康を害すること',
  '今ある服を着れなくなるからですか': '服を買い換えるのは余計な手間と出費になる'
}

buy_questions.each do |content, point|
  Question.seed(:content) do |q|
    q.content = content
    q.point = point
    q.trouble_id = 1
    q.result_id = 1
  end
end

not_buy_questions.each do |content, point|
  Question.seed(:content) do |q|
    q.content = content
    q.point = point
    q.trouble_id = 1
    q.result_id = 2
  end
end

eat_questions.each do |content, point|
  Question.seed(:content) do |q|
    q.content = content
    q.point = point
    q.trouble_id = 2
    q.result_id = 3
  end
end

not_eat_questions.each do |content, point|
  Question.seed(:content) do |q|
    q.content = content
    q.point = point
    q.trouble_id = 2
    q.result_id = 4
  end
end
