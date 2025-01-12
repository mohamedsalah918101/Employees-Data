class UserResponse {
  final List<User> users;

  UserResponse({required this.users});

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return UserResponse(
      users: (json['users'] as List).map((user) => User.fromJson(user)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'users': users.map((user) => user.toJson()).toList(),
    };
  }
}

class User {
  final int id;
  final String firstName;
  final String lastName;
  final String maidenName;
  final int age;
  final String gender;
  final String email;
  final String phone;
  final String username;
  final String password;
  final String birthDate;
  final String image;
  final String bloodGroup;
  final double height;
  final double weight;
  final String eyeColor;
  final Hair hair;
  final String ip;
  final Address address;
  final String macAddress;
  final String university;
  final Bank bank;
  final Company company;
  final String ein;
  final String ssn;
  final String userAgent;
  final Crypto crypto;
  final String role;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.maidenName,
    required this.age,
    required this.gender,
    required this.email,
    required this.phone,
    required this.username,
    required this.password,
    required this.birthDate,
    required this.image,
    required this.bloodGroup,
    required this.height,
    required this.weight,
    required this.eyeColor,
    required this.hair,
    required this.ip,
    required this.address,
    required this.macAddress,
    required this.university,
    required this.bank,
    required this.company,
    required this.ein,
    required this.ssn,
    required this.userAgent,
    required this.crypto,
    required this.role,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      maidenName: json['maidenName'],
      age: json['age'],
      gender: json['gender'],
      email: json['email'],
      phone: json['phone'],
      username: json['username'],
      password: json['password'],
      birthDate: json['birthDate'],
      image: json['image'],
      bloodGroup: json['bloodGroup'],
      height: json['height'].toDouble(),
      weight: json['weight'].toDouble(),
      eyeColor: json['eyeColor'],
      hair: Hair.fromJson(json['hair']),
      ip: json['ip'],
      address: Address.fromJson(json['address']),
      macAddress: json['macAddress'],
      university: json['university'],
      bank: Bank.fromJson(json['bank']),
      company: Company.fromJson(json['company']),
      ein: json['ein'],
      ssn: json['ssn'],
      userAgent: json['userAgent'],
      crypto: Crypto.fromJson(json['crypto']),
      role: json['role'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'maidenName': maidenName,
      'age': age,
      'gender': gender,
      'email': email,
      'phone': phone,
      'username': username,
      'password': password,
      'birthDate': birthDate,
      'image': image,
      'bloodGroup': bloodGroup,
      'height': height,
      'weight': weight,
      'eyeColor': eyeColor,
      'hair': hair.toJson(),
      'ip': ip,
      'address': address.toJson(),
      'macAddress': macAddress,
      'university': university,
      'bank': bank.toJson(),
      'company': company.toJson(),
      'ein': ein,
      'ssn': ssn,
      'userAgent': userAgent,
      'crypto': crypto.toJson(),
      'role': role,
    };
  }
}

class Hair {
  final String color;
  final String type;

  Hair({required this.color, required this.type});

  factory Hair.fromJson(Map<String, dynamic> json) {
    return Hair(
      color: json['color'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'color': color,
      'type': type,
    };
  }
}

class Coordinates {
  final double lat;
  final double lng;

  Coordinates({required this.lat, required this.lng});

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return Coordinates(
      lat: json['lat'].toDouble(),
      lng: json['lng'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      'lng': lng,
    };
  }
}

class Address {
  final String address;
  final String city;
  final String state;
  final String stateCode;
  final String postalCode;
  final Coordinates coordinates;
  final String country;

  Address({
    required this.address,
    required this.city,
    required this.state,
    required this.stateCode,
    required this.postalCode,
    required this.coordinates,
    required this.country,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      address: json['address'],
      city: json['city'],
      state: json['state'],
      stateCode: json['stateCode'],
      postalCode: json['postalCode'],
      coordinates: Coordinates.fromJson(json['coordinates']),
      country: json['country'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'city': city,
      'state': state,
      'stateCode': stateCode,
      'postalCode': postalCode,
      'coordinates': coordinates.toJson(),
      'country': country,
    };
  }
}

class Bank {
  final String cardExpire;
  final String cardNumber;
  final String cardType;
  final String currency;
  final String iban;

  Bank({
    required this.cardExpire,
    required this.cardNumber,
    required this.cardType,
    required this.currency,
    required this.iban,
  });

  factory Bank.fromJson(Map<String, dynamic> json) {
    return Bank(
      cardExpire: json['cardExpire'],
      cardNumber: json['cardNumber'],
      cardType: json['cardType'],
      currency: json['currency'],
      iban: json['iban'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'cardExpire': cardExpire,
      'cardNumber': cardNumber,
      'cardType': cardType,
      'currency': currency,
      'iban': iban,
    };
  }
}

class Company {
  final String department;
  final String name;
  final String title;
  final Address address;

  Company({
    required this.department,
    required this.name,
    required this.title,
    required this.address,
  });

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      department: json['department'],
      name: json['name'],
      title: json['title'],
      address: Address.fromJson(json['address']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'department': department,
      'name': name,
      'title': title,
      'address': address.toJson(),
    };
  }
}

class Crypto {
  final String coin;
  final String wallet;
  final String network;

  Crypto({
    required this.coin,
    required this.wallet,
    required this.network,
  });

  factory Crypto.fromJson(Map<String, dynamic> json) {
    return Crypto(
      coin: json['coin'],
      wallet: json['wallet'],
      network: json['network'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'coin': coin,
      'wallet': wallet,
      'network': network,
    };
  }
}