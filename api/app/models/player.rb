class Player < ApplicationRecord
    has_and_belongs_to_many :teams

    def self.install(players)
        players = [
            'Jackie Young',           'Asia Durr',
          'Teaira McCowan', 'Katie Lou Samuelson',
        'Arike Ogunbowale',    'Napheesa Collier',
            'Kalani Brown',        'Alanna Smith',
         'Kristine Anigwe',        'Kiara Leslie',
          'Brianna Turner',   'Sophie Cunningham',
           'Chloe Jackson',     'Jessica Shepard',
         'Megan Gustafson',    'Natisha Hiedeman',
          'Marina Mabrey ',      'Cierra Dillard',
        'Bridget Carleton',       'Kennedy Burke',
           'Maite Cazorla',       'Anriel Howard',
               'Paris Kea',          'Megan Huff',
         'Caliya Robinson',      'Morgan Bertsch',
            'Kenisha Bell',        'Arica Carter',
          'Regan Magarity',       'Sam Fuehring ',
             'Macy Miller'
        ]
        players.each do |player|
            Player.create(name: player)
        end
    end
end
