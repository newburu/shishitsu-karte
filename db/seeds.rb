# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command.
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

strengths_data = [
  { name: '学習欲', domain: '戦略的思考力' },
  { name: '原点思考', domain: '戦略的思考力' },
  { name: '収集心', domain: '戦略的思考力' },
  { name: '戦略性', domain: '戦略的思考力' },
  { name: '着想', domain: '戦略的思考力' },
  { name: '内省', domain: '戦略的思考力' },
  { name: '分析思考', domain: '戦略的思考力' },
  { name: '未来志向', domain: '戦略的思考力' },
  { name: '運命思考', domain: '人間関係構築力' },
  { name: '共感性', domain: '人間関係構築力' },
  { name: '個別化', domain: '人間関係構築力' },
  { name: '親密性', domain: '人間関係構築力' },
  { name: '成長促進', domain: '人間関係構築力' },
  { name: '調和性', domain: '人間関係構築力' },
  { name: '適応性', domain: '人間関係構築力' },
  { name: '包含', domain: '人間関係構築力' },
  { name: 'ポジティブ', domain: '人間関係構築力' },
  { name: '活発性', domain: '影響力' },
  { name: '競争性', domain: '影響力' },
  { name: 'コミュニケーション', domain: '影響力' },
  { name: '最上志向', domain: '影響力' },
  { name: '自我', domain: '影響力' },
  { name: '自己確信', domain: '影響力' },
  { name: '社交性', domain: '影響力' },
  { name: '指令性', domain: '影響力' },
  { name: 'アレンジ', domain: '実行力' },
  { name: '回復志向', domain: '実行力' },
  { name: '規律性', domain: '実行力' },
  { name: '公平性', domain: '実行力' },
  { name: '慎重さ', domain: '実行力' },
  { name: '信念', domain: '実行力' },
  { name: '責任感', domain: '実行力' },
  { name: '達成欲', domain: '実行力' },
  { name: '目標志向', domain: '実行力' }
]

puts 'Creating strengths...'
strengths_data.each do |strength_attrs|
  Strength.find_or_create_by!(strength_attrs)
end
puts 'Strengths created!'
