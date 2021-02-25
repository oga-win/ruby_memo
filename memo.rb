require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

if memo_type == 1
    puts "〜拡張子を除いたファイル名を入力してください〜"
    file_name = gets.chomp.to_s
    puts "〜メモしたい内容を記入してください〜"
    puts "〜完了したらCtrl + D を押します〜"

    CSV.open("#{file_name}.csv", "w") do |csv|
    memo_content = readlines(chomp:true)
    csv << memo_content

end
elsif memo_type == 2
    puts "~拡張子を除いたファイル名を入力してください~"
    file_name = gets.chomp.to_s
    puts "~メモしたい内容を記入してください~"
    puts "~完了したらCtrl + D を押します~"
    
    CSV.open("#{file_name}.csv", "a") do |csv|
    memo_content = readlines(chomp:true)
    csv << memo_content

    end
else
    puts "1(新規でメモを作成)か2(既存のメモ編集する)を入力してください"
end

