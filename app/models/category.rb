class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: 'Choose' },
    { id: 2, name: '映画' },
    { id: 3, name: '小説' },
    { id: 4, name: '自己啓発本' },
    { id: 5, name: '漫画' },
    { id: 6, name: 'ドラマ' },
    { id: 7, name: 'アニメ' },
    { id: 8, name: 'ミュージカル' },
    { id: 9, name: '舞台' },
    { id: 10, name: 'ライブ' },
    { id: 11, name: '美術館' },
    { id: 12, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :works
  
  end