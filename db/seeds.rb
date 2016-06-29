User.create(first_name: 'Kat', last_name: 'Pe', email: 'kp@somefakedomain.tld', password: 'notEasyToType2374783')
Role.create(name: 'admin')
User.first.roles << Role.first
