class InstallPlayers < ActiveRecord::Migration[5.2]
  def change
      [
          'Jackie Young',           'Asia Durr',
        'Teaira McCowan', 'Katie Lou Samuelson',
      'Arike Ogunbowale',    'Napheesa Collier',
          'Kalani Brown',        'Alanna Smith',
       'Kristine Anigwe',        'Kiara Leslie',
        'Brianna Turner',   'Ezi Magbegor', 'Sophie Cunningham', 'Han Xu',
         'Chloe Jackson',     'Jessica Shepard',
       'Megan Gustafson',    'Natisha Hiedeman',
        'Marina Mabrey ',      'Cierra Dillard',
      'Bridget Carleton',       'Kennedy Burke',
         'Maite Cazorla',       'Anriel Howard',
             'Paris Kea',          'Megan Huff', 'Maria Conde',
       'Caliya Robinson',      'Morgan Bertsch',
          'Kenisha Bell',        'Angela Salvadores', 'Arica Carter',
        'Regan Magarity',       'Sam Fuehring ',
          'Li Yueru',           'Macy Miller'
      ].each_with_index do |name, index|
          Player.create(name: name, rookie_year: 2019, pick_number: index + 1)
      end
  end
end
